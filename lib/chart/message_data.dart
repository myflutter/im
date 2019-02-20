// 消息类型
enum MessageType {
  SYSTEM,
  PUBLIC,
  CHAT,
  GROUP
}
// 聊天数据

class MessageData {
  // 头像
  String avatar;
  // 主标题
  String title;
  // 子标题
  String subTitle;
  // 消息时间
  DateTime time;
  // 消息类型
  MessageType type;
  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
}

List<MessageData> messageData=[
  new MessageData('images/yixiu.jpeg', '一休', '突然想到', new DateTime.now(), MessageType.SYSTEM),
  new MessageData('images/yixiu.jpeg', '一休', '突然想到', new DateTime.now(), MessageType.PUBLIC),
  new MessageData('images/yixiu.jpeg', '一休', '突然想到', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/yixiu.jpeg', '一休', '突然想到', new DateTime.now(), MessageType.GROUP),
  new MessageData('images/yixiu.jpeg', '一休', '突然想到', new DateTime.now(), MessageType.CHAT),
  new MessageData('images/yixiu.jpeg', '一休', '突然想到', new DateTime.now(), MessageType.CHAT),

];