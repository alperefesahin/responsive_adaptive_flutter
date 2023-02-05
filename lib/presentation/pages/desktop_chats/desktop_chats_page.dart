import 'package:flutter/material.dart';

class DesktopChatsPage extends StatelessWidget {
  const DesktopChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop Chats'),
      ),
      body: const Center(
        child: Text('Desktop Chats Page'),
      ),
    );
  }
}
