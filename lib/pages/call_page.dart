import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/call_model.dart';

class CallPage extends StatefulWidget {
  CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: callData.length,
        itemBuilder: (context, i) => Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 9, 157, 231),
                backgroundImage:
                    AssetImage(callData[i].avatar ?? 'images/p1.jpeg'),
              ),
              title: Text(callData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: [
                  Container(
                    child: callData[i].callType,
                  ),
                  Text(
                    callData[i].time,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0), //all this property are of LISTTILE
                  ),
                ],
              ),
              trailing: Icon(
                Icons.call,
                size: 25,
                color: Theme.of(context).primaryColor,
              ),
              onTap: () {
                print('Call Detail Open');
              },
            ),
          ],
        ),
      ),
    );
  }
}
