// ignore_for_file: prefer_const_constructors, unused_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String number;
  BubbleStories({required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(shape:BoxShape.circle,
                      color: Colors.grey[400],),
                    ),
                    SizedBox(height: 10,),
                    Text(number),
                  ],
                ),
              );
  }
}