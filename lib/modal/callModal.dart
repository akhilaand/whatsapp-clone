class CallModal {
  final String userName;
  final String userPic;
  final String callTime;
  final bool isIncoming;
  final bool isVideo;

  CallModal(this.userName, this.userPic, this.callTime, this.isIncoming,
      this.isVideo);
}

List<CallModal> dummyCall = [
  CallModal("Virat Kohli", "assets/images/virat kohli.jpg", "5", true, false),
  CallModal("Dhoni", "assets/images/dhoni.jpg", "2", false, true),
];
