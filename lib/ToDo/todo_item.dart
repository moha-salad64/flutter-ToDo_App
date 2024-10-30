import 'package:flutter/material.dart';



import '../colors/colors.dart';
import '../model/todomodel.dart';

class ToDos extends StatelessWidget {
 
  final Todomodel  todoos;

  const ToDos({super.key , required this.todoos });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13)
        ),
        contentPadding: const EdgeInsets.symmetric( horizontal: 20 , vertical: 3),
        tileColor: Colors.white,
        leading:Icon(
         (todoos.isDone ?? false) ? Icons.check_box : Icons.check_box_outline_blank, 
         color:tdBlue),
        title: Text(
          todoos.todoText!,
        style: TextStyle(
          fontSize: 16, color: tdBlack,
          decoration: (todoos.isDone ?? false) ? TextDecoration.lineThrough : null,
          // decoration: TextDecoration.lineThrough,
        )),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin:const  EdgeInsets.symmetric(vertical:12),
          height: 30, width: 30,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(7)
          ),
          child: IconButton(onPressed: (){},
          color: tdWhite,
          iconSize: 15, 
          icon: const Icon(Icons.delete)
          ),
        ),
      ),
    );
  }
}