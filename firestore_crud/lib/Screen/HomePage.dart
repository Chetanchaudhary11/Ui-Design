import 'package:firestore_crud/Screen/AddStudent.dart';
import 'package:firestore_crud/Screen/ListStudent.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Firestore Crud"),
            ElevatedButton(onPressed: () =>{  //button click to push databasee ....
            Navigator.push(context, MaterialPageRoute(builder: ((context) => AddStudentPage())))
            },
            child: Text("Add",style: TextStyle(fontSize: 20.0,color:Colors.black),),
            style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 58, 131, 183)),)
          ],
        ),
      ),
      body: ListStudent(),
    );
  }
}