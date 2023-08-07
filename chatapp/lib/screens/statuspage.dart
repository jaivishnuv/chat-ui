import 'package:chatapp/models/status.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: vishnuDatastatus.length,
        itemBuilder: (BuildContext context, i) => Column(
              children: [
                const Divider(height: 20.0),
                ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage(vishnuDatastatus[i].dp),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        vishnuDatastatus[i].name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  subtitle: Text(vishnuDatastatus[i].time),
                ),
              ],
            ));
  }
}
