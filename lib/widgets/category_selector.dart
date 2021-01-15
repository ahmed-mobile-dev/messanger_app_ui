import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  List<String> Categories = ['Messages', 'Online', 'Groups', 'Requests'];
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (BuildContext context, int Index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                SelectedIndex = Index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                Categories[Index],
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: SelectedIndex==Index ? Colors.white : Colors.white60,
                    letterSpacing: 2),
              ),
            ),
          );
        },
      ),
    );
  }
}
