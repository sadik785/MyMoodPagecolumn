import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('My Mood'),
          backgroundColor: Colors.black26,
        ),
      body: MyMoodPage(),
      ),
    );
  }
}

class MyMoodPage extends StatefulWidget {
  const MyMoodPage({super.key});

  @override
  State<MyMoodPage> createState() => _MyMoodPageState();
}

class _MyMoodPageState extends State<MyMoodPage> {
  String myCurrentMood = 'happy';
  void changeMyMood(String mood){
    setState(() {
      myCurrentMood = mood;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(30.0),
          child: Image.asset(
            'images/$myCurrentMood.png',
          fit: BoxFit.fitHeight,
            height: 100,
            width: 100,
          ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Padding(
                    padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black26,
                  ),
                  child: Text('Happy'),
                  onPressed: () {
                    changeMyMood("happy");
                  },
                ),
                ),
                Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26,
                ),
                child: Text('Sad'),
                onPressed: () {
                changeMyMood("sad");
                },
                ),
                ),
                Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26,
                ),
                child: Text('Angry'),
                onPressed: () {
                changeMyMood("angry");
                },
                ),
                ),
                Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26,
                ),
                child: Text('Romantic'),
                onPressed: () {
                changeMyMood("romantic");
                },
                ),
                ),
    Padding(
    padding: const EdgeInsets.all(5.0),
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black26,
    ),
    child: Text('Laughing'),
    onPressed: () {
    changeMyMood("laughing");
    },
    ),
    ),
              ],
            ),
        ],
      ),
    );
  }
}
