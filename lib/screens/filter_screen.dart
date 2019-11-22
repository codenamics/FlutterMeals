import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filteres';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _lactoseFree = false;
  bool _vegan = false;

Widget _buildSwtichListTile(String title, String description, bool currentValue, Function updateValue){
 return SwitchListTile(
                  onChanged: updateValue,
                  title: Text(title),
                  value: currentValue,
                  subtitle: Text(description),
                );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FILTERS'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Adjust meals'),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
              _buildSwtichListTile('Glutten Free', "Only gluten free", _glutenFree, (newValue){
                setState(() {
                  _glutenFree = newValue;
                });
              }),
               _buildSwtichListTile('Vegan', "Vegan", _vegan, (newValue){
                setState(() {
                  _vegan = newValue;
                });
              }),
               _buildSwtichListTile('Vegetarian', "Vegetarian", _vegetarian, (newValue){
                setState(() {
                  _vegetarian = newValue;
                });
              }),
               _buildSwtichListTile('Lactose Free', "Lactose free", _lactoseFree, (newValue){
                setState(() {
                  _lactoseFree = newValue;
                });
              }),
              ],
            ))
          ],
        ));
  }
}
