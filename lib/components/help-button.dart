import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:langaw/langaw-game.dart';
import 'package:langaw/view.dart';

class HelpButton {
  final LangawGame game;
  late Rect rect;
  late Sprite sprite;

  HelpButton(this.game) {
    rect = Rect.fromLTWH(
      game.tileSize * .25,
      game.screenSize!.height - (game.tileSize * 1.25),
      game.tileSize,
      game.tileSize,
    );
    initializeImages();
  }

  initializeImages() async {
    sprite = Sprite(await Flame.images.load('ui/icon-help.png'));
  }

  void render(Canvas c) {
    sprite.renderRect(c, rect);
  }

  void onTapDown() {
    game.activeView = View.help;
  }
}
