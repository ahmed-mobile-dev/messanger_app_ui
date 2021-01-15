import 'package:flutter/material.dart';
import 'package:chat_app/models/message_model.dart';

class RecentChat extends StatefulWidget {
  @override
  _RecentChatState createState() => _RecentChatState();
}

class _RecentChatState extends State<RecentChat> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: ListView.builder(

              itemCount: chats.length,
              itemBuilder: (BuildContext Context, int Index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 5,top: 5,right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: BoxDecoration(color: chats[Index].unread ? Color(0xFFFFEFEE) : Colors.white,borderRadius:
                  BorderRadius.only(topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  )
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(chats[Index].sender.imageUrl),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(chats[Index].sender.name,style: TextStyle(
                                fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(chats[Index].text,style: TextStyle(
                                    fontSize: 16,color: Colors.blueGrey,fontWeight: FontWeight.w600
                                ),
                                overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Text(chats[Index].time,style:
                            TextStyle(fontSize: 15,color: Colors.grey,
                            fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                         chats[Index].unread ? Container(
                              height: 20,
                              width: 40,
                              decoration:   BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.orange,

                              ),
                              alignment: Alignment.center,
                              child: Text("NEW",

                              style:
                                TextStyle(color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),)) : Text(""),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
