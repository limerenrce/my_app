import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        AssetImageWidget(
          imagePath: 'assets/images/job.jpg',
          width: 300,
          height: 350,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Text(
                'Over',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                ' 5,000 jobs',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.purpleAccent,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Text(
                'are waiting for',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Text(
                'you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Center(
            child: Text(
              'Start searching',
              style: TextStyle(
                backgroundColor: Colors.purpleAccent,
                fontSize: 20,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
