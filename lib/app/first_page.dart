import 'package:capitalsgame/app/second_page.dart';
import 'package:capitalsgame/components/lands.dart';
import 'package:capitalsgame/models/continents.dart';
import 'package:capitalsgame/utils/colors.dart';
import 'package:capitalsgame/utils/text.dart';
import 'package:flutter/material.dart';

class Countries extends StatefulWidget {
  const Countries({Key? key}) : super(key: key);

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgr,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.backgr,
        title: const Text(
          AppText.gametitle,
          style: TextStyle(color: AppColors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            height: 3,
            color: AppColors.black,
            indent: 35,
            endIndent: 35,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: continents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return MainLands(
                  item: continents[index],
                  onTap: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => TestPage(
                          answer: continents[index].quest!,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
