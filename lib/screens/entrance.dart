import 'package:flutter/material.dart';
import 'package:pushit_demo/screens/videos.dart';

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
      appBar: AppBar(title: const Text("Pushit Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Name: Aaron Ayalew"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => VideosPage()));
                },
                child: const Text("Go to videos page"))
          ],
        ),
      ),
    );
  }
}
