import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/chat_screen.dart';

import '../models/message_model.dart';


class  Favo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.0,),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
               textDirection: TextDirection.rtl,
                   
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                  Text(
                    'الأكثر شهرة',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    
                    style: TextStyle(
                      color: Colors.blueGrey,
                      
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                      ),),
                    IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                       ),
                       iconSize: 30.0,
                       color: Colors.blueGrey,
                  
                       onPressed: (){},

                          
                           ),
                           ],
                         ),
          ),
          Container(
            height: 120.0,
            color: Colors.blue.shade50,
            child: ListView.builder(
              padding: EdgeInsets.only(left:10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context,int index){
                return GestureDetector(
                   onTap: () =>Navigator.push(
                      context, MaterialPageRoute(
                      builder: (_) => ChatsScreen(
                        user: favorites[index],
                      ),
                    ),
                    ),
                    
                                  child: Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      children:<Widget> [
                        CircleAvatar(radius: 35.0,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                        SizedBox(height: 6.0),
                        Text(favorites[index].name,
                        style: TextStyle(color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        ),
                        
                        ),
                      ],
                    ),
                  ),
                );


              }),
          )
        ],
      ),
    );
  }
}