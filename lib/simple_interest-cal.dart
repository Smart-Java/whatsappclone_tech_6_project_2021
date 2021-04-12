import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  @override
  _SimpleInterestState createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  var _listTime = ['Seconds', 'Minuets', 'Hours', 'Days', 'Months', 'Years'];

  var _minutes = 60;

  var _hours = 60 * 60;

  var _days = 24 * 60 * 60;

  var _months = 30 * 24 * 60 * 60;

  var _years = 12 * 30 * 24 * 60 * 60;

  var _listCurrency = ['Naria', 'Dollar', 'Pounds', 'Euro'];

  var _principalController = TextEditingController();

  var _timeController = TextEditingController();

  var _principalText;
  var _timeText;

  var _time;

  var _currency;

  var _initialValue = 10.0;
  var _maxValue = 100.0;
  var _minValue = 0.0;
  var _division = 10;

  var _answer;
  double _principalValue;
  double _timeValue;
  double _result;


  void solve(){
    _principalValue = double.parse(_principalText);
    _timeValue = double.parse(_timeText);
    if(_time == _listTime[0]){
      _result = (_principalValue * _timeValue * _initialValue) / 100;
    } else if(_time == _listTime[1]){
      _result = (_principalValue * _timeValue* _minutes * _initialValue) / 100;
    } else if(_time == _listTime[2]){
      _result = (_principalValue * _timeValue* _hours * _initialValue) / 100;
    } else if(_time == _listTime[3]) {
      _result = (_principalValue * _timeValue * _days * _initialValue) / 100;
    } else if(_time == _listTime[4]) {
      _result = (_principalValue * _timeValue * _months * _initialValue) / 100;
    } else{
      _result = (_principalValue * _timeValue * _years * _initialValue) / 100;
    }

    setState((){
      _answer = '$_result';
    });
  }

  void reset(){
    setState((){
      _principalController.text = '';
      _timeController.text = '';
      _answer = '0.0';
      _initialValue = 0.0;
    });
  }
  @override
  void initState() {
    _answer = '0.0';
    _principalText = _principalController.text;
    _timeText = _timeController.text;
    _time = _listTime[0];
    _currency = _listCurrency[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 200.0,
                height: 150.0,
                child: Icon(
                  Icons.account_balance,
                  color: Colors.blue,
                  size: 150,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                TextField(
                  controller: _principalController,
                  onChanged: (value){
                    setState((){
                      _principalText = value;
                    });
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.monetization_on,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    helperText: '1000',
                    labelText: 'Principal',
                    hintText: '1000',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _timeController,
                  onChanged: (value){
                    setState((){
                      _timeText = value;
                    });
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.access_time,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    helperText: '10 seconds',
                    labelText: 'Time',
                    hintText: '10 sec',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton<String>(
                    value: _time,
                    items: [
                      ..._listTime.map((time) {
                        return DropdownMenuItem<String>(
                          child: Text(time),
                          value: time,
                        );
                      }).toList(),
                    ],
                    onChanged: (value){
                      setState((){
                        _time = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton<String>(
                    value: _currency,
                    items: [
                      ..._listCurrency.map((currency) {
                        return DropdownMenuItem<String>(
                          child: Text(currency),
                          value: currency,
                        );
                      }).toList(),
                    ],
                    onChanged: (value){
                      setState((){
                        _currency = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: _initialValue,
                        divisions: _division,
                        min: _minValue,
                        max: _maxValue,
                        onChanged: (value){
                          setState((){
                            _initialValue = value;
                            if(_principalValue != null && _timeValue != null && _initialValue != null){
                              _answer = (_principalValue * _timeValue * _initialValue) / 100;
                            }else{
                              _answer = '0.0';
                            }
                          });
                        },
                      ),
                    ),
                    Text('$_initialValue'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RaisedButton(
                      onPressed: () => solve(),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text('Solve'),
                    ) ,
                    RaisedButton(
                      onPressed: () => reset(),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text('Reset'),
                    ) ,
                  ],
                ),
                Text('The Answer is : $_answer'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
