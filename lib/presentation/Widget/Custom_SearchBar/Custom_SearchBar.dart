import 'package:flutter/material.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';

class CustomSearchBar extends StatefulWidget {
  @override
  State<CustomSearchBar> createState() => _SearchInputState();
}

class _SearchInputState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
        child: Container(
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
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
                      color: Theme.of(context).splashColor,
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
        ),
      ),
    );
  }
}
