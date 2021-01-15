import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/favorite_contact.dart';
import 'package:chat_app/widgets/recent_chat.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/category_selector.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30.0,
            ),
            onPressed: () {}),
        title: Center(
          child: Text(
            "Chat",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  FavoriteContact(),
                 RecentChat(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
