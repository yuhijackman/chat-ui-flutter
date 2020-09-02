import 'package:flutter/material.dart';
import 'package:flutterchatui/models/message_model.dart';
import 'package:flutterchatui/screens/chats_screen.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Favorite Contacts',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 30.0,
                    color: Colors.blueGrey,
                    onPressed: (){},
                  )
                ]
            ),
          ),
          Container(
            height: 120.0,
            color: Theme.of(context).accentColor,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ChatsScreen(user: favorites[index])
                        )
                    )
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(favorites[index].imageUrl),
                            radius: 35.0,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                              favorites[index].name,
                            style: TextStyle(color: Colors.blueGrey, fontSize: 16.0, fontWeight: FontWeight.w600),
                          )
                        ]
                    ),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
