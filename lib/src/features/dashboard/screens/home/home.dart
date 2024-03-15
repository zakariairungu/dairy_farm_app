
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/header.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/reminder_rates.dart';
import 'package:dairy_farm_app/src/features/dashboard/screens/home/widgets/sliders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // image:  DecorationImage(image: AssetImage("assets/png/cover.png")),
        
      ),
      child: ListView(
        children:const  [
          HomeHeader(),
          HomeSlider(),
          ReminderAndRates(),
          SizedBox(height: 10,),
          Text("News",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
          SizedBox(height: 10,),
          Text("Dewarm cow number 7"),
          Divider(),
          Text("Mern recorded high liters of milk"),
          Divider(),
          Text("Check out the billing in the setting it has reached 200 bob"),
          SizedBox(height: 10,),
          Text("Activities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
          SizedBox(height: 10,),
          Text("Brian record some milk "),
          Divider(),
          Text("Y changed you profile"),
        ],
      ),
    );
  }
}

