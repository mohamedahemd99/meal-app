import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = 'filterScreen';

  final Function saveFilter;
  final Map<String,bool> currentFilter;
  FilterScreen({this.saveFilter,this.currentFilter});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegan = false;
  bool _vegetarian = false;
  bool _lactoseFree = false;

  @override
  initState(){

    _glutenFree=widget.currentFilter['gluten'];
    super.initState();
  }
  Widget builtSwitchListTile(String title, String subTitle, bool value, Function onchange) =>SwitchListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      value: value,
      onChanged: onchange);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: [
          IconButton(
            onPressed: (){
              final Map<String,bool>selectedFilters={
                'gluten':_glutenFree,
                'lactose':_lactoseFree,
                'vegan':_vegan,
                'vegetarian ':_vegetarian,
              };
              widget.saveFilter(selectedFilters);

            },
            icon:Icon(Icons.save),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection. ",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ListView(
                children: [
                  builtSwitchListTile(
                      "GlutenFree", "only contain gluten Free meals", _glutenFree,
                          (value) {
                        setState(() {
                          _glutenFree = value;
                        });
                      }),
                  builtSwitchListTile(
                      "Vegan", "only contain vegan meals", _vegan,
                          (value) {
                        setState(() {
                          _vegan = value;
                        });
                      }),
                  builtSwitchListTile(
                      "Vegetarian", "only contain vegetarian meals", _vegetarian,
                          (value) {
                        setState(() {
                          _vegetarian = value;
                        });
                      }),
                  builtSwitchListTile(
                      "LactoseFree", "only contain lactoseFree meals", _lactoseFree,
                          (value) {
                        setState(() {
                          _lactoseFree = value;
                        });
                      }),
                ],
              ))
        ],
      ),
    );
  }
}
