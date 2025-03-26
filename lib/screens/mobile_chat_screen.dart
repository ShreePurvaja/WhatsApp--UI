import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title:Text(
           info[0]['name'].toString(),
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.video_call)
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.call)
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.more_vert)
          )
        ],
      ),
      body:Column(
        //Chat list
        children: [
          const Expanded(
            child: ChatList()
          ),
          //text input
          TextField(
            decoration: InputDecoration(
              filled:true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Icon(
                  Icons.emoji_emotions_outlined,color:Colors.grey
                ),
              ),
              suffixIcon:const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.camera_alt,color:Colors.grey
                    ),SizedBox(width: 10),
                    Icon(
                      Icons.attach_file,color:Colors.grey
                    ),SizedBox(width: 10),
                    Icon(
                      Icons.currency_rupee,color:Colors.grey
                    ),SizedBox(width: 10)
                  ],
                ),
              ) ,
              hintText: 'Text a message',
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none
              )
            ),
            contentPadding: const EdgeInsets.all(10),
            ),
          ),
          
        ],
        
        
      ) ,
    );
  }
}