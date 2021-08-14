import 'package:project_board/app/labels.dart';

class Project{

  // ================= Instance Variables =================
  String? course;
  String? title;
  String? author;
  String? summary;
  String? problem;
  String? objectives;
  String? methodology;
  String? findings;

  // ==================== Constructors ====================

//  Project(this.course, this.title, this.author, this.summary, this.problem,
//      this.objectives, this.methodology,
//      this.findings);

  Project({
    required this.course,
    required this.title,
    required this.author,
    required this.summary,
    required this.problem,
    required this.objectives,
    required this.methodology,
    required this.findings});

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        course: json[columnCourse],
        title: json[columnTitle],
        author: json[columnAuthor],
        summary: json[columnSummary],
        problem: json[columnProblem],
        objectives: json[columnObjectives],
        methodology: json[columnMethodology],
        findings: json[columnFindings]
    );
  }

  // ================= Getters & Setters ==================

  // =================== Helper Methods ===================


}