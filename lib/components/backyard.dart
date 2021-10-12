import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:langaw/langaw-game.dart';

class Backyard {
  final LangawGame game;
  late Sprite bgSprite;
  late Rect bgRect;

  Backyard(this.game) {
    initalizeImages();
    bgRect = Rect.fromLTWH(
      0,
      game.screenSize!.height - (game.tileSize * 23),
      game.tileSize * 9,
      game.tileSize * 23,
    );
  }

  initalizeImages() async {
    bgSprite = Sprite(await Flame.images.load('bg/backyard.png'));
  }

  void render(Canvas c) {
    bgSprite.renderRect(c, bgRect);
  }

  void update(double t) {}
}
