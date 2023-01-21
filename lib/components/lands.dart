import 'package:capitalsgame/models/continents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLands extends StatelessWidget {
  const MainLands({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final Continents item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
           const SizedBox(
              height: 7,
            ),
            Text(item.name),
            Expanded(
              child: SvgPicture.asset(
                'assets/icons/${item.icon}.svg',
                color: item.colors,
              ),
            )
          ],
        ),
      ),
    );
  }
}
