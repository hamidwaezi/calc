import 'package:calc/neumorphic_container.dart';
import 'package:flutter/material.dart';

// creating Stateless Widget for buttons
class MyButton extends StatelessWidget {
// declaring variables
  final Color? color;
  final textColor;
  final String? buttonText;
  final buttontapped;

//Constructor
  const MyButton(
      {this.color, this.textColor, this.buttonText, this.buttontapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NeumorphicContainer(
          color: color,
          bevel: 3,
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(25),
            child: Container(
              //color: color,
              child: Center(
                child: Text(
                  buttonText!,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
