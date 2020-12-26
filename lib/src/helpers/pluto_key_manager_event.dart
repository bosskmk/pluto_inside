import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlutoKeyManagerEvent {
  FocusNode focusNode;
  RawKeyEvent event;

  PlutoKeyManagerEvent({
    this.focusNode,
    this.event,
  });
}

extension PlutoKeyManagerEventExtention on PlutoKeyManagerEvent {
  bool get isKeyDownEvent => event.runtimeType == RawKeyDownEvent;

  bool get isKeyUpEvent => event.runtimeType == RawKeyUpEvent;

  bool get isMoving => isHorizontal || isVertical;

  bool get isHorizontal => isLeft || isRight;

  bool get isVertical => isUp || isDown;

  bool get isLeft =>
      event.logicalKey.keyId == LogicalKeyboardKey.arrowLeft.keyId;

  bool get isRight =>
      event.logicalKey.keyId == LogicalKeyboardKey.arrowRight.keyId;

  bool get isUp => event.logicalKey.keyId == LogicalKeyboardKey.arrowUp.keyId;

  bool get isDown =>
      event.logicalKey.keyId == LogicalKeyboardKey.arrowDown.keyId;

  bool get isHome => event.logicalKey.keyId == LogicalKeyboardKey.home.keyId;

  bool get isEnd => event.logicalKey.keyId == LogicalKeyboardKey.end.keyId;

  bool get isPageUp {
    // windows 에서 pageUp keyId 가 0x10700000021.
    return event.logicalKey.keyId == LogicalKeyboardKey.pageUp.keyId ||
        event.logicalKey.keyId == 0x10700000021;
  }

  bool get isPageDown {
    // windows 에서 pageDown keyId 가 0x10700000022.
    return event.logicalKey.keyId == LogicalKeyboardKey.pageDown.keyId ||
        event.logicalKey.keyId == 0x10700000022;
  }

  bool get isEsc => event.logicalKey.keyId == LogicalKeyboardKey.escape.keyId;

  bool get isEnter => event.logicalKey.keyId == LogicalKeyboardKey.enter.keyId;

  bool get isTab => event.logicalKey.keyId == LogicalKeyboardKey.tab.keyId;

  bool get isF2 => event.logicalKey.keyId == LogicalKeyboardKey.f2.keyId;

  bool get isCharacter =>
      event.logicalKey.keyLabel != null && event.logicalKey.keyLabel.isNotEmpty;

  bool get isCtrlC {
    return isCtrlPressed &&
        event.logicalKey.keyId == LogicalKeyboardKey.keyC.keyId;
  }

  bool get isCtrlV {
    return isCtrlPressed &&
        event.logicalKey.keyId == LogicalKeyboardKey.keyV.keyId;
  }

  bool get isCtrlA {
    return isCtrlPressed &&
        event.logicalKey.keyId == LogicalKeyboardKey.keyA.keyId;
  }

  bool get isShiftPressed {
    return event.isShiftPressed;
  }

  bool get isCtrlPressed {
    return event.isMetaPressed || event.isControlPressed;
  }
}
