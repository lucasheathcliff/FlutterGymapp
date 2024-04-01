class ExerciseModel {
  String id;
  String name;
  String card;
  String howToDo;


  String? urlImage;

  ExerciseModel({
    required this.id,
    required this.name,
    required this.card,
    required this.howToDo
  });

 // ExerciseModel.fromMap(Map<String, dynamic> map)
      //:id = map["id"], name = map["name"], card = map["exercise"], howToDo = map["howToDo"], urlImage = map["urlImage"];

  //Set<String?> toMap() {
  //  return {
  //    "id" = id,
   //   "name" = name,
    //  "exercise" = card,
   //   "howToDo" = howToDo,
    //  "urlImage" = urlImage,
   // };
 // }
}