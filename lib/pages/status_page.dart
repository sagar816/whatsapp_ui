import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/status_model.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 9, 157, 231),
            backgroundImage: AssetImage('images/p1.jpeg'),
          ),
          title:
              Text('My Status', style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(
            'Tap to add status update',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0), //all this property are of LISTTILE
          ),
          onTap: () {
            print('My Own Status Detail Open');
          },
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recent Updates',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Flexible(
            child: ListView.builder(
                itemCount: statusData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 9, 157, 231),
                              backgroundImage: AssetImage(
                                  statusData[i].avatar ?? 'images/p1.jpeg'),
                            ),
                            title: Text(statusData[i].name,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            subtitle: Text(
                              statusData[i].time,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      15.0), //all this property are of LISTTILE
                            ),
                            onTap: () {
                              print('Status Detail Open');
                            },
                          ),
                          Divider( 
                            height: 10.0,
                          ) 
                      ],
                    ),
                  ),
                )
      ],
    );
  }
}
