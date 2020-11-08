import 'package:flutter/material.dart';

class PizzaComponent {
  static const int SEAFOOD = 0;
  static const int OCTOPUS = 1;
  int _type;
  double _radiusCircular;
  double _width;
  double _height;
  String _url;

  PizzaComponent(this._type);

  PizzaComponent.initial() {
    _type = SEAFOOD;
  }

  PizzaComponent.clone(PizzaComponent pizza) {
    _type = pizza._type;
  }

  Widget render(Function tap) {
    _updateData();
    return Center(
        child: GestureDetector(
            child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(_radiusCircular),
                    child: new Image.asset(_url,
                        width: _width, height: _height, fit: BoxFit.cover))),
            onTap: tap));
  }

  void _updateData() {
    switch (_type) {
      case SEAFOOD:
        _radiusCircular = 28;
        _width = 200;
        _height = 200;
        _url = "assets/icon_seafood.png";
        break;
      case OCTOPUS:
        _radiusCircular = 14;
        _width = 320;
        _height = 180;
        _url = "assets/icon_octopus.png";
        break;
    }
  }
}
