import 'package:capitalsgame/components/appbar_second.dart';
import 'package:capitalsgame/components/cities.dart';
import 'package:capitalsgame/components/slider_s.dart';
import 'package:capitalsgame/models/models.dart';
import 'package:capitalsgame/utils/colors.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key, required this.answer}) : super(key: key);
  final List<Question> answer;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int correctansw = 0;
  int wrongansw = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgr,
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.backgr,
        title: SPAppBar(
          correctansw: correctansw,
          wrongansw: wrongansw,
        ),
      ),
      body: Column(
        children: [
          SPslidder(
            value: index,
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            widget.answer[index].text,
            style: const TextStyle(fontSize: 28),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Image.asset(
                  'assets/images/${widget.answer[index].image}.jpeg'),
            ),
          ),
          OptionButtons(
            answ: widget.answer[index].answers,
            onTap: (itsTrue) {
              if (index + 1 == widget.answer.length) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Your resultats'),
                    content: Text(' correct - $correctansw,wrong - $wrongansw'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              index = 0;
                              correctansw = 0;
                              wrongansw = 0;
                            });
                            Navigator.pop(context, 'Cancel');
                          },
                          child: const Text('Cancel'))
                    ],
                  ),
                );
              } else {
                if (itsTrue == true) {
                  correctansw++;
                } else {
                  wrongansw++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
