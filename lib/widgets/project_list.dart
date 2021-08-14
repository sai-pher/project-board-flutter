import 'package:flutter/material.dart';
import 'package:project_board/service_handlers/models/project.dart';
import 'package:project_board/widgets/project_details.dart';

class ProjectList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ProjectListState();

}

class _ProjectListState extends State {

  static final pr = new Project(course: 'course', title: 'title', author: 'author', summary: 'summary', problem: 'problem', objectives: 'objectives', methodology: 'methodology', findings: 'findings');
  List<Project> projects = [pr];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(
          children: projects.map((pr) => ProjectDetails(project: pr,)).toList(),
        ),
      ),
    );
  }
}