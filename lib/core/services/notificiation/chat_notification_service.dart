import 'package:chat/core/models/chat_notification.dart';
import 'package:flutter/material.dart';

class ChatNotificationService with ChangeNotifier {
  final List<ChatNofification> _items = [];

  int get itemsCount {
    return _items.length;
  }

  List<ChatNofification> get items {
    return [..._items];
  }

  void add(ChatNofification nofification) {
    _items.add(nofification);
    notifyListeners();
  }

  void remove(int i) {
    _items.removeAt(i);
    notifyListeners();
  }
}
