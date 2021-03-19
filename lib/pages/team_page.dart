import 'package:flutter/material.dart';

import 'package:brasileirao_flutter/models/team.dart';

class TeamPage extends StatefulWidget {
  Team team;

  TeamPage({Key key, this.team}) : super(key: key);

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.team.cor,
          title: Text(widget.team.name),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.stacked_line_chart),
                text: 'Estatísticas',
              ),
              Tab(
                icon: Icon(Icons.emoji_events),
                text: 'Títulos',
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Image.network(
                      widget.team.shield.replaceAll('40x40', '100x100')),
                ),
                Text(
                  'Pontos: ${widget.team.points}',
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
            titles()
          ],
        ),
      ),
    );
  }

  Widget titles() {
    final quantity = widget.team.titles.length;

    return quantity == 0
        ? Container(
            child: Center(
              child: Text('Nenhum título ainda!!!'),
            ),
          )
        : ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text(widget.team.titles[index].championship),
              );
            },
            separatorBuilder: (_, __) => Divider(),
            itemCount: quantity,
          );
  }
}
