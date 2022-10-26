// ignore_for_file: public_member_api_docs, sort_constructors_first
class Message {
  final String senderId;
  final String recipientId;
  final String text;
  // final String createdAt;
  Message({
    required this.senderId,
    required this.recipientId,
    required this.text,
    // required this.createdAt,
  });
  static List<Message> messages = [
    Message(
      senderId: "1",
      recipientId: "2",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "1",
      recipientId: "2",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "2",
      recipientId: "1",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "2",
      recipientId: "1",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "1",
      recipientId: "3",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "3",
      recipientId: "1",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "3",
      recipientId: "1",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "1",
      recipientId: "4",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "1",
      recipientId: "4",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "4",
      recipientId: "1",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "4",
      recipientId: "1",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "1",
      recipientId: "5",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "1",
      recipientId: "5",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "5",
      recipientId: "1",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
    Message(
      senderId: "5",
      recipientId: "1",
      text: "Hey, How are you",
      // createdAt:  DateTime(2022)
    ),
  ];
}
