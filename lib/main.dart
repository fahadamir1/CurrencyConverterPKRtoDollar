import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var number1 = 0.0;
  TextEditingController text1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Currency Converter App",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("PKR :",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  Text(
                      "${number1 != 0 ? number1.toStringAsFixed(2) : number1.toStringAsFixed(0)}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 5, 255, 18),
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: text1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: "Enter Value to Convert",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(66)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (text1.text.isNotEmpty) {
                      number1 = double.parse(text1.text) * 306.69;
                    } else {
                      return;
                    }
                  });
                },
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(55)),
                      color: Colors.black),
                  child: const Center(
                    child:
                        Text("Convert", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
