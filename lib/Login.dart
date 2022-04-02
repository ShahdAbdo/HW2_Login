import 'package:flutter/material.dart';
import 'Home.dart';
import 'Sign up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
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
    var nameController;
    var passwordController;
    return Scaffold(
     appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color.fromARGB(255, 252, 252, 252),
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home ()));
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),
        ),),

      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log in to your account',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(  height: 20,),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password?',),
            ),
            SizedBox(  height: 30,),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            SizedBox(  height: 30,),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
                           Container(
          width: 200,
          height: 200,
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP2IBa4xATD8wMsTCBFUW0e7DdE0UsLYyIYg&usqp=CAU'),
        ),
            
            //      Container(
            //   width: 150,
            //   height: 150,
            //   child: const CircleAvatar(
            //     backgroundImage: NetworkImage('https://st3.depositphotos.com/1007566/13175/v/600/depositphotos_131750410-stock-illustration-woman-female-avatar-character.jpg'),),
            // ),
          ],
        ))
      );
  }
}