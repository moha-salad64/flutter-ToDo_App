import 'package:flutter/material.dart';



import 'inputbox.dart';
import '../model/todomodel.dart';
import '../ToDo/todo_item.dart'; // todo list item importing
import '../colors/colors.dart';
import 'searchbox.dart'; //searching box importing 

class Home extends StatelessWidget {
  
   Home({super.key});

  final todoList = Todomodel.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        backgroundColor: tdApp,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu,
            color: tdWhite,
            size: 30
            ),
          SizedBox(
            width: 50, height: 50,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
              child: Image.asset('Images/cat.jpeg' ),
            ),
          )
          ],
        ),
      ),


      //body part of the todo app
      body: Container(
           padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20
        ),
        child: Column (
          children: [
           const Searchbox(), //this searchbx part of the todo list input
            Expanded(
              child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only( top: 30, bottom: 20),
                  child: const Text('All ToDos',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: tdWhite,
                  )),
                ),
                 //add your todo list items here

              for (Todomodel todoItemList in todoList) 
               ToDos(todoos:todoItemList),  // this is to do list items
              ],),),

             const InputItem()  //input item todo imported here
          ], 
        ),
      ),
    );
  }
}
