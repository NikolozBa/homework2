import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {

  final random = Random();

  var die = 0;
  var userTotal = 0;
  var compTotal = 0;

  String userAnswer;

  //scores
  var userScore = 0;
  var compScore = 0;

  print("welcome to dice game!\nType 'roll' to play or type 'exit' to end the game");

  while(true){
    userAnswer = stdin.readLineSync();


    if(userAnswer == 'exit'){
      print('----------------');
      print('Game ended.\nFinal score\nYou: $userScore\nComputer: $compScore');
      if(userScore>compScore){
        print('YOU WON');
      }else if(compScore>userScore){
        print('YOU LOST');
      }else{
        print('IT\'S A TIE');
      }
      break;
    }else if(userAnswer == 'roll'){

      print('----------------');
      print('you rolled: ');

      die = random.nextInt(6)+1;
      userTotal+=die;
      print(die);

      die = random.nextInt(6)+1;
      userTotal+=die;
      print('$die\nTotal: $userTotal');


      print('');

      print('computer rolled: ');

      die = random.nextInt(6)+1;
      compTotal+=die;
      print(die);

      die = random.nextInt(6)+1;
      compTotal+=die;
      print('$die\nTotal: $compTotal');

      if(userTotal>compTotal){
        print('You won this round');
        userScore++;
        print('Current Score is $userScore:$compScore');
      }else if(compTotal>userTotal){
        print('You lost this round');
        compScore++;
        print('Current Score is $userScore:$compScore');
      }else{
        print('i\'ts a tie');
        print('Current Score is $userScore:$compScore');
      }

      print('\nwanna roll again or exit?');

      userTotal=0;
      compTotal=0;

    }else{

      print('----------------');
      print("$userAnswer is not a recognizable command\nType 'roll' or 'exit'");
    }


  }

}
