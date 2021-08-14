import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_board/widgets/add_project.dart';
import 'package:project_board/widgets/project_list.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePageState();

}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //adding an Appbar
        title: Text('Project Board'), //the name of the application
        actions: [  // the actions widget allows us to add several navigation items

          Center( //adding the first navigation item and positioning it at the center
            child: OutlinedButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                Navigator.pop(context);
              },
            ),
          ),

          SizedBox(width: 60), //putting some space between the nav items

          Center(  //adding the second navigation item and positioning it at the center
            child: OutlinedButton(
              child: Text('Add'),
              onPressed: () { //determining what should happen when the navigation item is clicked.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddProject()),
                );
              },
            ),
          ),

          SizedBox(width: 80)
        ],
      ),
      body: ProjectList(),
    );
  }
}

