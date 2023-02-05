import 'package:flutter/material.dart';
import 'package:responsive_flutter/presentation/common_widgets/colors.dart';
import 'package:responsive_flutter/presentation/common_widgets/user_list_widget.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Patients",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: blackColor,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          height: size.height - 62,
          width: size.width / 2.3,
          child: const UserListWidget(
            itemCount: 15,
            isMobile: false,
          ),
        ),
      ],
    );
  }
}
