import 'package:flutter/material.dart';

final List<String> sections = [
  "World",
  "Bussiness",
  "Politics",
  "Tech",
  "Science"
];

class Post {
  final String title;
  final int time;
  final String imageUrl;
  final String story;

  Post({this.imageUrl, this.title, this.time, this.story});
}

class Articles {
  final String name;
  final String title;
  final int time;
  final String imageUrl;
  final Color color;
  Articles({this.name, this.title, this.time, this.imageUrl, this.color});
}

class EditorChoice {
  final String imageurl;
  final String editorname;
  final String editorImage;
  final String title;
  final String story;

  EditorChoice(
      {this.imageurl,
        this.editorname,
        this.editorImage,
        this.title,
        this.story});
}

List<Post> topStories = [
  Post(
      imageUrl: "images/verdant.jpg",
      time: 2,
      title:
      "British woman calls ex-husband's new wife horse on FB. Gets 2 years in jail, Rs 45 lakh fine",
      story:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  Post(
    imageUrl: "images/verdant.jpg",
    story:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    time: 1,
    title: "Billions of years ago Mars had big, wide, intense rivers",
  ),
  Post(
      imageUrl: "images/verdant.jpg",
      story:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      time: 3,
      title: "Traders burn Chinese goods ahead of Holi"),
];

List<Post> moreTopStories = [
  Post(
      imageUrl: "images/verdant.jpg",
      time: 2,
      title:
      "British woman calls ex-husband's new wife horse on FB. Gets 2 years in jail, Rs 45 lakh fine",
      story:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  Post(
    imageUrl: "images/verdant.jpg",
    story:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    time: 1,
    title: "Billions of years ago Mars had big, wide, intense rivers",
  ),
  Post(
      imageUrl: "images/verdant.jpg",
      story:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      time: 3,
      title: "Traders burn Chinese goods ahead of Holi"),
];

List<Articles> topArticles = [
  Articles(
    name: 'Juliya Petinsons',
    imageUrl: "images/verdant.jpg",
    time: 2,
    color: Color(0xff1b262c),
    title: "Artificial intelligence can\nsave your life",
  ),
  Articles(
      imageUrl: "images/verdant.jpg",
      name: "Kyle Wilsom",
      time: 2,
      title: "Self-inflicted\n Medical misery",
      color: Color(0xff158467)),
  Articles(
    imageUrl: "images/verdant.jpg",
    name: "Richard Brown",
    time: 5,
    title: "You can't reply to this\nconversation. Learn more",
    color: Color(0xff1b262c),
  ),
  Articles(
      imageUrl: "images/verdant.jpg",
      name: "Steve Mayor",
      time: 3,
      title: "You can't reply to this\nconversation. Learn more",
      color: Color(0xffb52b65)),
];

List<EditorChoice> editorArticles = [
  EditorChoice(
    editorImage: "images/verdant.jpg",
    editorname: "Robert Pattison",
    imageurl: "assets/images/ms.png",
    story:
    "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "Only Indian actor to buy land on moon.",
  ),
  EditorChoice(
    editorImage: "images/verdant.jpg",
    editorname: "Robert Pattison",
    imageurl: "images/food.jpg",
    story:
    "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "Shahraj's mission comes to live at the biggest mosque",
  ),
  EditorChoice(
    editorImage: "images/food.jpg",
    editorname: "Robert Pattison",
    imageurl: "images/food.jpg",
    story:
    "Lorem ipsum dolor sit amet, nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "Shahraj's mission comes to live at the biggest mosque",
  ),
];