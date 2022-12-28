import 'package:flutter/material.dart';

import '../../res/size_resource.dart';

class Incrementer extends StatelessWidget {
  Incrementer({Key? key}) : super(key: key);

  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: SizeResource.xlargeDp,
            height: SizeResource.xlargeDp,
            child: Container(
                decoration:
                const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: TextButton(
                    onPressed: () {}, child: const Icon(Icons.remove)
                )
            )
        ),
        Text(_number.toString()),
        SizedBox(
            width: SizeResource.xlargeDp,
            height: SizeResource.xlargeDp,
            child: Container(
              decoration:
              const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              child: TextButton(onPressed: (){

              }, child: const Icon(Icons.add)),
            ),
        ),
      ],
    );
  }
}
