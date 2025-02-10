import 'package:cricket_app/E%20Commerce%20App/styles/app_colors.dart';
import 'package:flutter/material.dart';

class RatingProgressReviews extends StatelessWidget {
  final int noOfStars;
  final String text;
  final double value;

  const RatingProgressReviews({
    super.key,
    required this.noOfStars,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ⭐ Rating Stars
        Row(
          children: List.generate(
            noOfStars,
            (index) {
              return Icon(
                Icons.star_rate_rounded,
                color: iconColor5,
                size: 16,
              );
            },
          ),
        ),
        const SizedBox(width: 6),
        // 📊 Linear Progress Indicator
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 8,
            backgroundColor: bgColor,
            borderRadius: BorderRadius.circular(4),
            valueColor: const AlwaysStoppedAnimation(iconColor1),
          ),
        ),
        const SizedBox(width: 10),
        // 🔢 Review Count Text
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 0.8,
            color: Color(0xFF4F4F4F),
          ),
        ),
      ],
    );
  }
}
