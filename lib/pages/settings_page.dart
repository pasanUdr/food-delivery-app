import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.secondary),
            child: Row(
              children: [
                // dark mode txt
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Dark mode",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ),
                //switch to toggle
                CupertinoSwitch(value: false, onChanged: (value) {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
