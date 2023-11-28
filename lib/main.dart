import 'package:flutter/material.dart';
const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

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
                      decoration: InputDecoration(
                        labelText: "Email Address",
                      ),
                      keyboardType: TextInputType.emailAddress
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password"
                    ),
                    obscureText: true,
                  ),

                  const SizedBox(height:25),

                  ElevatedButton(
                      onPressed: (){
                        print("Merry Christmas!");
                      },
                      child: Text("Submit",
                          style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold))
                  )
                ]
            )
        )
    );
  }
}
