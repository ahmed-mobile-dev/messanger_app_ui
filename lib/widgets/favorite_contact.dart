import 'package:flutter/material.dart';
import 'package:chat_app/models/message_model.dart';

class FavoriteContact extends StatefulWidget {
  @override
  _FavoriteContactState createState() => _FavoriteContactState();
}

class _FavoriteContactState extends State<FavoriteContact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite Contacts",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30.0,
                    color: Colors.blueGrey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context,int Index ){
              return Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    CircleAvatar(radius: 35,
                    backgroundImage: AssetImage(favorites[Index].imageUrl),),
                    SizedBox(height: 6,),
                    Text(favorites[Index].name,style: TextStyle(
                      fontSize: 16,color: Colors.blueGrey,fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              );
            }),
          ),

        ],
      ),
    );
  }
}
