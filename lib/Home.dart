import 'package:flutter/material.dart';

import 'Login.dart';
import 'Sign up.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({Key? key, required this.title}) : super(key: key);

   final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: ListView(
          children: <Widget>[
            SizedBox(  height: 20,),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
                  Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome to flutter class',
                  style: TextStyle(fontSize: 20),
                )),
               SizedBox(  height: 50,),
       Container(
          width: 200,
          height: 200,
          child: Image.network(
              'https://st3.depositphotos.com/1007566/13175/v/600/depositphotos_131750410-stock-illustration-woman-female-avatar-character.jpg'),),
            //    Container(
            //   width: 150,
            //   height: 150,
            //   child: const CircleAvatar(
            //     backgroundImage: NetworkImage('https://st3.depositphotos.com/1007566/13175/v/600/depositphotos_131750410-stock-illustration-woman-female-avatar-character.jpg'),),
            // ),
           
            SizedBox(  height: 50,),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>  LoginPage()));
                  },
                )
            ),
            SizedBox(  height: 30,),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Sign up'),
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                  },
                )
            ),
          ],
        ))
      );
  }
}