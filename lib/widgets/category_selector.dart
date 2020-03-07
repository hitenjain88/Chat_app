import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CategorySelectorState();
  }
}

class CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(top: 30.0, left: 30.0),
              child: Text(
                categories[index],
                style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: index == selectedIndex ? Colors.white : Colors.white60,
                    letterSpacing: 1.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
