import 'package:flutter/material.dart';

import '../providers/task.dart';

class TasksContainer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 80),
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, ),
            width: MediaQuery.of(context).size.width ,
            child: Card(
              color: Colors.blue,
              child: Container(
                child: Center(
                  child: Text(
                    'Task description',
                    style: TextStyle(color: Colors.white, fontSize: 36.0),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}