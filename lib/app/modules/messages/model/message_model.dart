// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MessageModel {
  int id;
  String name;
  String message;
  String img;
  String date;
  MessageModel({
    required this.id,
    required this.name,
    required this.message,
    required this.img,
    required this.date,
  });
}
