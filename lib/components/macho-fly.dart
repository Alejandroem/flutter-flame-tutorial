import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:langaw/components/fly.dart';
import 'package:langaw/langaw-game.dart';

class MachoFly extends Fly {
  double get speed => game.tileSize * 2.5;

  MachoFly(LangawGame game, double x, double y) : super(game) {
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 2.025, game.tileSize * 2.025);
    flyingSprite = [];
    initializeImage();
  }

  initializeImage() async {
    flyingSprite.add(Sprite(await Flame.images.load('flies/macho-fly-1.png')));
    flyingSprite.add(Sprite(await Flame.images.load('flies/macho-fly-2.png')));
    deadSprite = Sprite(await Flame.images.load('flies/macho-fly-dead.png'));
  }
}
