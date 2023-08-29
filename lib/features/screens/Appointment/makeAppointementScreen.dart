
import 'package:flutter/material.dart';

class MakeAppointmentScreen extends StatelessWidget {
  const MakeAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
              CircleAvatar(),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,)),
            ],
          )
        ],
      ),
    );
  }
}
