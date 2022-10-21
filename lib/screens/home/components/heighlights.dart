import 'package:flutter/material.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 119,
                        text: "K+",
                      ),
                      label: "Байланыштар",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "+",
                      ),
                      label: "Видеолор",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: "+",
                      ),
                      label: "GitHub проектер",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: "K+",
                      ),
                      label: "Жылдыздар",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: "K+",
                  ),
                  label: "Байланыштар",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "+",
                  ),
                  label: "Видеолор",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: "+",
                  ),
                  label: "GitHub проектер",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: "K+",
                  ),
                  label: "Жылдыздар",
                ),
              ],
            ),
    );
  }
}
