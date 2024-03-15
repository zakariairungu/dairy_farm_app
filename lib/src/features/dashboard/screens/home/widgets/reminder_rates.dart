import 'package:flutter/material.dart';

class ReminderAndRates extends StatelessWidget {
  const ReminderAndRates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10)
          ),
          height: 50,
          width: 50,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.notification_add),
              Text("Reminder",style: TextStyle(fontSize: 10),)
            ],
          ),
        ),
        SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10)
          ),
          height: 50,
          width: 50,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.money),
              Text("Rates",style: TextStyle(fontSize: 10),)
            ],
          ),
        ),
      ],
    );
  }
}

