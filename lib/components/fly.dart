import 'dart:ui';

import 'package:flame/sprite.dart';
import 'package:langaw/langaw-game.dart';

class Fly {
  final LangawGame game;
  late Rect flyRect;
  bool isDead = false;
  bool isOffScreen = false;
  late List<Sprite> flyingSprite;
  late Sprite deadSprite;
  double flyingSpriteIndex = 0;
  double get speed => game.tileSize * 3;
  late Offset targetLocation;

  Fly(this.game) {
    setTargetLocation();
  }

  void render(Canvas c) {
    if (isDead) {
      deadSprite.renderRect(c, flyRect.inflate(2));
    } else {
      flyingSprite[flyingSpriteIndex.toInt()].renderRect(c, flyRect.inflate(2));
    }
  }

  void update(double t) {
    if (isDead) {
      flyRect = flyRect.translate(0, game.tileSize * 12 * t);
      if (flyRect.top > game.screenSize!.height) {
        isOffScreen = true;
      }
    } else {
      flyingSpriteIndex += 30 * t;
      if (flyingSpriteIndex >= 2) {
        flyingSpriteIndex -= 2;
      }
    }

    double stepDistance = speed * t;
    Offset toTarget = targetLocation - Offset(flyRect.left, flyRect.top);
    if (stepDistance < toTarget.distance) {
      Offset stepToTarget =
          Offset.fromDirection(toTarget.direction, stepDistance);
      flyRect = flyRect.shift(stepToTarget);
    } else {
      flyRect = flyRect.shift(toTarget);
      setTargetLocation();
    }
  }

  void onTapDown() {
    this.isDead = true;
  }

  void setTargetLocation() {
    double x = game.rnd.nextDouble() *
        (game.screenSize!.width - (game.tileSize * 2.025));
    double y = game.rnd.nextDouble() *
        (game.screenSize!.height - (game.tileSize * 2.025));
    targetLocation = Offset(x, y);
  }
}
