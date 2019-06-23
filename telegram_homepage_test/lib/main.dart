import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  final List<String> _chat = ['Name'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      title: 'Telegram',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Telegram'),
          actions: <Widget>[
            Icon(Icons.search),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: _chat
                  .map(
                    (element) => Card(
                          margin: EdgeInsets.all(0),
                          child: ListTile(
                            title: Text(element),
                            subtitle: Text('Message'),
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.purple,
                              child: Center(
                                child: Text('N'),
                              ),
                            ),
                            trailing: Text('Date,Time'),
                          ),
                        ),
                  )
                  .toList(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _chat.add('New Name');
            });
          },
          child: Icon(Icons.edit),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  'Name Lastname',
                  style: TextStyle(color: Colors.blue),
                ),
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                        radius: 20, child: Center(child: Text('NL'))),
                    title: Text('Name LastName'),
                  ),
                  ListTile(
                      leading: Icon(Icons.add), title: Text('Add Accounnt'))
                ],
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('New Group'),
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('New Secret Chat'),
              ),
              ListTile(
                leading: Icon(Icons.volume_mute),
                title: Text('New Channel'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Contacts'),
              ),
              ListTile(
                leading: Icon(Icons.turned_in_not),
                title: Text('Saved Messages'),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Calls'),
              ),
              ListTile(
                leading: Icon(Icons.group_add),
                title: Text('Invite Friends'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Telegram FAQ'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
