import 'package:build_own_cake/utils/config.dart';
import 'package:flutter/material.dart';

class CakeProvider extends ChangeNotifier {
  int sizeIndex,
      spongeIndex,
      fillingIndex,
      colorIndex,
      decorationIndex,
      toppingsIndex;
  String sizeValue,
      spongeValue,
      fillingValue,
      colorValue,
      decorationValue,
      toppingsValue;

  CakeProvider({
    this.sizeIndex = 1,
    this.spongeIndex = 1,
    this.fillingIndex = 1,
    this.colorIndex = 1,
    this.decorationIndex = 1,
    this.toppingsIndex = 1,
    this.sizeValue = "",
    this.spongeValue = "",
    this.fillingValue = "",
    this.colorValue = "",
    this.decorationValue = "",
    this.toppingsValue = "",
  });

  changeSizeIndex(index, value) {
    sizeIndex = index;
    sizeValue = value;
    notifyListeners();
  }

  changeSpongeIndex(index, value) {
    spongeIndex = index;
    spongeValue = value;
    notifyListeners();
  }

  changeFillingIndex(index, value) {
    fillingIndex = index;
    fillingValue = value;
    notifyListeners();
  }

  changeColorIndex(index, value) {
    colorIndex = index;
    colorValue = value;
    notifyListeners();
  }

  changeDecorationIndex(index, value) {
    decorationIndex = index;
    decorationValue = value;
    notifyListeners();
  }

  changeToppingsIndex(index, value) {
    toppingsIndex = index;
    toppingsValue = value;
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
    selection() {
      return Positioned(
        bottom: decorationIndex == 1
            ? 20
            : decorationIndex == 3
                ? 90
                : decorationIndex == 4
                    ? 20
                    : 130,
        left: decorationIndex == 1
            ? 80
            : decorationIndex == 3
                ? null
                : decorationIndex == 4
                    ? 80
                    : null,
        right: decorationIndex == 5 ? 80 : null,
        child: Image.asset(
          decorationIndex == 1
              ? "assets/decorationAssets/macarons.png"
              : decorationIndex == 2
                  ? "assets/Custom_Cakes/1/11.png"
                  : decorationIndex == 3
                      ? "assets/decorationAssets/sprinkles.png"
                      : decorationIndex == 4
                          ? "assets/decorationAssets/pearls.png"
                          : decorationIndex == 5
                              ? "assets/decorationAssets/butterfly.png"
                              : decorationIndex == 6
                                  ? "assets/decorationAssets/chocolateShards.png"
                                  : decorationIndex == 7
                                      ? "assets/decorationAssets/pearls.png"
                                      : decorationIndex == 8
                                          ? "assets/decorationAssets/chocoBalls.png"
                                          : "assets/Custom_Cakes/1/11.png",
          scale: decorationIndex == 5 ? 40 : 10,
        ),
      );
    }

    return selection();
  }
}
