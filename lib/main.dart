import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Form Containing Fields'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var schoolName = TextEditingController();
  var phoneNo = TextEditingController();
  var schoolWebsite = TextEditingController();
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: schoolName,
                decoration: InputDecoration(
                  hintText: 'School Name',
                  focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
          borderSide: BorderSide(
              color: Colors.amberAccent,
            width: 2
          )
                  ),
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2
                    )
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2
                  )
                ),

              ),
    ),
              Container(height: 11,),
              TextField(
                controller: schoolWebsite,
                decoration: InputDecoration(
                  hintText: 'School Website',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.amberAccent,
                          width: 2
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      )
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2
                      )
                  ),

                ),
              ),
              Container(height: 11,),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Email',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.amberAccent,
                          width: 2
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      )
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2
                      )
                  ),

                ),
              ),
               Container(height: 11,),
                TextField(
                  controller: phoneNo,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            color: Colors.amber,
                          width: 2
                        )
                    ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      )
                  ),

                ),
              ),
              Container(height: 11,),
              ElevatedButton(onPressed: (){
                String uSchool = schoolName.text.toString();
                String uPhoneNo = phoneNo.text.toString();
                String uSchoolWebsite = schoolWebsite.text.toString();
                String uEmail = email.text.toString();
                print("School: $uSchool, Phone: $uPhoneNo, $uSchoolWebsite, $uEmail");
    }, child: Text(
                'Login'
              ))
              ],
          )))

    );
  }
}
