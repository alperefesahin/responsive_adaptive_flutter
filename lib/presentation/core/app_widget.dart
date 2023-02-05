import 'package:flutter/material.dart';
import 'package:responsive_online_clinic_ui/presentation/core/responsive_widget.dart';
import 'package:responsive_online_clinic_ui/presentation/pages/appointments/appointments_page.dart';
import 'package:responsive_online_clinic_ui/presentation/pages/chats/chats_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive Online Clinic UI App',
      // Since we have 2 pages in the design, we will create 2 different pages for the related layouts.
      home: ResponsiveLayout(
        mobileLayout: ChatsPage(),
        desktopLayout: AppointmentsPage(),
      ),
    );
  }
}
