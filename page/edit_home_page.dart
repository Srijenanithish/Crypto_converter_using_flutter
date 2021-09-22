import 'package:flutter/material.dart';
import 'package:flutter_datastore/db/database_helper.dart';
import 'package:flutter_datastore/model/home.dart';
import 'package:flutter_datastore/widget/home_form_widget.dart';

class AddEditNotePage extends StatefulWidget {
  final Note? note;

  const AddEditNotePage({
    Key? key,
    this.note,
  }) : super(key: key);
  @override
  _AddEditNotePageState createState() => _AddEditNotePageState();
}

class _AddEditNotePageState extends State<AddEditNotePage> {
  final _formKey = GlobalKey<FormState>();
  late bool isImportant;
  late int number;
  late String title;
  late String description;
  late String descript;

  bool _hasBeenPressed = false;
  @override
  void initState() {
    super.initState();

    isImportant = widget.note?.isImportant ?? false;
    number = widget.note?.number ?? 0;
    title = widget.note?.title ?? '';
    description = widget.note?.description ?? '';
    descript = widget.note?.descript ?? '';
  }

  String result = '0';
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        actions: [buildButton()],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: NoteFormWidget(
                isImportant: isImportant,
                number: number,
                title: title,
                description: description,
                descript: descript,
                onChangedImportant: (isImportant) =>
                    setState(() => this.isImportant = isImportant),
                onChangedNumber: (number) =>
                    setState(() => this.number = number),
                onChangedTitle: (title) => setState(() => this.title = title),
                onChangedDescription: (description) =>
                    setState(() => this.description = description),
                onChangedDescript: (descript) =>
                    setState(() => this.descript = descript),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
              child: Column(children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    //primary: isFormValid ? null : Colors.grey.shade700,
                  ),
                  onPressed: () {
                    _hasBeenPressed = !_hasBeenPressed;
                    setState(() {
                      this.title = title;
                      this.description = description;
                      this.descript = descript;

                      if (description == 'BTC' && descript == 'ETH') {
                        var myInt = int.parse(title);
                        result = (myInt * 13.33).toString();
                      } else if (description == 'BTC' && descript == 'LTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 249.43).toString();
                      } else if (description == 'BTC' && descript == 'FIL') {
                        var myInt = int.parse(title);
                        result = (myInt * 89.62).toString();
                      } else if (description == 'BTC' && descript == 'INR') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'BTC' && descript == 'USD') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'ETH' && descript == 'BTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'ETH' && descript == 'LTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'ETH' && descript == 'FIL') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'ETH' && descript == 'INR') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'ETH' && descript == 'USD') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'LTC' && descript == 'BTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'LTC' && descript == 'FIL') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'LTC' && descript == 'ETH') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'LTC' && descript == 'INR') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'LTC' && descript == 'USD') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'FIL' && descript == 'BTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'FIL' && descript == 'LTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'FIL' && descript == 'ETH') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'FIL' && descript == 'INR') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'FIL' && descript == 'USD') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'FIL' && descript == 'BTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'INR' && descript == 'LTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'INR' && descript == 'ETH') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'INR' && descript == 'FIL') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'INR' && descript == 'USD') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'USD' && descript == 'BTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'USD' && descript == 'LTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'USD' && descript == 'ETH') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'USD' && descript == 'INR') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else if (description == 'USD' && descript == 'FIL') {
                        var myInt = int.parse(title);
                        result = (myInt * 3529850.45).toString();
                      } else {
                        result = "Give a Correct Input";
                      }
                      if (description == 'BTC') {
                        var myInt = int.parse(title);
                        result = (myInt * 2).toString();
                      }
                    });
                  },
                  child: Text('calculate'),
                ),
                new Text(
                  result,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ));

  Widget buildButton() {
    final isFormValid =
        title.isNotEmpty && description.isNotEmpty && descript.isNotEmpty;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: isFormValid ? null : Colors.grey.shade700,
            ),
            onPressed: addOrUpdateNote,
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void addOrUpdateNote() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final isUpdating = widget.note != null;

      if (isUpdating) {
        await updateNote();
      } else {
        await addNote();
      }

      Navigator.of(context).pop();
    }
  }

  Future updateNote() async {
    final note = widget.note!.copy(
      isImportant: isImportant,
      number: number,
      title: title,
      description: description,
      descript: descript,
    );

    await NotesDatabase.instance.update(note);
  }

  Future addNote() async {
    final note = Note(
      title: title,
      isImportant: true,
      number: number,
      description: description,
      descript: descript,
      createdTime: DateTime.now(),
    );

    await NotesDatabase.instance.create(note);
  }
}
