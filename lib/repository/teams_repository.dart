import 'package:brasileirao_flutter/models/team.dart';
import 'package:brasileirao_flutter/models/title.dart';
import 'package:flutter/material.dart';

class TeamsRepository {
  final List<Team> _teams = [];

  get teams => this._teams;

  void addTitle({Team team, Titulo title}) {
    team.titles.add(title);
  }

  TeamsRepository() {
    _teams.addAll([
      Team(
        name: 'Flamengo',
        points: 71,
        shield: 'https://logodetimes.com/times/flamengo/logo-flamengo-256.png',
        cor: Colors.red[900],
      ),
      Team(
        name: 'Internacional',
        points: 69,
        shield:
            'https://logodetimes.com/times/internacional/logo-internacional-256.png',
        cor: Colors.red[900],
      ),
      Team(
        name: 'Atlético-MG',
        points: 65,
        shield:
            'https://logodetimes.com/times/atletico-mineiro/logo-atletico-mineiro-256.png',
        cor: Colors.grey[800],
      ),
      Team(
        name: 'São Paulo',
        points: 63,
        shield:
            'https://logodetimes.com/times/sao-paulo/logo-sao-paulo-256.png',
        cor: Colors.red[900],
      ),
      Team(
        name: 'Fluminense',
        points: 61,
        shield:
            'https://logodetimes.com/times/fluminense/logo-fluminense-256.png',
        cor: Colors.teal[800],
      ),
      Team(
        name: 'Grêmio',
        points: 59,
        shield: 'https://logodetimes.com/times/gremio/logo-gremio-256.png',
        cor: Colors.blue[900],
      ),
      Team(
        name: 'Palmeiras',
        points: 58,
        shield:
            'https://logodetimes.com/times/palmeiras/logo-palmeiras-256.png',
        cor: Colors.green[800],
      ),
      Team(
        name: 'Santos',
        points: 54,
        shield: 'https://logodetimes.com/times/santos/logo-santos-256.png',
        cor: Colors.grey[800],
      ),
      Team(
        name: 'Athletico-PR',
        points: 50,
        shield:
            'https://logodetimes.com/times/atletico-paranaense/logo-atletico-paranaense-256.png',
        cor: Colors.red[900],
      ),
      Team(
        name: 'corinthians',
        points: 50,
        shield:
            'https://logodetimes.com/times/corinthians/logo-corinthians-256.png',
        cor: Colors.grey[800],
      ),
      Team(
        name: 'Bragantino',
        points: 50,
        shield:
            'https://logodetimes.com/times/red-bull-bragantino/logo-red-bull-bragantino-256.png',
        cor: Colors.grey[800],
      ),
      Team(
        name: 'Ceará',
        points: 49,
        shield: 'https://logodetimes.com/times/ceara/logo-ceara-256.png',
        cor: Colors.grey[800],
      ),
      Team(
        name: 'Atlético-GO',
        points: 47,
        shield:
            'https://logodetimes.com/times/atletico-goianiense/logo-atletico-goianiense-256.png',
        cor: Colors.red[900],
      ),
      Team(
        name: 'Sport',
        points: 42,
        shield:
            'https://logodetimes.com/times/sport-recife/logo-sport-recife-256.png',
        cor: Colors.red[900],
      ),
      Team(
        name: 'Bahia',
        points: 41,
        shield: 'https://logodetimes.com/times/bahia/logo-bahia-256.png',
        cor: Colors.blue[900],
      ),
      Team(
        name: 'Fortaleza',
        points: 41,
        shield:
            'https://logodetimes.com/times/fortaleza/logo-fortaleza-256.png',
        cor: Colors.red[900],
      ),
      Team(
        name: 'Vasco',
        points: 38,
        shield:
            'https://logodetimes.com/times/vasco-da-gama/logo-vasco-da-gama-256.png',
        cor: Colors.grey[800],
      ),
      Team(
        name: 'Goiás',
        points: 37,
        shield: 'https://logodetimes.com/times/goias/logo-goias-novo-256.png',
        cor: Colors.green[900],
      ),
      Team(
        name: 'coritiba',
        points: 31,
        shield: 'https://logodetimes.com/times/coritiba/logo-coritiba-5.png',
        cor: Colors.green[900],
      ),
      Team(
        name: 'Botafogo',
        points: 27,
        shield: 'https://logodetimes.com/times/botafogo/logo-botafogo-256.png',
        cor: Colors.grey[800],
      ),
    ]);
  }
}
