import 'package:flower_e_commerce_app/Feature/trackOrder/presentaion/models/tracking_step.dart';
import 'package:flower_e_commerce_app/core/Config/Theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackingTimeline extends StatelessWidget {
  final List<TrackingStep> steps;

  const TrackingTimeline({super.key, required this.steps});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: List.generate(steps.length, (index) {
        final step = steps[index];
        final isFirst = index == 0;
        final isLast = index == steps.length - 1;

        return TimelineTile(
          alignment: TimelineAlign.start,
          isFirst: isFirst,
          isLast: isLast,
          beforeLineStyle: LineStyle(
            color: index == 0
                ? Colors.transparent
                : (steps[index - 1].isCompleted
                    ? AppColorsLight.pink
                    : AppColorsLight.white[60]!),
            thickness: 2,
          ),
          afterLineStyle: LineStyle(
            color: isLast
                ? Colors.transparent
                : (step.isCompleted
                    ? AppColorsLight.pink
                    : AppColorsLight.white[60]!),
            thickness: 2,
          ),
          indicatorStyle: IndicatorStyle(
            width: 22,
            height: 22,
            indicatorXY: 0.3,
            indicator: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColorsLight.pink, width: 1.5),
                color: step.isCompleted
                    ? AppColorsLight.white
                    : AppColorsLight.white,
              ),
              child: Center(
                child: Icon(
                  Icons.circle,
                  size: 14,
                  color: step.isCompleted
                      ? AppColorsLight.pink
                      : AppColorsLight.white,
                ),
              ),
            ),
          ),
          endChild: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(step.title, style: theme.textTheme.titleSmall),
                SizedBox(height: 26),
                Text(
                  step.timestamp,
                  style: theme.textTheme.displaySmall?.copyWith(
                    color: AppColorsLight.white[90],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
