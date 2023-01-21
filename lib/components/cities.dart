import 'package:capitalsgame/models/models.dart';
import 'package:capitalsgame/utils/colors.dart';
import 'package:flutter/material.dart';

class OptionButtons extends StatelessWidget {
  const OptionButtons({Key? key, required this.answ, required this.onTap})
      : super(key: key);

  final List<Answ> answ;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.3,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.backgr,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColors.cardCl,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: InkWell(
              onTap: () {
                onTap(answ[index].itsTrue);
              },
              child: Center(
                child: Text(
                  answ[index].city,
                  style: const TextStyle(fontSize: 22),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
