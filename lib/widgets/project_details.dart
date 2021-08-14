import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_board/service_handlers/models/project.dart';

class ProjectDetails extends StatefulWidget{

  final Project? project;

  const ProjectDetails({
    Key? key,
    @required this.project,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProjectBoardState();

}

class _ProjectBoardState extends State<ProjectDetails> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text(widget.project!.title.toString()),
            Text(widget.project!.summary.toString()),
          ],
        ),
      ),
    );
  }
}