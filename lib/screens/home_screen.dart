import 'package:flutter/material.dart';
import 'package:flutterchatui/widgets/category_selector.dart';
import 'package:flutterchatui/widgets/favorite_contacts.dart';
import 'package:flutterchatui/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Chats', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: () {

          },
        ),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            onPressed: () {

            },
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0))
              ),
              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FavoriteContacts(),
                  RecentChats()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
