import 'dart:io';
import 'dart:math';

enum moves{ ROCK, PAPER, SCICCOR}

String computer() {

    Random rdm = new Random();
    var computer_choose = moves.values[rdm.nextInt(moves.values.length)].name;
    return computer_choose ;

}

String player() {

    print("CHOOSE YOUR MOVE : R TO ROCKk, P TO PAPER, OR S TO SCISSOR?");
    String player_choose = stdin.readLineSync()! .toUpperCase();
  
    switch (player_choose) {
        case "R":
            return "ROCK";
        case "P":
            return "PAPER";
        case "S":
            return "SCISSOR";
        default:
            return "QUIT";
    }

}

void main(){ 
    
    var your_score = 0;
    var computer_score = 0;

    while(true){

        for(var i = 0; i < 5; i++){

            String your_choose = player();
            print("YOUR CHOOSE: $your_choose");

            String our_choose = computer();
            print("COMPUTER CHOOSE: $our_choose");

            if(your_choose == "QUIT"){

                return;

            }

            if((your_choose == "ROCK" && our_choose == "SCISSOR") || (your_choose == "SCISSOR" && our_choose == "PAPER") || (your_choose == "PAPER" && our_choose == "ROCK")){
           
                your_score++;
                print("YOUR SCORE: $your_score - COMPUTER SCORE: $computer_score");

            }

            else if(your_choose == our_choose){

                print("YOUR SCORE: $your_score - COMPUTER SCORE: $computer_score");

            }

            else{

                computer_score++;
                print("YOUR SCORE: $your_score - COMPUTER SCORE: $computer_score");

            }

        }

        if(your_score > computer_score){

            print("CONGRATULATIONS YOU WON. YOUR SCORE: $your_score COMPUTER SCORE: $computer_score.");

            print("DO YOU WANT TO PLAY AGAIN Y TO YES, N TO NO.");
            String again = stdin.readLineSync()!.toUpperCase();

            if(again == "Y"){

                 return main();;

            }

            else{

                break;

            }

        }

        else if(your_score == computer_score){

            print("TIE. YOUR SCORE: $your_score COMPUTER SCORE: $computer_score");

            print("DO YOU WANT TO PLAY AGAIN Y TO YES, N TO NO.");
            String again = stdin.readLineSync()!.toUpperCase();

            if(again == "Y"){

                return main();;

            }

            else{

                break;

            }

        }

        else{

            print("COMPUTER WON. PLAY AGAIN. YOUR SCORE: $your_score COMPUTER SCORE: $computer_score ");

            print("DO YOU WANT TO PLAY AGAIN Y TO YES, N TO NO.");
            String again = stdin.readLineSync()!.toUpperCase();

            if(again == "Y"){

                return main();

            }

            else{

                break;

            }

        }

    }

}