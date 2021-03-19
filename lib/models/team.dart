import 'package:flutter/material.dart';
import 'title.dart';

class Team {
  String name;
  String shield;
  int points;
  Color cor;
  List<Titulo> titles = [];

  Team({
    this.name,
    this.shield,
    this.points,
    this.cor,
  });
}
