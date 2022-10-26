import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/widgets/custom_container.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ScrollController scrollController = ScrollController();
  TextEditingController textEditingController = TextEditingController();
  late User user;
  late Chat chat;
  late String text;
  @override
  void initState() {
    user = Get.arguments[0];
    chat = Get.arguments[1];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Theme.of(context).colorScheme.primary,
        Theme.of(context).colorScheme.secondary,
      ])),
      child: Scaffold(
        appBar: _CustomAppBar(
          user: user,
        ),
        body: CustomContainer(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              _ChatMessage(
                chat: chat,
                scrollController: scrollController,
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: textEditingController,
                onChanged: (value) {
                  setState(() {
                    text = value;
                    print(text);
                  });
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor:
                        Theme.of(context).colorScheme.secondary.withAlpha(150),
                    hintText: "Type here...",
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.all(20.0),
                    suffixIcon: IconButton(
                        onPressed: () {
                          Message message = Message(
                              senderId: "1", recipientId: user.id, text: text);
                          List<Message> messages = List.from(chat.messages)
                            ..add(message);
                          // messages.sort((a, b) {b.cr});
                          setState(() {
                            chat = chat.copyWith(messages: messages);
                          });
                          scrollController.animateTo(
                              scrollController.position.minScrollExtent,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                          textEditingController.clear();
                        },
                        icon: Icon(Icons.send))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ChatMessage extends StatelessWidget {
  const _ChatMessage({
    Key? key,
    required this.chat,
    required this.scrollController,
  }) : super(key: key);

  final Chat chat;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        controller: scrollController,
        // reverse: true,
        itemCount: chat.messages.length,
        itemBuilder: (context, index) {
          Message message = chat.messages[index];
          return Align(
            alignment: (message.senderId == '1')
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.66),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (message.senderId == '1')
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                message.text,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Column(
          children: [
            Text(
              '${user.name} ${user.surname}',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Online",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
      elevation: 0,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(user.imageUrl),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(90.0);
}
