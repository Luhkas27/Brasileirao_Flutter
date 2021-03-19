import 'package:brasileirao_flutter/controller/home_controller.dart';
import 'package:brasileirao_flutter/models/team.dart';
import 'package:brasileirao_flutter/pages/team_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brasileirão'),
      ),
      body: ListView.separated(
        itemCount: controller.table.length,
        itemBuilder: (BuildContext context, int team) {
          final List<Team> table = controller.table;
          return ListTile(
            leading: Image.network(table[team].shield),
            title: Text(table[team].name),
            trailing: Text(table[team].points.toString()),
            onTap: () => (Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => TeamPage(
                  key: Key(table[team].name),
                  team: table[team],
                ),
              ),
            )),
          );
        },
        separatorBuilder: (_, __) => Divider(),
        padding: EdgeInsets.all(16),
      ),
    );
  }
}
