import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: const Text("Login"),
            backgroundColor: Colors.pinkAccent,
            leading: const Icon(Icons.code),
            centerTitle: true
        ),

        body: Form(
            child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Email Address",
                      ),
                      keyboardType: TextInputType.emailAddress
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                        labelText: "Password"
                    ),
                    obscureText: true,
                  ),

                  const SizedBox(height:25),

                  ElevatedButton(
                      onPressed: (){
                        print('email:${emailController.text}'); //print on console into text
                        print('password:${passwordController.text}'); //print on console into text
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pinkAccent,
                          padding: const EdgeInsets.all(20),
                          shape: RoundedRectangleBorder( //to set border radius to button
                            borderRadius: BorderRadius.circular(30)
                          ),
                      ),

                      child: const Text("Submit",
                          style: TextStyle(fontWeight: FontWeight.bold))
                  )
                ]
            )
        )
    );
  }
}
