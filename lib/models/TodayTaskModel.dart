import './TodayTaskModel.dart';
import 'User.dart';

class TodayTaskModel {
  final String title;
  final String deadLine;
  final String description;
  final List<User> users;
  final bool isComplited;

  TodayTaskModel(this.title, this.deadLine, this.description, this.isComplited, this.users);
}
