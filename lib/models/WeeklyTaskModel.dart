import 'package:log_in_page/models/MyChip.dart';
import './WeeklyTaskModel.dart';
import 'User.dart';

class WeeklyTaskModel{
  final String title;
  final String deadLine;
  final List<MyChip> chips;
  final List<User> users;

  WeeklyTaskModel(this.title, this.deadLine, this.chips, this.users);
}