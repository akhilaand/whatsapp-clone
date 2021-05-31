class ChatModal {
  final String profilePic;
  final String name;
  final String lastMessage;
  final String time;
  final bool isRead;
  ChatModal(
      this.profilePic, this.name, this.lastMessage, this.time, this.isRead);
}

List<ChatModal> dummtChat = [
  ChatModal("assets/images/virat kohli.jpg", "Virat Kohli", "Rcb wins",
      "12.00 PM", false),
  ChatModal("assets/images/dhoni.jpg", "Dhoni", "you wanna play for india",
      "9.00 AM", true)
];
