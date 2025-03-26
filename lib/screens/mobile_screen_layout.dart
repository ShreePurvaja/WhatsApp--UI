import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:DefaultTabController(
        length: 3,
         child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            toolbarHeight: 70,
            title:const Text("WhatsApp",style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color:Colors.grey))
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.white,
            labelStyle:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
            tabs:[ Tab(text: 'CHATS'),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',)
          ]
        )
          ),
          body: const ContactsList(),
          floatingActionButton:FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabColor,
            child: const Icon(Icons.comment,color: Colors.white,),
          ) ,
         )
      )
    );
  }
}