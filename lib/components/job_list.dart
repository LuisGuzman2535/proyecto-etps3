import 'package:app_ui/components/compact_item_job.dart';
import 'package:app_ui/models/job.dart';
import 'package:flutter/material.dart';

class JobList extends StatelessWidget{
  List<Job> jobs;
  JobList(this.jobs);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: this.jobs.length,
      itemBuilder: (context, index) => CompactItemJob(this.jobs[index]),
    );
  }
}