class ChatBubbleModel {
  final String msg;
  final bool me;
  final DateTime timestamp = new DateTime.now();
  ChatBubbleModel({
    this.msg,
    this.me = true,
  });
}
