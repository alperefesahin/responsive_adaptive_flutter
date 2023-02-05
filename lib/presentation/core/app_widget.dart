import 'package:flutter/material.dart';
import 'package:responsive_flutter/presentation/core/responsive_widget.dart';
import 'package:responsive_flutter/presentation/pages/desktop_chats/desktop_chats_page.dart';
import 'package:responsive_flutter/presentation/pages/mobile_chats/mobile_chats_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Flutter UI App',
      home: ResponsiveLayout(
        mobileLayout: MobileChatsPage(),
        desktopLayout: DesktopChatsPage(),
      ),
    );
  }
}
