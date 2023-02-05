import 'package:flutter/material.dart';
import 'package:responsive_flutter/presentation/common_widgets/colors.dart';

class UserListWidget extends StatelessWidget {
  const UserListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 40),
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: blackColor,
                    radius: 35,
                    child: Icon(Icons.person, size: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lightner ${index + 1}",
                          style: const TextStyle(
                            fontSize: 20,
                            color: blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Lorem Ipsum is simply...",
                          style: TextStyle(
                            fontSize: 15,
                            color: greyColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (index == 0 || index == 2)
                Padding(
                  padding: const EdgeInsets.only(right: 25, bottom: 20),
                  child: CircleAvatar(
                    backgroundColor: yellowColor,
                    radius: 12,
                    child: Text(
                      index == 0 ? "1" : "3",
                      style: const TextStyle(
                          color: blackColor, fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                )
              else
                Container()
            ],
          ),
        );
      },
    );
  }
}
