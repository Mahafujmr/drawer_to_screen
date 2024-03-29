import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selected = 0;
  void changeSelected(int index){
    setState(() {
      _selected = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Navigation Drawer",
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          "My Page",
          style: TextStyle(fontSize: 30),
        ),
      ),
      drawer: Container(
        width: 360,
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('images/tuhin1.jpg'),
                  fit: BoxFit.cover,
                )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/tuhin.JPEG'),
                      radius: 40,
                    ),
                    Text(
                      "M R Tuhin",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          "tuhinmahafuj555@gmail.com",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                selected: _selected == 0 ,
                leading: Icon(
                  Icons.folder,
                  size: 28,
                ),
                title: Text(
                  "My File",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  changeSelected(0);
                },
              ),
              ListTile(
                selected: _selected == 1 ,
                leading: Icon(
                  Icons.share,
                  size: 28,
                ),
                title: Text(
                  "Share",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  changeSelected(1);
                },
              ),
              ListTile(
                selected: _selected == 2 ,
                leading: Icon(
                  Icons.account_box_sharp,
                  size: 28,
                ),
                title: Text(
                  "Contact",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  changeSelected(2);
                },
              ),
                new Divider(
                  thickness: 3,
                  indent: 10,
                  endIndent: 10,
                ),
              ListTile(
                selected: _selected == 3 ,
                leading: Icon(
                  Icons.file_upload,
                  size: 28,
                ),
                title: Text(
                  "Upload",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  changeSelected(3);
                },
              ),
              ListTile(
                selected: _selected == 4 ,
                leading: Icon(
                  Icons.account_box,
                  size: 28,
                ),
                title: Text(
                  "My Account",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  changeSelected(4);
                },
              ),
              ListTile(
                selected: _selected == 5 ,
                leading: Icon(
                  Icons.settings,
                  size: 28,
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  changeSelected(5);
                },
              ),
              new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                selected: _selected == 6 ,
                leading: Icon(
                  Icons.info,
                  size: 28,
                ),
                title: Text(
                  "About",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  changeSelected(6);
                },
              ),
              ListTile(
                selected: _selected == 7 ,
                leading: Icon(
                  Icons.logout,
                  size: 28,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  changeSelected(7);
                },
              ),


            ],
          ),
        ),
      ),
    );
  }
}
