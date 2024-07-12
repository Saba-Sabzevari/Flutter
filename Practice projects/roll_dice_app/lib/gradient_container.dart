import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';
//import 'package:roll_dice_app/styled_text.dart';

import 'package:roll_dice_app/dice_roller.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  //const GradientContainer.purple({super.key})
  //    : color1 = Colors.deepPurple,
  //      color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget{

//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context){
//     return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin: startAligment,
//               end: endAligment,
//             ),
//           ),
//           child: const Center(
//             child: StyledText('Hello World!')
//           ),
//         );
//   }
// }