import 'package:chatapp/screens/call.dart';
import 'package:chatapp/screens/chatpage.dart';
import 'package:chatapp/screens/group.dart';
import 'package:chatapp/screens/statuspage.dart';
import 'package:flutter/material.dart';

class ChatappHomePage extends StatefulWidget {
  const ChatappHomePage({super.key});

  @override
  State<ChatappHomePage> createState() => _ChatappHomePageState();
}

class _ChatappHomePageState extends State<ChatappHomePage>
    with SingleTickerProviderStateMixin {
  late TabController vishnuController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    vishnuController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBzuLiJAPYVcHdJEwT0YbHgorAkjulkkuJtQ&usqp=CAU"),
                    maxRadius: 25,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Jai Vishnu",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.key,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.chat,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Chat",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.chat_bubble,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Chat",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.storage,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Data and Storage",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Help",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              Divider(
                height: 35,
                color: Colors.green.shade300,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.people_outline,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Invite a friend",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Logout",
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Signal",
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          controller: vishnuController,
          indicatorColor: Colors.white,
          tabs: [
            const Tab(
              child: Text(
                "Group",
                style:
                    TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              ),
            ),
            Tab(
              child: Text(
                "Messages",
                style: Theme.of(context).textTheme.button,
              ),
            ),
            const Tab(
              child: Text(
                "Status",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Tab(
              child: Text(
                "Calls",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
          controller: vishnuController,
          children: const [Group(), ChatScreen(), Status(), CallScreen()]),
    );
  }
}
