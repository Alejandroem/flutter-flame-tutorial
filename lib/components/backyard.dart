import 'dart:ui';
import 'package:flame/sprite.dart';
import 'package:langaw/langaw-game.dart';

class Backyard {
  final LangawGame game;
  Sprite bgSprite;

  Backyard(this.game) {
    bgSprite = Sprite('bg/backyard.png');
  }

  void render(Canvas c) {}

  void update(double t) {}
}
