import 'package:flutter/material.dart';
import 'package:responsive_flutter/presentation/common_widgets/colors.dart';
import 'package:responsive_flutter/presentation/common_widgets/user_list_widget.dart';

class MobileChatsPageBody extends StatelessWidget {
  const MobileChatsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Patients",
              style: TextStyle(
                fontSize: 33,
                color: blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            UserListWidget(),
            Text(
              "Colleagues",
              style: TextStyle(
                fontSize: 33,
                color: blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            UserListWidget()
          ],
        ),
      ),
    );
  }
}
