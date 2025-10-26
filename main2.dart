import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();


  String displayText = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Input Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Input & Display'),
          backgroundColor:Colors.deepPurpleAccent
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextField where user types text
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter something...',
                ),
              ),

              const SizedBox(height: 20), // adds vertical space

              // Button that updates the text when pressed
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // setState tells Flutter to rebuild the UI with updated data
                    displayText = _controller.text; // store input in displayText
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // button color

                ),
                child: const Text(
                  'Show Text',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),

              const SizedBox(height: 30),

              // Display the text that was entered
              Text(
                displayText.isEmpty ? 'Your text will appear here!': displayText,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}