// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/components/asset_image_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AssetImageWidget(
            imagePath: 'assets/images/woodz.jpg',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Text(
              "Woodz in Paris",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              textAlign: TextAlign.justify,
            ),
          ),
          MyWidget(),
        ],
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _isLiked = true;
  bool _isDissliked = false;
  int _likesCount = 1996;
  int _disslikesCount = 2;

  void _toggleLiked() {
    setState(() {
      if (_isLiked) {
        _likesCount -= 1;
        _isLiked = false;
      } else {
        _likesCount += 1;
        _isLiked = true;
      }
    });
  }

  void _toggleDissliked() {
    setState(() {
      if (_isDissliked) {
        _disslikesCount -= 1;
        _isDissliked = false;
      } else {
        _disslikesCount += 1;
        _isDissliked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            IconButton(
              icon: (_isLiked
                  ? const Icon(Icons.thumb_up)
                  : const Icon(Icons.thumb_up_alt_outlined)),
              onPressed: _toggleLiked,
            ),
            IconButton(
              alignment: Alignment.centerRight,
              icon: (_isDissliked
                  ? const Icon(Icons.thumb_down)
                  : const Icon(Icons.thumb_down_alt_outlined)),
              onPressed: _toggleDissliked,
            ),
            SizedBox(
              child: SizedBox(
                child: Text('Likes: $_likesCount  Disslikes: $_disslikesCount'),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
