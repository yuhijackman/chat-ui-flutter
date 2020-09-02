import 'package:flutter/material.dart';
class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedCategory = 0;
  final List<String> categories = [
    'Messages',
    'Online',
    'Groups',
    'Requests'
  ];
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
                     selectedCategory = index;
                   });
                },
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                    child: new Text(
                        categories[index],
                      style: TextStyle(
                          color: selectedCategory == index ? Colors.white  : Colors.white60,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2
                      ),
                      textAlign: TextAlign.center,
                    )
                ),
              );
            }
        )
    );
  }
}
