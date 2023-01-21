import 'package:capitalsgame/models/models.dart';
import 'package:capitalsgame/utils/text.dart';
import 'package:flutter/material.dart';

class Continents {
  const Continents({
    required this.name,
    required this.icon,
    required this.colors,
    this.quest,
  });

  final String name;
  final String icon;
  final Color colors;
  final List<Question>? quest;
}

final europe = Continents(
  name: AppText.europe,
  icon: 'europe',
  colors: const Color(0xFF81A2FE),
  quest: europeQue,
);

final asia = Continents(
  name: AppText.asia,
  icon: 'asia',
  colors: const Color(0xFFFE8181),
  quest: asiaQue,
);

final northAmerica = Continents(
    name: AppText.northAmerica,
    icon: 'north_america',
    colors: const Color(0xFFFEB100),
    quest: naQue);

final southAmerica = Continents(
    name: AppText.southAmerica,
    icon: 'south_america',
    colors: const Color(0xFFE5AAE5),
    quest: saQue);

final africa = Continents(
    name: AppText.africa,
    icon: 'africa',
    colors: const Color(0xFFFEEF35),
    quest: afQue);

final australia = Continents(
    name: AppText.australia,
    icon: 'australia',
    colors: const Color(0xFF6BF783),
    quest: auvQue);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
