class Todomodel {
  String? id;
  String? todoText;
  bool? isDone;

  Todomodel({
    required this.id,
    required this.todoText,
     this.isDone,
  });

  static List<Todomodel> todoList (){
    return[
      Todomodel(id: '01' , todoText: 'exercise' , isDone: true),
      Todomodel(id: '03' , todoText: 'work up',),
      Todomodel(id: '03' , todoText: 'work up',),
      
    ];
  }

}