import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_grocerry/widgets/app_bar/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actions: appBarActions,
        shadowColor: Colors.black12,
        elevation: 3,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      color: const Color(0xff000000).withOpacity(0.2),
                      width: 2),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: const Color(0xff000000).withOpacity(0.5),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "Search here...",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: const Color(0xff000000).withOpacity(0.5),
                              fontSize: 15),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
