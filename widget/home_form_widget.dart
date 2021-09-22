import 'package:flutter/material.dart';

class NoteFormWidget extends StatelessWidget {
  final bool? isImportant;
  final int? number;
  final String? title;
  final String? description;
  final String? descript;
  final ValueChanged<bool> onChangedImportant;
  final ValueChanged<int> onChangedNumber;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onChangedDescript;

  const NoteFormWidget({
    Key? key,
    this.isImportant = false,
    this.number = 0,
    this.title = '',
    this.description = '',
    this.descript = '',
    required this.onChangedImportant,
    required this.onChangedNumber,
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onChangedDescript,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjbrFiEgi89vh0tDGXl3YsdG6FYonnro3_Dg&usqp=CAU',
                height: 130,
                //width: double.infinity,

                fit: BoxFit.cover,
              ),
              SizedBox(height: 5),
              buildTitle(),
              SizedBox(height: 5),
              buildDescription(),
              SizedBox(height: 5),
              buildDescript(),
              SizedBox(height: 5),
            ],
          ),
        ),
      );

  Widget buildTitle() => TextField(
        maxLines: 1,
        //initialValue: title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.deepPurpleAccent, width: 0.0),
          ),
          hintText: 'Enter a Number',
          hintStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.number,

        onChanged: onChangedTitle,
      );

  Widget buildDescription() => TextField(
        maxLines: 1,
        //initialValue: description,
        style: TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
          fillColor: Colors.deepPurpleAccent,
          enabledBorder: const OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.deepPurpleAccent, width: 0.0),
          ),
          hintText: 'Enter Crypto name',
          hintStyle: TextStyle(color: Colors.black),
        ),

        onChanged: onChangedDescription,
      );

  Widget buildDescript() => TextField(
        maxLines: 1,
        //initialValue: descript,
        style: TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.deepPurpleAccent, width: 0.0),
          ),
          hintText: 'Enter Crypto name to convert',
          hintStyle: TextStyle(color: Colors.black),
        ),

        onChanged: onChangedDescript,
      );
}
