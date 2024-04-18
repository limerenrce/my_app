import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card.filled(
                      child: _SampleCard(
                    cardName: 'Software Engineer',
                    location: '/first-screen',
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card.filled(
                      child: _SampleCard(
                    cardName: 'Data Scientist',
                    location: '/second-screen',
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card.filled(
                      child: _SampleCard(
                    cardName: 'Quality Assurance',
                    location: '/third-screen',
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card.filled(
                      child: _SampleCard(
                    cardName: 'DD',
                    location: '/first-screen',
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card.filled(
                      child: _SampleCard(
                    cardName: 'EE',
                    location: '/first-screen',
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card.filled(
                      child: _SampleCard(
                    cardName: 'FF',
                    location: '/first-screen',
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card.filled(
                      child: _SampleCard(
                    cardName: 'JJ',
                    location: '/first-screen',
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card.filled(
                      child: _SampleCard(
                    cardName: 'KK',
                    location: '/first-screen',
                  )),
                ],
              ),
            ],
          ),
        ),
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
      width: 350,
      height: 175,
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
