import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:langaw/components/fly.dart';
import 'package:langaw/langaw-game.dart';

class DroolerFly extends Fly {
  double get speed => game.tileSize * 1.5;

  DroolerFly(LangawGame game, double x, double y) : super(game) {
    flyRect = Rect.fromLTWH(x, y, game.tileSize * 1.5, game.tileSize * 1.5);
    flyingSprite = [];
    initializeImages();
  }

  initializeImages() async {
    flyingSprite
        .add(Sprite(await Flame.images.load('flies/drooler-fly-1.png')));
    flyingSprite
        .add(Sprite(await Flame.images.load('flies/drooler-fly-2.png')));
    deadSprite = Sprite(await Flame.images.load('flies/drooler-fly-dead.png'));
  }
}
