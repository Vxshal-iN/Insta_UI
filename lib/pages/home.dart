// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:nft_ui/util/bubble_stories.dart';
import 'package:nft_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = ['lion', 'cat', 'cow', 'duck', 'monkey'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            //stories
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length, //fixed error
                itemBuilder: (context, index) {
                  return BubbleStories(number: people[index]);
                },
              ),
            ),

            //posts
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPosts(
                      name: people[index],
                    );
                  }),
            )
          ],
        ));
  }
}
