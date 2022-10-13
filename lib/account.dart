// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const, unused_import, unnecessary_import, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_ui/util/bubble_stories.dart';
import 'package:nft_ui/util/highlight.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    color: Colors.deepPurple, shape: BoxShape.circle),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          '200',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        const Text('POSTS'),
                      ],
                    ),
                    Column(
                      children: [
                        const Text('1000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                        const Text('Followers'),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          '420',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        const Text('Following'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ViShAl',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('I am still Learning 0.0.....'),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                height: 40,
                width: 900,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.rectangle,
                ),
                child: const Center(
                  child: Text(
                    'Edit profile',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(width: 30,),
            const Icon(Icons.person_add),
          ],
        ),
        SizedBox(height: 20,),
        //
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BubbleStories(number: 'NAturE',),
              BubbleStories(number: 'BeSt'),
              BubbleStories(number: 'fUn'),
              BubbleStories(number: 'EAtinG')
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Text(
                  'Posts',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.portrait_sharp),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Reels',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.video_call),
              ],
            ),
          ],
        ),
        Container(
          height: 1,
          width: 2000,
          decoration: BoxDecoration(color: Color.fromARGB(143, 0, 0, 0)),
          ),

        SizedBox(height: 200,),
        ClipRRect(
          child: Padding(
            padding: const EdgeInsets.only(left: 700),
            child: Container(
              
              child: Column(
                children: [
                  const Icon(
                    Icons.add_box_rounded,
                    size: 30,
                  ),
                  const Text(
                    'Add post',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
