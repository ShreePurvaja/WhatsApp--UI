import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.081,
        width: MediaQuery.of(context).size.width * 0.75,
        padding: const EdgeInsets.all(10),
        color: webAppBarColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "assets/b199b360-9358-11ef-a2c2-8738a951269c.png"),
                  radius: 20,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                Text(
                  info[0]['name'].toString(),
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.search,color: Colors.grey,)
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.more_vert,color: Colors.grey,)
                )
              ],)
          ],
        ));
  }
}
