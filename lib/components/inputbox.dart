import 'package:flutter/material.dart';
// ignore: unused_import
import '../colors/colors.dart';

class InputItem extends StatelessWidget {
  const InputItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only( bottom:20 , right:20 , left:20),
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [ BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                    )],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Add a new todo item',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                ),

              Container(
                margin: const EdgeInsets.only( bottom: 20 , right: 20),
                  child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tdBlue, 
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    minimumSize: const Size(60, 40),
                    elevation: 0,
                  ), 
                  child: const Text('+', style: TextStyle(fontSize: 45 , color: Colors.white)),
                  ),
                )
            ]),
        )
      ],
    );
  }
}