import 'dart:io';
import 'dart:math';

enum game_choose { rock, paper, scissor }

void main() {

  var total_wins_user = 0 ;

  var total_wins_computer = 0;

  var same_draw = 0;

  while (true) {

    var user;

    print(
        'Choose One Of These To Win game \nRock     🪨  \nPaper    🧻\nscissor  ✂️\n quit     🔚\n');

    var input = stdin.readLineSync();

    if (input == 'rock') {

      user = game_choose.rock;

    } else if (input == 'paper') {

      user = game_choose.paper;

    } else if (input == 'scissor') {

      user = game_choose.scissor;

    } else if (input == 'quit') {

      break;

    } else {

      print('invalid option');

    }

    final computer = Random().nextInt(3);

    final value_random = game_choose.values[computer];


    print('computer move to : ${value_random}');

    print('user move to : ${user}');

    if (user == game_choose.rock && value_random == game_choose.paper) {

      total_wins_computer += 1;

      print('Computer Win');

    } else if (user == game_choose.paper && value_random == game_choose.rock) {

      total_wins_user += 1;

      print('User Win');

    } else if (user == game_choose.paper && value_random == game_choose.scissor) {

      total_wins_computer += 1;

      print('Computer Win');

    } else if (user == game_choose.scissor && value_random == game_choose.paper) {

      total_wins_user += 1;

      print('User Win');

    } else if (user == game_choose.rock && value_random == game_choose.scissor) {

      total_wins_user += 1;

      print('User Win');

    } else if (user == game_choose.scissor && value_random == game_choose.rock) {

      total_wins_computer +=1;

      print('Computer Win');

    } else if (user == game_choose.scissor &&
        value_random == game_choose.scissor ||
        user == game_choose.rock && value_random == game_choose.rock ||
        user == game_choose.paper && value_random == game_choose.paper) {

      same_draw += 1;

      print('Draw');

    } else {

      print('something wrong');

    }
    print('User  Wins : ${total_wins_user} Loses : ${total_wins_computer} Draws : ${same_draw}}');
    
    print('Computer Wins : ${total_wins_computer} Loses : ${total_wins_user} Draws : ${same_draw}}');

    print('\n');
  }

}
