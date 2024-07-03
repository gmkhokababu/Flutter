// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  bool isChecked = false;
  String? g = "";
  String? dd="web";
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "1st Number",
                hintText: "Input Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              // obscureText: true,
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "2nd Number",
                // hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              readOnly: true,
              // obscureText: true,
              controller: t3,
              decoration: InputDecoration(
                labelText: "Result",
                // hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? val) {
                  setState(() {
                    isChecked = val ?? false;
                    Message(isChecked.toString());
                  });
                },
              ),
              Text("Check me"),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                  value: 'female',
                  groupValue: g,
                  onChanged: (String? value) {
                    setState(() {
                      g = value;
                      Message(g.toString());
                    });
                  }),
              Text("Female"),
              Radio<String>(
                  value: 'male',
                  groupValue: g,
                  onChanged: (String? value) {
                    setState(() {
                      g = value;
                      Message(g.toString());
                    });
                  }),
              Text("Male"),
              Radio<String>(
                  value: 'other',
                  groupValue: g,
                  onChanged: (String? value) {
                    setState(() {
                      g = value;
                    });
                  }),
              Text("Other"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: dd,
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    child: Text("Web"),
                    value: "web",
                  ),
                  DropdownMenuItem<String>(
                    child: Text("Image"),
                    value: "image",
                  ),
                  DropdownMenuItem<String>(
                    child: Text("Video"),
                    value: "video",
                  ),
                  DropdownMenuItem<String>(
                    child: Text("MP3"),
                    value: "mp3",
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    dd = value;
                    Message(dd.toString());
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    // t3.text=t1.text+" "+t2.text;
                    var result = int.parse(t1.text) + int.parse(t2.text);
                    t3.text = result.toString();
                    SnackBar s = SnackBar(
                      content: Text(result.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(s);
                  },
                  child: Text(
                    "Add",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    // t3.text=t1.text+" "+t2.text;
                    var result = int.parse(t1.text) - int.parse(t2.text);
                    t3.text = result.toString();
                    SnackBar s = SnackBar(
                      content: Text(result.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(s);
                  },
                  child: Text(
                    "Min",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    // t3.text=t1.text+" "+t2.text;
                    var result = int.parse(t1.text) * int.parse(t2.text);
                    t3.text = result.toString();
                    SnackBar s = SnackBar(
                      content: Text(result.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(s);
                  },
                  child: Text(
                    "Multi",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    // t3.text=t1.text+" "+t2.text;
                    var result = int.parse(t1.text) / int.parse(t2.text);
                    t3.text = result.toString();
                    SnackBar s = SnackBar(
                      content: Text(result.toString()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(s);
                  },
                  child: Text(
                    "Div",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void Message(String m) {
    SnackBar s = new SnackBar(content: Text(m));
    ScaffoldMessenger.of(context).showSnackBar(s);
  }
}
