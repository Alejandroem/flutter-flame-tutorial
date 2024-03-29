import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:langaw/components/fly.dart';
import 'package:langaw/langaw-game.dart';

class HungryFly extends Fly {
  HungryFly(LangawGame game, double x, double y) : super(game) {
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.65, game.tileSize * 1.65);
    flyingSprite = [];

    initializeImage();
  }

  initializeImage() async {
    flyingSprite.add(Sprite(await Flame.images.load('flies/hungry-fly-1.png')));
    flyingSprite.add(Sprite(await Flame.images.load('flies/hungry-fly-2.png')));
    deadSprite = Sprite(await Flame.images.load('flies/hungry-fly-dead.png'));
  }
}
