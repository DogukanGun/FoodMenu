import 'package:flutter/material.dart';

import '../../style/text_style.dart';

class IncrementButton extends StatefulWidget {
  const IncrementButton({Key? key}) : super(key: key);

  @override
  State<IncrementButton> createState() => _IncrementButtonState();
}

class _IncrementButtonState extends State<IncrementButton> {
  bool _buttonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedOpacity(
          opacity: _buttonClicked ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: Container(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    _buttonClicked = !_buttonClicked;
                  });
                },
                child: Text(
                  "Added",
                  style: FoodTextStyle.foodListMenuSubTextWhite,
                )),
          ),
        ),
        AnimatedOpacity(
          opacity: _buttonClicked ? 0.0 : 1.0,
          duration: const Duration(seconds: 1),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    if(!_buttonClicked) {
                      _buttonClicked = true;
                    }
                  });
                },
                child: const Icon(Icons.add)),
          ),
        ),
      ],
    );
  }
}
