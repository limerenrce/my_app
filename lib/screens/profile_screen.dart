import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:my_app/components/text_container.dart';
import 'package:my_app/screens/routes/SecondScreen/bookmark_screen.dart';
import 'package:my_app/screens/routes/SecondScreen/one_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  void goToAnotherRoute(context, screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
    Navigator.pushNamed(context, '/second-screen');
  }

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text('Navigate to Screen Profile'),
    // );
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.question_mark_rounded)),
                Tab(icon: Icon(Icons.my_library_books_outlined)),
                Tab(icon: Icon(Icons.bookmark_border_outlined)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              OneScreen(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'Job offer nearby your location',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Choose what suitable for you. lorem ipsum dolor Yapp, lorem ipsum dolor!',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card.outlined(
                                  child: _SampleCard(
                                cardName: 'Software Engineer',
                                location: '/first-screen',
                              )),
                              Card.outlined(
                                  child: _SampleCard(
                                cardName: 'Data Scientist',
                                location: '/second-screen',
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card.outlined(
                                  child: _SampleCard(
                                cardName: 'Fetch Data News',
                                location: '/news-screen',
                              )),
                              Card.outlined(
                                  child: _SampleCard(
                                cardName: 'Fetch Datas',
                                location: '/datas-screen',
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card.outlined(
                                  child: _SampleCard(
                                cardName: 'Profile',
                                location: '/profile-screen',
                              )),
                              Card.outlined(
                                  child: _SampleCard(
                                cardName: 'Customer Support',
                                location: '/support-screen',
                              )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card.outlined(
                                  child: _SampleCard(
                                cardName: 'EEE FFF',
                                location: '/first-screen',
                              )),
                              Card.outlined(
                                  child: _SampleCard(
                                cardName: 'GGG HHH',
                                location: '/third-screen',
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BookmarkScreen(),
              // const Icon(Icons.directions_transit),
            ],
          ),
        ));
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/flat_img.png')),
                TextContainer(
                    text: 'Column 2', color: Colors.green, key: ValueKey(2)),
                TextContainer(
                    text: 'Column 3', color: Colors.blue, key: ValueKey(3)),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName, required this.location});
  final String cardName;
  final String location;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 177,
      height: 115,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, location),
        child: Center(
          child: Text(
            cardName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 23,
            ),
          ),
        ),
      ),
    );
  }
}
