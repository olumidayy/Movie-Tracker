import 'dart:ui';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController _scrollController = ScrollController();
  var _border = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: const BorderRadius.all(
      const Radius.circular(5.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          centerTitle: true,
          elevation: 2,
          stretch: true,
          forceElevated: true,
          backgroundColor: Colors.white,
          title: Row(children: [
            SizedBox(
              height: 43,
              width: 295,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(1),
                  prefixIcon: Icon(Icons.search, color: Color(0xFF707070)),
                  hintText: 'Search for something',
                  border: _border,
                  enabledBorder: _border,
                  focusedBorder: _border,
                  disabledBorder: _border,
                  filled: true,
                  fillColor: Color(0xFFEAEAEA),
                ),
              ),
            )
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Trending movies today', style: TextStyle(
                      color: Color(0xFF7758F1), fontSize: 18,
                    ),),
                    Text('See more', style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFF7758F1), fontSize: 14,
                    ),),
                  ],),
                ),
                // ListView(
                //   shrinkWrap: true,
                //   scrollDirection: Axis.horizontal,
                // )
              ],)
            ]
          )
        )
      ],
    ));
  }
}
