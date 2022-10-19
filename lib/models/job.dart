import 'package:app_ui/models/company.dart';
import './company.dart';
import 'package:app_ui/screen/main_screen.dart';

class Job{
  String location;
  String role;
  Company company;
  bool isFavorite;


  Job({required this.role, required this.location, required this.company, this.isFavorite=false});
 }