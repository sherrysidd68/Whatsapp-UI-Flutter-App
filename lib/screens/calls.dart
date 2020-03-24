import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  final List<ChatList> chatListItems = [
    //Waleed
    ChatList(
        perName: "Waleedaa",
        date: "09:00 AM",
        lastMsg:
            "If you have ever picked up a programming manual and felt your forehead go "
            "clammy ",
        proURL: "assets/images/waleed.jpg"),

    //Wahaj
    ChatList(
        proURL: "assets/images/wahaj.jpg",
        lastMsg:
            " I hated having to read through pointless drivel and then be presented with a short program",
        date: "09:12 AM",
        perName: "Wahaj Moiz"),
    ChatList(
        perName: "Sheheryar Azmat Siddiqui",
        date: "09:20 AM",
        proURL: "assets/images/sherry.jpg",
        lastMsg:
            "I knew there had to be a better way, and thankfully there is. "),
    ChatList(
        perName: "Mansoor Shake",
        date: "09:30PM",
        proURL: "assets/images/mansoor.jpg",
        lastMsg: "Learn Python by using practical examples"
            " rather than self-important explanations."),
    ChatList(
      perName: "Arslan Khan",
      date: "09:33 AM",
      proURL: "assets/images/khan.jpg",
      lastMsg: "I wrote it and"
          "you are presently reading it, so aren’t you lucky?",
    ),
    ChatList(
      perName: "Syed Hamza",
      date: "09:47 PM",
      proURL: "assets/images/hamza.jpg",
      lastMsg:
          " Telling me exactly what to type in and then spend the next 20 pages reading",
    ),
    ChatList(
      perName: "Chotta Bheem ",
      date: "09:55 AM",
      proURL: "assets/images/chotta.jpg",
      lastMsg:
          "and your eyes cross as you attempt to make sense of the longwinded"
          "explanations, this is the guide for you.",
    ),
    ChatList(
      perName: "Ammad Bandri",
      date: "10:04 AM",
      proURL: "assets/images/ammad.jpg",
      lastMsg: "Many programmers learn through experimentation.",
    ),
    ChatList(
      perName: "Ahsan Khan ",
      date: "11:09 AM",
      proURL: "assets/images/ahsan.jpg",
      lastMsg: "Book is a hands-on approach to learning programming.",
    ),
    ChatList(
      perName: "Aadi Oreo ",
      date: "11:56 AM",
      proURL: "assets/images/aadi.jpg",
      lastMsg:
          "There are no chapters entitled “the architecture of a computer”.",
    ),
  ];
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatListItems.length,
      separatorBuilder: (ctx, i) {
        return Divider();
      },
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text(chatListItems[i].perName),
          //subtitle: Text(chatListItems[i].lastMsg),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(i % 5 == 0 ? Icons.videocam : Icons.call),
            color: Color(0xFF075E54),
          ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(chatListItems[i].proURL),
          ),
          onTap: () {},
        );
      },
    );
  }
}
