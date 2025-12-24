

import 'package:hive_flutter/hive_flutter.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel
{
  @HiveField(0)
  final String title ;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final int color ;

  NoteModel({
  required this.title,
  required this.subtitle,
  required this.data,
  required this.color});
  
}