import 'package:flutter/material.dart';
import './style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  final List<Color> colors;
  var activeDiceImage = "assets/images/dice-1.png";

  rollDice() {
    print("Roll Dice Button Pressed");
    activeDiceImage = "assets/images/dice-2.png";
  }

//Test
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(
                  //   top: 20,
                  // ),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text("Roll Dice")),
        ],
      )),
    );
  }
}
