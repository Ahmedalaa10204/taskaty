import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskaty/core/functions/routing.dart';
import 'package:taskaty/core/utils/text_styles.dart';
import 'package:taskaty/core/widgets/custom_button.dart';
import 'package:taskaty/features/add-task/presentation/view/add_task.dart';

class TodayHeader extends StatelessWidget {
  const TodayHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat.yMMMd().format(DateTime.now()),
              style: getTitleStyle(
                context,
              ),
            ),
            Text(
              'Today',
              style: getTitleStyle(
                context,
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomButton(
          text: '+ Add Task',
          onPressed: () {
            pushTo(context, const AddTaskView());
          },
          width: 140,
          height: 45,
        )
      ],
    );
  }
}