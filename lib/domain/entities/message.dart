enum WhosMessgae { me, other }

class Message {
  final String message;
  final WhosMessgae whos;
  final String? urlImage;

  const Message({required this.message, required this.whos, this.urlImage});
}
