import 'package:capitalsgame/utils/colors.dart';
import 'package:flutter/material.dart';

class SPslidder extends StatelessWidget {
  const SPslidder({
    Key? key,
    required this.value,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SliderTheme(
        data: SliderThemeData(
          thumbShape: SliderComponentShape.noThumb,
          overlayShape: SliderComponentShape.noOverlay,
        ),
        child: Slider(
          activeColor: AppColors.activeCl,
          inactiveColor: AppColors.inactive,
          value: value.toDouble(),
          max: 10,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
