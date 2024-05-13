// ignore_for_file: library_private_types_in_public_api, unnecessary_import
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/components/asset_image_widget.dart';
// import 'package:my_app/components/text_container.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({super.key});

  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _Image(location: 'assets/images/woodz.jpg'),
                    _Image(location: 'assets/images/day6.jfif'),
                    _Image(location: 'assets/images/woodz.jpg'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _Image(location: 'assets/images/thumbsUp.jpeg'),
                    _Image(location: 'assets/images/woodz.jpg'),
                    _Image(location: 'assets/images/minhyun.jpg'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.location});
  final String location;

  @override
  Widget build(BuildContext context) {
    return AssetImageWidget(
      imagePath: location,
      width: 136,
      height: 136,
      fit: BoxFit.cover,
    );
  }
}
