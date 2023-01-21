import 'package:capitalsgame/models/models.dart';
import 'package:capitalsgame/utils/colors.dart';
import 'package:flutter/material.dart';

class SPAppBar extends StatelessWidget {
  const SPAppBar({
    Key? key,
    required this.correctansw,
    required this.wrongansw,
  }) : super(key: key);

  final int correctansw;
  final int wrongansw;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              children: [
                Text(
                  '$correctansw',
                  style: const TextStyle(
                    color: AppColors.green,
                    fontSize: 18,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Text(
                  '$wrongansw',
                  style: const TextStyle(
                    color: AppColors.red,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text('${saQue.length}'),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.favorite,
                    color: AppColors.red,
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(Icons.more_vert),
            )
          ],
        ),
      ],
    );
  }
}
