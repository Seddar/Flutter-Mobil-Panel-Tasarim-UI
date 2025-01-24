import 'package:bosscubes2/screens/requests/request_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Requests extends StatelessWidget {
  const Requests({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatProvider(),
      child: ChatScreen(),
    );
  }
}

class ChatProvider with ChangeNotifier {
  List<Map<String, String>> _messages = [];

  List<Map<String, String>> get messages => _messages;

  void addMessage(String message) {
    _messages.add({
      'message': message,
      'time': DateTime.now().toIso8601String(),
    });
    notifyListeners();
  }
}
