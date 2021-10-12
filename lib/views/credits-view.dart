import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:langaw/langaw-game.dart';

class CreditsView {
  final LangawGame game;
  late Rect rect;
  late Sprite sprite;

  CreditsView(this.game) {
    rect = Rect.fromLTWH(
      game.tileSize * .5,
      (game.screenSize!.height / 2) - (game.tileSize * 6),
      game.tileSize * 8,
      game.tileSize * 12,
    );
    initializeImages();
  }

  initializeImages() async {
    sprite = Sprite(await Flame.images.load('ui/dialog-credits.png'));
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }
}
