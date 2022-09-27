class Chat{
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
    required this.isActive,
  });

}

List chatsData = [

  Chat(
    name: "Luiz Felipe",
    lastMessage: "Aquela cena foi estranha",
    image: "assets/imgs/matrix.png",
    time: "23m ago",
    isActive: false,
  ),
    Chat(
    name: "Matheus",
    lastMessage: "chato",
    image: "assets/imgs/matrix.png",
    time: "1h ago",
    isActive: false,
  ),
    Chat(
    name: "GyovanaTop",
    lastMessage: "Você assitiu o filme?",
    image: "assets/imgs/gyo.jpg",
    time: "1m ago",
    isActive: false,
  ),
    Chat(
    name: "Jose",
    lastMessage: "concordo",
    image: "assets/imgs/matrix.png",
    time: "1pm",
    isActive: false,
  ),
];