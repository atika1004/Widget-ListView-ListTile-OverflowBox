import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _counter = 0;
  int _selectedIndex = 1;

  final List kata = [
    "Hari ini kuliah mobile lanjut",
    "Besok kuliah pemrograman web",
    "Lusa libur kuliah",
    "Hari ini ada jadwal kuliah baru",
    "Hari ini libur nasional",
    "Lusa kuliah pengenalan pola",
    "Hari ini kuliah mobile",
    "Hari selasa kuliah PKN",
    "Hari minggu libur",
    "Besok hari minggu",
    "Lusa tanggal 11",
    "Kemarin hari jumat",
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      primarySwatch: Colors.red),
      home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: <Widget>[
              Text("List View"),
              Text("List Tile"),
              Text("Overflow Box"),
            ]),
            title: Text("Widget List")),
          
          body: TabBarView(children: <Widget>[
            //listview
            ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(kata[index], style: TextStyle(fontSize: 22)),),
                );
              },
              itemCount: kata.length,),

            //listtile
            ListView(
              children: [
                ListTile(
                  title: Text("Jeremmy Hesa"),
                  subtitle: Text("Ini pesan"),
                  leading: CircleAvatar(),
                  trailing: Text("21.00 PM"),
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  title: Text("Atika Istiqomah"),
                  subtitle: Text("Ini pesan"),
                  leading: CircleAvatar(),
                  trailing: Text("21.00 PM"),
                ),
                Divider(color: Colors.black),
                ListTile(
                  title: Text("Kumendan Tommy"),
                  subtitle: Text("Ini pesan"),
                  leading: CircleAvatar(),
                  trailing: Text("21.00 PM"),
                ),
                Divider(
                  color: Colors.black,
                )
              ],
            ),

            //overflow box
            Center(
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.orangeAccent,
                child: Align(
                  alignment: const Alignment(1.0, 1.0),
                  child: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: OverflowBox(
                      minWidth: 0.0,
                      maxWidth: 200.0,
                      minHeight: 0.0,
                      maxHeight: 200.0,
                      child: Container(
                        color: Colors.blue,)
                    )
                  ),
                )
              )
            ,)
          ]),
        )
      ),
    );
  }
}
