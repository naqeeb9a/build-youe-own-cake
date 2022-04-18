import 'package:build_own_cake/utils/config.dart';
import 'package:flutter/material.dart';

class CakeProvider extends ChangeNotifier {
  int sizeIndex;
  int spongeIndex;
  int fillingIndex;
  int colorIndex;
  int decorationIndex;
  int toppingsIndex;
  CakeProvider(
      {this.sizeIndex = 0,
      this.spongeIndex = 0,
      this.fillingIndex = 0,
      this.colorIndex = 0,
      this.decorationIndex = 0,
      this.toppingsIndex = 0});

  changeSizeIndex(value) {
    sizeIndex = value;
    notifyListeners();
  }

  changeSpongeIndex(value) {
    spongeIndex = value;
    notifyListeners();
  }

  changeFillingIndex(value) {
    fillingIndex = value;
    notifyListeners();
  }

  changeColorIndex(value) {
    colorIndex = value;
    notifyListeners();
  }

  changeDecorationIndex(value) {
    decorationIndex = value;
    notifyListeners();
  }

  changeToppingsIndex(value) {
    toppingsIndex = value;
    notifyListeners();
  }

  Widget cakeSize(context, sizeIndex) {
    return AnimatedScale(
        scale: sizeIndex == 1 ? 0.9 : 1.3,
        duration: const Duration(milliseconds: 600),
        curve: Curves.bounceOut,
        child: sizeIndex == 1
            ? Image.asset(
                "assets/cake 2.png",
                height: 200,
              )
            : Image.asset(
                "assets/cake.png",
                height: 200,
              ));
  }

  Widget colorsSelection(sizeIndex, colorIndex) {
    return AnimatedScale(
        scale: sizeIndex == 1 ? 0.9 : 1.3,
        duration: const Duration(milliseconds: 600),
        curve: Curves.bounceOut,
        child: Image.asset(
          sizeIndex == 1 ? "assets/cake 2.png" : "assets/cake.png",
          color: colorIndex == 1
              ? myPastelBlue
              : colorIndex == 2
                  ? myPink
                  : colorIndex == 3
                      ? myLilac
                      : colorIndex == 4
                          ? myWhite
                          : colorIndex == 5
                              ? myBlack
                              : colorIndex == 6
                                  ? myYellow
                                  : colorIndex == 7
                                      ? myPastelPink
                                      : colorIndex == 8
                                          ? myBlue
                                          : noColor,
        ));
  }

  Widget decorationSelection(context, sizeIndex, decorationIndex) {
    selection(double p1, double p2, double p3, double p4, double s1, double s2,
        double s3, double s4) {
      return Positioned(
        bottom: decorationIndex == 1
            ? p1
            : decorationIndex == 2
                ? p2
                : decorationIndex == 3
                    ? p3
                    : p4,
        child: Image.asset(
          decorationIndex == 1
              ? "assets/Custom_Cakes/1/10.png"
              : decorationIndex == 2
                  ? "assets/Custom_Cakes/1/11.png"
                  : decorationIndex == 3
                      ? "assets/Custom_Cakes/1/7.png"
                      : "assets/Custom_Cakes/1/12.png",
          scale: decorationIndex == 1
              ? s1
              : decorationIndex == 2
                  ? s2
                  : decorationIndex == 3
                      ? s3
                      : s4,
        ),
      );
    }

    return sizeIndex == 1
        ? selection(110, 110, 100, 105, 50, 20, 2.5, 40)
        : sizeIndex == 2
            ? selection(110, 110, 100, 110, 45, 15, 2, 40)
            : sizeIndex == 3
                ? selection(120, 120, 105, 120, 30, 10, 1.7, 40)
                : selection(140, 120, 115, 130, 30, 10, 1.4, 40);
  }
}
