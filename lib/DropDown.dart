import 'package:flutter/material.dart';


class DropDown extends StatefulWidget {
  DropDown({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

  String valueChosse;
  List listItem = [
    'hola',
    'hola como estas',
    'bien gracias'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Container(
            height: 200,
            child: DropdownButton(
                      value: valueChosse,
                      onChanged: (newValue){
                        setState(() {
                          valueChosse = newValue;
                        });
                      },
                      items: listItem.map((valueItem){
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                          );
                      }).toList()
                    ),
          ),
    );
  }
}