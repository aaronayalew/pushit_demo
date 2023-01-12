import 'package:flutter/material.dart';
import 'package:pushit_demo/views/videos.dart';

class EntrancePage extends StatefulWidget {
  const EntrancePage({
    super.key,
  });

  @override
  State<EntrancePage> createState() => _EntrancePageState();
}

class _EntrancePageState extends State<EntrancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pushit Demo",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Aaron Ayalew",
                style: TextStyle(fontSize: 60),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const VideosPage()));
                  },
                  child: const Text("Go to videos page >>"))
            ],
          ),
        ),
      ),
    );
  }
}
