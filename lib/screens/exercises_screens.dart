 import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gymapps/models/exercises_models.dart';
 import 'package:gymapps/models/feeling_models.dart';
  class ExerciseScreen extends StatelessWidget {
    ExerciseScreen({super.key});

    final ExerciseModel exerciseModel = ExerciseModel(id: "1", name: "Supino Reto", card: "Treino B", howToDo: "Hold the bar and push it to your breast then pull off and back");
    final List<FeelingModel> feelingList = [FeelingModel(id: "1", feeling: "High activating", date: "2024-03-31"),
    FeelingModel(id: "1", feeling: "Low activating", date: "2024-04-01"),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text(" ${exerciseModel.name} - ${exerciseModel.card}" )),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("FAB foi Clicado");
            },
            child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Send picture"),
            ),
              const Text("How to do?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),),
              Text(exerciseModel.howToDo),
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(feelingList.length, (index) {
                  FeelingModel feelingNow = feelingList[index];
                  return Text(feelingNow.feeling);
                   //   const Text("How do you feel that?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,), ),
                     // Text(feelingNow.feeling),
                      //const Text("Date: "),
                      //Text(feelingNow.date),


                }),
              )
            ],
          ),
        ),
        );
    }
  }
