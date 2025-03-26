import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';
import 'package:whatsapp_clone/widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [WebProfileBar(), WebSearchBar(), ContactsList()],
            ),
          ),
        ),
        //web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: dividerColor),
              ),
              image: DecorationImage(
                  image: NetworkImage("assets/backgroundImage.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const WebChatAppbar(),
              const Expanded(child: ChatList()),
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                padding: const EdgeInsets.only(bottom: 9,top:4),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: dividerColor)),
                    color: chatBarMessage),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        top:1,
                        left: 10,
                        right: 15,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: 'Type a message',
                          hintStyle: const TextStyle(color:Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 0, 
                                  style: BorderStyle.none
                              )
                            ),
                            contentPadding: const EdgeInsets.only(
                              left:20
                            )
                        ),
                      ),
                    )
                  ),
                  IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ))
                  ],
                ),
              )
              //message input box
            ],
          ),
        )
      ],
    ));
  }
}
