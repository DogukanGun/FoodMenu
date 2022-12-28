import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {

  VoidCallback voidCallback;

  LikeButton({Key? key, required this.voidCallback}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {

  bool _like = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState((){
            _like = !_like;
            widget.voidCallback.call();
          });
        },
        color: Colors.white,
        icon: _like
            ? const Icon(Icons.favorite_outlined)
            : const Icon(Icons.favorite_outline_sharp));
  }
}
