import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  void showToast(){
  Fluttertoast.showToast(
    msg: 'This is toast notification',
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.red,
    textColor: Colors.yellow
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My first example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Welcome to our mobile programming'),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'List View'),
                  Tab(text: 'Grid View'),
                  Tab(text: 'Card'),
                  Tab(text: 'Toast Notification'),
                ],
              ),
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: UserAccountsDrawerHeader(
                      accountName: const Text("Abdullo"),
                      accountEmail: const Text("abdullo.kadridinov@kimep.kz"),
                      currentAccountPicture: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,color: Colors.yellow
                        )
                      ),),
                    ),
                  ListTile(
                    title: Text("About me"),
                    leading: Icon(Icons.account_box),
                  ),
                  ListTile(
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                  )
                ],
            ),),
            body: TabBarView(
              children: [
                _buildListView(),
                _buildGridView(),
                buildCard(),
              ],
            ),
          ),
        ));
  }

  Widget _buildListView() {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.list),
          title: const Text('Hello World 1'),
        ),
        ListTile(
          leading: const Icon(Icons.list),
          title: const Text('Hello World 2'),
        ),
        ListTile(
          leading: const Icon(Icons.list),
          title: const Text('Hello World 3'),
        ),
        ListTile(
          leading: const Icon(Icons.list),
          title: const Text('Hello World 4'),
        ),
        ListTile(
          leading: const Icon(Icons.list),
          title: const Text('Hello World 5'),
        ),
      ],
    );
  }

  Widget _buildGridView() {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Image.network(
          'https://timesofindia.indiatimes.com/travel/destinations/paris-in-pictures/photostory/45454098.cms',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://www.planetware.com/pictures/france-f.htm',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://www.vecteezy.com/free-photos/beautiful-picture',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://www.planetware.com/pictures/canada-cdn.htm',
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget buildCard() {
    return Center(
      child: Container(
        height: 300,
        padding: EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.red,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album, size: 60),
                title: Text(
                  'Wlcome to our mobile programming,',
                  style: TextStyle(fontSize: 30.0),
                ),
                subtitle: Text(
                  'Hello World',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: showToast,
                    child: Text("Button 1"),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text("Button 2"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




