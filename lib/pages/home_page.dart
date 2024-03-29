import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/call_page.dart';
import 'package:whatsapp_ui/pages/chat_page.dart';
import 'package:whatsapp_ui/pages/status_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Color.fromARGB(255, 6, 51, 6),
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        // title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              print('Search Button Clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: () {
              print('Three Dot Button Clicked');
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text('Camera'),
          ChatPage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('Open Chat'));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () => print('Open Camera'));
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          onPressed: () => print('Open Call'));
    } else {
      return null;
    }
  }
}
