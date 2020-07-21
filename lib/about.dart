import 'package:flutter/material.dart';
import 'ui/colors.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background.color,
      body: Center(
        child: Container(
          width: 200,
          height: 400,
          child: Card(
            child:Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                  'Nam dolore et aliquid nisi placeat. Nihil consectetur doloremque voluptas ex ducimus. Quia consectetur nam maxime dolorem enim et aliquam. Ex nam possimus et distinctio. Veniam earum et aut.\n\nRerum reprehenderit error aut voluptatum ad. Sunt ut quasi saepe. Accusantium eaque quod sequi ab soluta molestiae iste. Cum repellendus debitis qui aut et ipsum.',
                  style: TextStyle(
                  color: AppColors.text.color
                  ),
                )
              ),
            color: AppColors.primary.color,
            shadowColor: AppColors.secondary.color,
            ),
          ),
        ),
      );
  }
}
