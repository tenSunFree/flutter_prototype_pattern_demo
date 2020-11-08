import 'package:flutter/material.dart';
import 'package:flutter_prototype_pattern_demo/common/pizza_component.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isShow;
  PizzaComponent _pizza = PizzaComponent.initial();

  @override
  void initState() {
    super.initState();
    _isShow = false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset('assets/icon_home.png'),
      buildGestureDetector(),
      buildBackgroundShadowWidget(),
      buildPizzaComponentWidget()
    ]);
  }

  Column buildGestureDetector() {
    return Column(children: <Widget>[
      Expanded(child: SizedBox(), flex: 40),
      Expanded(
          child: GestureDetector(
              child: Container(color: Colors.transparent),
              onTap: () {
                setState(() {
                  var pizza = PizzaComponent(PizzaComponent.SEAFOOD);
                  _pizza = PizzaComponent.clone(pizza);
                  _isShow = true;
                });
              }),
          flex: 42),
      Expanded(
          child: GestureDetector(
              child: Container(color: Colors.transparent),
              onTap: () {
                setState(() {
                  var pizza = PizzaComponent(PizzaComponent.OCTOPUS);
                  _pizza = PizzaComponent.clone(pizza);
                  _isShow = true;
                });
              }),
          flex: 38),
    ]);
  }

  Widget buildBackgroundShadowWidget() {
    return _isShow ? Container(color: Color(0x90000000)) : SizedBox();
  }

  Widget buildPizzaComponentWidget() {
    return _isShow
        ? _pizza.render(() {
            setState(() {
              _isShow = false;
            });
          })
        : SizedBox();
  }
}
