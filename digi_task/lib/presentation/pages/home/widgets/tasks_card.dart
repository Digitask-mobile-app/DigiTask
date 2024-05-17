import 'package:digi_task/core/constants/theme/theme_ext.dart';
import 'package:flutter/material.dart';

class TasksCard extends StatelessWidget {
  const TasksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: context.colors.neutralColor100, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 155,
                  width: 155,
                  child: Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()..rotateZ(90 * 3.1415927 / 180),
                    child: CircularProgressIndicator(
                      value: 0.5,
                      strokeWidth: 20,
                      color: context.colors.primaryColor50,
                      backgroundColor: context.colors.secondaryColor80,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '32 task',
                      style: context.typography.h6SemiBold,
                    ),
                    Text(
                      'Tamamlanıb',
                      style: context.typography.body2Regular,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Qoşulmalar',
                        style: context.typography.body2SemiBold.copyWith(color: context.colors.neutralColor30),
                      ),
                      const WidgetSpan(
                        child: SizedBox(width: 10),
                      ),
                      TextSpan(
                        text: '12',
                        style: context.typography.subtitle2SemiBold.copyWith(color: context.colors.secondaryColor70),
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Problemlər',
                        style: context.typography.body2SemiBold.copyWith(color: context.colors.neutralColor30),
                      ),
                      const WidgetSpan(
                        child: SizedBox(width: 10),
                      ),
                      TextSpan(
                        text: '20',
                        style: context.typography.subtitle2SemiBold.copyWith(color: context.colors.primaryColor50),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
