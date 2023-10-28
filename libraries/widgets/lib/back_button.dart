import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final Function? onPress;

  const BackButtonWidget({super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => onPress??{
          Navigator.pop(context)
        },
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white));
  }
}
