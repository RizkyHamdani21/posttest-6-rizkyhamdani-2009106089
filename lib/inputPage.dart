// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String eachExpenses = 'Education';
  var expenses = ['Education', 'Shopping', 'Food & Drinks', 'Entertainment'];

  final nominal = TextEditingController();
  String eachNominal = '';

  final date = TextEditingController();
  String eachDate = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              SizedBox(
                height: 40,
              ),
              DropdownButton(
                  value: eachExpenses,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: expenses.map((String expenses) {
                    return DropdownMenuItem(
                      child: Text(expenses),
                      value: expenses,
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      eachExpenses = newValue!;
                    });
                  }),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: nominal,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.money),
                      labelText: 'Nominal',
                      hintText: 'Nominal',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: IconButton(
                        onPressed: (() {
                          nominal.clear();
                        }),
                        icon: const Icon(Icons.clear),
                      )),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: date,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.date_range),
                      labelText: 'Tanggal',
                      hintText: 'Date : dd//mm//yyyy',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: IconButton(
                        onPressed: (() {
                          date.clear();
                        }),
                        icon: const Icon(Icons.clear),
                      )),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 199, 93, 33),
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    eachDate = date.text;
                    eachNominal = nominal.text;
                  });
                },
                child: Text(
                  'Display',
                  style: TextStyle(
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              Text("\nNominal  : Rp.$eachNominal,00 \n"
                  "Category : $eachExpenses"
                  "\nDate         : $eachDate")
            ])),
      ),
    );
  }
}
