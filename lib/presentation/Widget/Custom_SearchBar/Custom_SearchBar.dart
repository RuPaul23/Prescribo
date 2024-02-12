import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    final Size screenSize = MediaQuery.of(context).size;

    // Calculate responsive margins
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;
    double topMargin = screenHeight * 0.01; // 1% of screen height
    double horizontalMargin = screenWidth * 0.01; // 5% of screen width

    return Container(
      margin: EdgeInsets.only(top: topMargin, left: horizontalMargin, right: horizontalMargin),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: SizedBox(
                  height: 50, // Set the height of the TextField
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 231, 231, 231),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 18,
                        ),
                        width: 18,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.filter_alt_outlined,
                  color: Colors.white,
                  size: 18,
                ),
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
