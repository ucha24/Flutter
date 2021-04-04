import 'dart:io';
import 'dart:math';

void main() {
  dice();
}

dice() {
  final random = Random();

  int computerWin = 0;
  int youWin = 0;

  while (true) {
    print("\nPress enter to continue or type exit to quit the game!\n");
    String chosenNumber = stdin.readLineSync()!;

    if (chosenNumber.toLowerCase() == "exit") {
      break;
    }

    int randNumber1 = random.nextInt(5) + 1;
    int randNumber2 = random.nextInt(5) + 1;

    int randNumber3 = random.nextInt(5) + 1;
    int randNumber4 = random.nextInt(5) + 1;

    int sum1 = randNumber1 + randNumber2;
    int sum2 = randNumber3 + randNumber4;

    print("computer: $randNumber1, $randNumber2 ($sum1)");
    print("you: $randNumber3, $randNumber4 ($sum2)");

    if (sum1 > sum2) {
      computerWin += 1;
      print("computer win!");
    } else if (sum1 < sum2) {
      youWin += 1;
      print("you win!");
    } else {
      print("Draw!");
    }
  }
  print(
      "\n--------------| total result: computer: $computerWin - you: $youWin |--------------\n");
}
