import 'package:calculator/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Calculator());
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calbutton(String txt, Color col, Color txtcolor) {
    return ElevatedButton(
      child: Text(
        txt,
        style: TextStyle(fontSize: 35, color: txtcolor),
      ),
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(col),
        minimumSize: MaterialStateProperty.all(const Size(80, 80)),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (_) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50));
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '0',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Style.colors.white,
                        fontSize: 100,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calbutton('AC', Style.colors.grey, Style.colors.black),
                  calbutton('+/-', Style.colors.grey, Style.colors.black),
                  calbutton('%', Style.colors.grey, Style.colors.black),
                  calbutton('/', Style.colors.orange, Style.colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calbutton('7', Style.colors.darkgrey, Style.colors.white),
                  calbutton('8', Style.colors.darkgrey, Style.colors.white),
                  calbutton('9', Style.colors.darkgrey, Style.colors.white),
                  calbutton('x', Style.colors.orange, Style.colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calbutton('4', Style.colors.darkgrey, Style.colors.white),
                  calbutton('5', Style.colors.darkgrey, Style.colors.white),
                  calbutton('6', Style.colors.darkgrey, Style.colors.white),
                  calbutton('-', Style.colors.orange, Style.colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  calbutton('1', Style.colors.darkgrey, Style.colors.white),
                  calbutton('2', Style.colors.darkgrey, Style.colors.white),
                  calbutton('3', Style.colors.darkgrey, Style.colors.white),
                  calbutton('+', Style.colors.orange, Style.colors.white),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Style.colors.darkgrey),
                      minimumSize:
                          MaterialStateProperty.all(const Size(180, 80)),
                      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                        (_) {
                          return RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50));
                        },
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 110),
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                  ),
                  calbutton(',', Style.colors.darkgrey, Style.colors.white),
                  calbutton('=', Style.colors.orange, Style.colors.white),
                ],
              )
            ],
          ),
        ));
  }
}
