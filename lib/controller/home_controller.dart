import 'package:brasileirao_flutter/models/team.dart';
import 'package:brasileirao_flutter/repository/teams_repository.dart';

class HomeController {
  TeamsRepository teamsRepository;

  List<Team> get table => teamsRepository.teams;

  HomeController() {
    teamsRepository = TeamsRepository();
  }
}
