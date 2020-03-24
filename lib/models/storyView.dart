import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatelessWidget {
  final controller = StoryController();
  @override
  Widget build(BuildContext context) {
    List<StoryItem> stories = [
      StoryItem.text(
          "This is the beauty of Nature I really loved it !!", Colors.orange),
      StoryItem.pageImage(NetworkImage(
          "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823__340.jpg")),
      StoryItem.pageImage(NetworkImage(
          "https://images.pexels.com/photos/556666/pexels-photo-556666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))
    ];
    return Material(
      child: StoryView(
        stories,
        controller: controller,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
