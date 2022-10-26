class User {
  final String id;
  final String name;
  final String surname;
  final String imageUrl;

  User(
      {required this.id,
      required this.name,
      required this.surname,
      required this.imageUrl});

  static List<User> users = [
    User(
        id: "1",
        name: "John",
        surname: "whitaker",
        imageUrl:
            "https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60"),
    User(
        id: "2",
        name: "Antony",
        surname: "Brown",
        imageUrl:
            "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"),
    User(
        id: "3",
        name: "Johnsan",
        surname: "Avatar",
        imageUrl:
            "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"),
    User(
        id: "4",
        name: "Alex",
        surname: "jones",
        imageUrl:
            "https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60"),
    User(
        id: "5",
        name: "Lisa",
        surname: "Browny",
        imageUrl:
            "https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=1000&q=60"),
    User(
        id: "6",
        name: "wisey",
        surname: "Denny",
        imageUrl:
            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"),
    User(
        id: "7",
        name: "Rocky",
        surname: "lemma",
        imageUrl:
            "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60"),
  ];
}
