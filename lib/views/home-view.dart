import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:langaw/langaw-game.dart';

class HomeView {
  final LangawGame game;
  late Rect titleRect;
  late Sprite titleSprite;

  HomeView(this.game) {
    titleRect = Rect.fromLTWH(
      game.tileSize,
      (game.screenSize!.height / 2) - (game.tileSize * 4),
      game.tileSize * 7,
      game.tileSize * 4,
    );

    initializeImages();
  }

  initializeImages() async {
    titleSprite = Sprite(await Flame.images.load('branding/title.png'));
  }

  void render(Canvas c) {
    titleSprite.renderRect(c, titleRect);
  }

  void update(double t) {}
}
