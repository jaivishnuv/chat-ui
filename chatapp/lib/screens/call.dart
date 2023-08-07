import 'package:chatapp/models/calls.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: vishnuDataCall.length,
        itemBuilder: (BuildContext context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage(vishnuDataCall[i].dp),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        vishnuDataCall[i].name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      const Icon(
                        Icons.call,
                        size: 20,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  subtitle: Text(vishnuDataCall[i].time),
                ),
              ],
            ));
  }
}
