import 'package:flutter/material.dart';
import 'package:meu_primeiro_app/widgets/app-bar/app-bar.widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Prinmeiro App',
      home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primaryColor: Colors.purple,
          scaffoldBackgroundColor: Colors.purpleAccent,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.purpleAccent)),
      darkTheme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.grey,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.grey)),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBarCounterWidget(),
        preferredSize: Size.fromHeight(50),
      ),
      body: Center(
        child: Text(
          'Contagem: $count',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
