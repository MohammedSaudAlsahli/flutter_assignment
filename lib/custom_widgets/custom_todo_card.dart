import 'package:flutter/material.dart';
import 'package:flutter_assignment/custom_widgets/width_extension.dart';

class CustomTodoCard extends StatelessWidget {
  const CustomTodoCard(
      {super.key,
      this.customText = 'test',
      this.onTab,
      this.userID = 'user ID',
      this.isCompleted = false});
  final String customText;
  final String userID;
  final bool isCompleted;

  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.all(25.0),
        height: 125,
        width: context.screenWidth,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 10,
                offset: Offset(0, 10),
              )
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Icon(
                isCompleted
                    ? Icons.check_box_outlined
                    : Icons.check_box_outline_blank,
                size: 50,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    customText,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.clip),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    userID,
                    style: const TextStyle(
                        fontSize: 15, overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
