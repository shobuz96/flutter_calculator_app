import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 100,
        width: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 7, 118, 111),
            borderRadius: BorderRadius.circular(50)),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
