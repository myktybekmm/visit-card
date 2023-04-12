// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:m4_sabaktyn_ulandysy/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String email = '';
  String phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff056c5c),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "Тапшырма 4",
              style: TextStyle(color: Colors.black),
            ),
          ),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Мыктыбек Абдуманнапов",
                style: TextStyle(
                  color: Color(0xffF7F9F9),
                  fontSize: 48,
                  fontFamily: "Pacifico-Regular",
                ),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(color: Color(0xffF7F9F9), fontSize: 28),
              ),
              const Divider(
                height: 0,
                thickness: 2,
                indent: 57,
                endIndent: 47.5,
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
              ),
              const SizedBox(
                height: 23.5,
              ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff056c5c),
                      fontWeight: FontWeight.w600),
                  onChanged: (value) {
                    phone = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    focusColor: Colors.white,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff056c5c),
                    fontWeight: FontWeight.w600,
                  ),
                  onChanged: (value) {
                    email = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                      focusColor: Colors.white,
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Icon(
                          Icons.mail,
                          color: Colors.grey,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 3, color: Colors.white),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                  ),
                  onPressed: phone.isEmpty || email.isEmpty
                      ? null
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SecondPage(),
                            ),
                          );
                        },
                  child: const Text(
                    "Start",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
