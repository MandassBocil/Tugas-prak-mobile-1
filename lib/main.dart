import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen')
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 35,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Form(
                child: Column(
                  children: [

                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {

                      },
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter email' : null;
                      },
                    ),

                    SizedBox(height: 15,),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value) {

                        },
                        validator: (value) {
                          return value!.isEmpty ? 'Please enter password' : null;
                        },
                      ),
                    ),

                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Text('Log in'),
                        color: Colors.blue,
                        textColor: Colors.white,
                      ),
                    ),

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );


  }
}

