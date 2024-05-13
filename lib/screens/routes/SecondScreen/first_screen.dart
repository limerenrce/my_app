// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              AssetImageWidget(
                imagePath: 'assets/images/DA.jpg',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Star(),
                ],
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Software Engineer',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on),
                        Text(
                          'Singaraja, Bali',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Center(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     child: const Text('Go back!'),
              //   ),
              // ),
            ],
          ),
        ));
  }
}

class Star extends StatefulWidget {
  const Star({super.key});

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  bool _isLiked = false;
  int _likesCount = 4;
  bool _isMarked = false;

  void _toggleLiked() {
    setState(() {
      if (_isLiked) {
        _isLiked = false;
      } else {
        _isLiked = true;
      }
    });
  }

  void _toggleMarked() {
    setState(() {
      if (_isMarked) {
        _isMarked = false;
      } else {
        _isMarked = true;
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
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border_outlined)),
              onPressed: _toggleLiked,
            ),
            SizedBox(
              child: SizedBox(
                child: Text('$_likesCount             '),
              ),
            ),
            IconButton(
              icon: (_isMarked
                  ? const Icon(Icons.bookmark_border_outlined)
                  : const Icon(Icons.bookmark)),
              onPressed: _toggleMarked,
            ),
            const SizedBox(
              child: SizedBox(
                child: Text('Bookmark'),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
