import 'package:capitalsgame/models/africa.dart';
import 'package:capitalsgame/models/asia.dart';
import 'package:capitalsgame/models/australia.dart';
import 'package:capitalsgame/models/europe.dart';
import 'package:capitalsgame/models/north_america.dart';
import 'package:capitalsgame/models/south_america.dart';

class Question {
  const Question({
    required this.text,
    required this.image,
    required this.answers,
  });

  final String text;
  final String image;
  final List<Answ> answers;
}

class Answ {
  const Answ({required this.city, this.itsTrue = false});

  final String city;
  final bool itsTrue;
}

List<Question> asiaQue = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11];

List<Question> europeQue = [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10];

List<Question> naQue = [na1, na2, na3, na4, na5, na6, na7, na8];

List<Question> saQue = [sa1, sa2, sa3, sa4, sa5, sa6, sa7, sa8, sa9, sa10];

List<Question> afQue = [
  af1,
  af2,
  af3,
  af4,
  af5,
  af6,
  af7,
  af8,
  af9,
  af10,
  af11
];

List<Question> auvQue = [au1, au2, au3, au4, au5, au6, au7];





// const au8 = Question(
//   text:'', 
//   image:'',
//   answers:[
//     Answ(city: ''),
//     Answ(city: ''),
//     Answ(city: ''),
//     Answ(city: ''),
//   ],
// );

