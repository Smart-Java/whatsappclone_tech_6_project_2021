import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  var list = ['choice', 'choosen', 'taken', 'already'];

  var _initialDate = DateTime.now();

  var _firstDate = DateTime.now().subtract(Duration(days: 12));

  var _lastDate = DateTime.now().add(Duration(days: 19));

  var _selectedNumber = 10.0;

  var _maxValue = 100.0;

  var _minValue = 0.0;

  var _divisionValue = 10;

  var text = '';

  var time = TimeOfDay.now();

  var _timeOfDay = '';
  var selectedValue;

  var change = true;

  var _textController = TextEditingController();

  var _checkbox1 = true;
  var _checkbox2 = false;
  var _checkbox3 = true;

  var _switchValue = true;
  var _switchValue2 = false;

  var _dateOfToday = '';

  @override
  void initState() {
    selectedValue = list[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  keyboardAppearance: Brightness.light,
                  maxLength: 10,
                  decoration: InputDecoration(
                    labelText: 'Number',
                    hintText: '12345',
                    helperText: 'Number is required here',
                    prefixIcon: Icon(Icons.format_list_numbered),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _textController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  keyboardAppearance: Brightness.dark,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Okeke',
                    helperText: 'Name is required here',
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[900]),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          text = _textController.text;
//                       _textController.selection = TextSelection(baseOffset: 0, extentOffset: 3);
                        });
                      },
                      child: Text('Press Me'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        _textController.selection =
                            TextSelection(baseOffset: 0, extentOffset: 3);
                        TextSelection selected = _textController.selection;

                        if (selected != null) {
                          setState(() {
                            text = selected.textInside(_textController.text);
                          });
                        } else {
                          text = 'selection not made';
                        }
                      },
                      child: Text('Press Me TO Select'),
                    ),
                  ],
                ),
                ...list.map((listValue) {
                  return Row(
                    children: [
                      Radio<String>(
                        value: listValue,
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                            print(selectedValue);
                          });
                        },
                      ),
                      Text(listValue),
                    ],
                  );
                }).toList(),
                DropdownButton<String>(
                  value: selectedValue,
                  items: [
                    ...list.map((dropDownValue) {
                      return DropdownMenuItem(
                        child: Text(dropDownValue),
                        value: dropDownValue,
                      );
                    }).toList(),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _checkbox1,
                      onChanged: (value) {
                        setState(() {
                          _checkbox1 = value;
                        });
                      },
                    ),
                    Text('Checkbox 1')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _checkbox2,
                      onChanged: (value) {
                        setState(() {
                          _checkbox2 = value;
                        });
                      },
                    ),
                    Text('Checkbox 2')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _checkbox3,
                      onChanged: (value) {
                        setState(() {
                          _checkbox3 = value;
                        });
                      },
                    ),
                    Text('Checkbox 3')
                  ],
                ),
                Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
                Switch.adaptive(
                    value: _switchValue2,
                    onChanged: (value) {
                      setState(() {
                        _switchValue2 = value;
                      });
                    }),
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        onChanged: (value) {
                          setState(() {
                            _selectedNumber = value;
                          });
                        },
                        divisions: _divisionValue,
                        value: _selectedNumber,
                        max: _maxValue,
                        min: _minValue,
                      ),
                    ),
                    Chip(
                      label: Icon(Icons.delete),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onDeleted: null,
                    ),
                    FittedBox(child: Text('${_selectedNumber.round()}')),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ActionChip(
                        label: Text('Select Date'),
                        onPressed: () {
                          setState(() {
                            showDatePicker(
                                    context: context,
                                    initialDate: _initialDate,
                                    firstDate: _firstDate,
                                    lastDate: _lastDate)
                                .then((value) {
                              if (value != null) {
                                setState(() {
                                  _dateOfToday = value.toIso8601String();
                                });
                              }
                            });
                          });
                        },
                      ),
                    ),
                    Text('Date $_dateOfToday')
                  ],
                ),
                Row(
                  children: [
                    ActionChip(
                      label: Text('Select Time'),
                      onPressed: () {
                        setState(() {
                          showTimePicker(
                            context: context,
                            initialTime: time,
                          ).then((value) {
                            if (value != null) {
                              setState(() {
                                _timeOfDay = value.format(context);
                              });
                            }
                          });
                        });
                      },
                    ),
                    Text('Time: $_timeOfDay'),
                  ],
                ),
                Text('Here is the text: $text'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
