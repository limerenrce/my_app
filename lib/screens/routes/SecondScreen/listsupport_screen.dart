import 'package:flutter/material.dart';
import 'package:my_app/dto/support.dart';

class ListsupportScreen extends StatefulWidget {
  const ListsupportScreen({Key? key}) : super(key: key);

  @override
  _ListsupportScreenState createState() => _ListsupportScreenState();
}

class _ListsupportScreenState extends State<ListsupportScreen> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  Future<List<Support>>? _support;

  late String _titleIssue;
  late String _deskripsiIssue;
  late String _rating;
  late String _image;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
