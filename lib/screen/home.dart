import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:fab(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.notifications),
            Icon(Icons.notifications),
            Icon(Icons.notifications),
            Icon(Icons.notifications),
          ],
        )
      ),
    );
  }
}
class fab extends StatelessWidget {
  const fab({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      children: [
         SpeedDialChild(
           child:item(title: 'vishu',)
         ),
        SpeedDialChild(
            child:item(title: 'vishu',)
        ),
        SpeedDialChild(
            child:item(title: 'vishu',)
        ),
        SpeedDialChild(
            child:item(title: 'vishu',)
        ),
      ],
      child: Container(
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          shape: BoxShape.circle,

        ),
      ),
    );
  }
}
class item extends StatelessWidget {
  final String title;
  const item({super.key, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 2),
                color: Color(0x3300498a),
              ),
            ],
            borderRadius: BorderRadius.circular(17),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(1),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Align(

                    child: Icon(Icons.add)

                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 5,
                child: Text(title
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
