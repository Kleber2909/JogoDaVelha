import 'package:flutter/material.dart' as material;
import 'package:jogo_da_velha/src/jogo/Controller.dart';
import 'package:mobx/mobx.dart';

class JogoCotroller {
  Controller controller = Controller();

  int countClick = 0;
  int player = 0;

  var _button1 = Observable(false);
  var _icon1 = Observable(new material.Icon(null));
  get icon1 => _icon1.value;

  var _button2 = Observable(false);
  var _icon2 = Observable(new material.Icon(null));
  get icon2 => _icon2.value;

  var _button3 = Observable(false);
  var _icon3 = Observable(new material.Icon(null));
  get icon3 => _icon3.value;

  var _button4 = Observable(false);
  var _icon4 = Observable(new material.Icon(null));
  get icon4 => _icon4.value;

  var _button5 = Observable(false);
  var _icon5 = Observable(new material.Icon(null));
  get icon5 => _icon5.value;

  var _button6 = Observable(false);
  var _icon6 = Observable(new material.Icon(null));
  get icon6 => _icon6.value;

  var _button7 = Observable(false);
  var _icon7 = Observable(new material.Icon(null));
  get icon7 => _icon7.value;

  var _button8 = Observable(false);
  var _icon8 = Observable(new material.Icon(null));
  get icon8 => _icon8.value;

  var _button9 = Observable(false);
  var _icon9 = Observable(new material.Icon(null));
  get icon9 => _icon9.value;

  var _lastButtonClick = Observable(0);

  Action button1Action,
      button2Action,
      button3Action,
      button4Action,
      button5Action,
      button6Action,
      button7Action,
      button8Action,
      button9Action,
      buttinClean,
      printWinnerLine,
      printWinnerCol,
      printWinnerDiag;
  JogoCotroller() {
    button1Action = Action(_button1Action);
    button2Action = Action(_button2Action);
    button3Action = Action(_button3Action);
    button4Action = Action(_button4Action);
    button5Action = Action(_button5Action);
    button6Action = Action(_button6Action);
    button7Action = Action(_button7Action);
    button8Action = Action(_button8Action);
    button9Action = Action(_button9Action);
    buttinClean = Action(_buttinClean);
    printWinnerLine = Action(_printWinnerLine);
    printWinnerCol = Action(_printWinnerCol);
    printWinnerDiag = Action(_printWinnerDiag);
  }

  _button1Action() {
    if (_button1.value) {
      if (_lastButtonClick.value == 1) {
        countClick--;
        _icon1.value = new material.Icon(null);
        _button1.value = false;
        controller.setCheck(0, 0, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 1;
      _button1.value = true;
      _icon1.value = getIcon();
      controller.setCheck(0, 0, player);
      _checkWinner(0, 0);
    }
  }

  _button2Action() {
    if (_button2.value) {
      if (_lastButtonClick.value == 2) {
        countClick--;
        _icon2.value = new material.Icon(null);
        _button2.value = false;
        controller.setCheck(0, 1, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 2;
      _button2.value = true;
      _icon2.value = getIcon();
      controller.setCheck(0, 1, player);
      _checkWinner(0, 1);
    }
  }

  _button3Action() {
    if (_button3.value) {
      if (_lastButtonClick.value == 3) {
        countClick--;
        _icon3.value = new material.Icon(null);
        _button3.value = false;
        controller.setCheck(0, 2, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 3;
      _button3.value = true;
      _icon3.value = getIcon();
      controller.setCheck(0, 2, player);
      _checkWinner(0, 2);
    }
  }

  _button4Action() {
    if (_button4.value) {
      if (_lastButtonClick.value == 4) {
        countClick--;
        _icon4.value = new material.Icon(null);
        _button4.value = false;
        controller.setCheck(1, 0, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 4;
      _button4.value = true;
      _icon4.value = getIcon();
      controller.setCheck(1, 0, player);
      _checkWinner(1, 0);
    }
  }

  _button5Action() {
    if (_button5.value) {
      if (_lastButtonClick.value == 5) {
        countClick--;
        _icon5.value = new material.Icon(null);
        _button5.value = false;
        controller.setCheck(1, 1, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 5;
      _button5.value = true;
      _icon5.value = getIcon();
      controller.setCheck(1, 1, player);
      _checkWinner(1, 1);
    }
  }

  _button6Action() {
    if (_button6.value) {
      if (_lastButtonClick.value == 6) {
        countClick--;
        _icon6.value = new material.Icon(null);
        _button6.value = false;
        controller.setCheck(1, 2, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 6;
      _button6.value = true;
      _icon6.value = getIcon();
      controller.setCheck(1, 2, player);
      _checkWinner(1, 2);
    }
  }

  _button7Action() {
    if (_button7.value) {
      if (_lastButtonClick.value == 7) {
        countClick--;
        _icon7.value = new material.Icon(null);
        _button7.value = false;
        controller.setCheck(2, 0, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 7;
      _button7.value = true;
      _icon7.value = getIcon();
      controller.setCheck(2, 0, player);
      _checkWinner(2, 0);
    }
  }

  _button8Action() {
    if (_button8.value) {
      if (_lastButtonClick.value == 8) {
        countClick--;
        _icon8.value = new material.Icon(null);
        _button8.value = false;
        controller.setCheck(2, 1, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 8;
      _button8.value = true;
      _icon8.value = getIcon();
      controller.setCheck(2, 1, player);
      _checkWinner(2, 1);
    }
  }

  _button9Action() {
    if (_button9.value) {
      if (_lastButtonClick.value == 9) {
        countClick--;
        _icon9.value = new material.Icon(null);
        _button9.value = false;
        controller.setCheck(2, 2, 0);
      }
    } else {
      countClick++;
      _lastButtonClick.value = 9;
      _button9.value = true;
      _icon9.value = getIcon();
      controller.setCheck(2, 2, player);
      _checkWinner(2, 2);
    }
  }

  _checkWinner(int x, int y){
    if(controller.checkLine(x))
      _printWinnerLine(x);
    else if(controller.checkCollun(y))
      _printWinnerCol(y);

    var _diag = controller.checkDiagonally();
    if(_diag > 0)
      _printWinnerDiag(_diag);
  }

  _printWinnerLine(int x){
    if(x == 0)
    {
      _icon1.value = getIconWinner();
      _icon2.value = getIconWinner();
      _icon3.value = getIconWinner();
    }
    else if(x == 1)
    {
      _icon4.value = getIconWinner();
      _icon5.value = getIconWinner();
      _icon6.value = getIconWinner();
    }
      else if(x == 2)
    {
      _icon7.value = getIconWinner();
      _icon8.value = getIconWinner();
      _icon9.value = getIconWinner();
    }
  }

  _printWinnerCol(int y){
    if(y == 0)
    {
      _icon1.value = getIconWinner();
      _icon4.value = getIconWinner();
      _icon7.value = getIconWinner();
    }
    else if(y == 1)
    {
      _icon2.value = getIconWinner();
      _icon5.value = getIconWinner();
      _icon8.value = getIconWinner();
    }
      else if(y == 2)
    {
      _icon3.value = getIconWinner();
      _icon6.value = getIconWinner();
      _icon9.value = getIconWinner();
    }
  }

  _printWinnerDiag(int diag){
    if(diag == 1)
    {
      _icon1.value = getIconWinner();
      _icon5.value = getIconWinner();
      _icon9.value = getIconWinner();
    }
      else if(diag == 2)
    {
      _icon3.value = getIconWinner();
      _icon5.value = getIconWinner();
      _icon7.value = getIconWinner();
    }
  }

  _buttinClean(){
   controller.cleanGame();
   countClick = 0;
   _lastButtonClick.value = 0;
   _button1.value = false;
   _button2.value = false;
   _button3.value = false;
   _button4.value = false;
   _button5.value = false;
   _button6.value = false;
   _button7.value = false;
   _button8.value = false;
   _button9.value = false;
   _icon1.value = material.Icon(null);
   _icon2.value = material.Icon(null);
   _icon3.value = material.Icon(null);
   _icon4.value = material.Icon(null);
   _icon5.value = material.Icon(null);
   _icon6.value = material.Icon(null);
   _icon7.value = material.Icon(null);
   _icon8.value = material.Icon(null);
   _icon9.value = material.Icon(null);
  }

  getIcon(){    
    player = countClick%2 == 0 ?  -1 : 1;
    return  material.Icon(  
      countClick%2 == 0 ? 
        material.Icons.radio_button_unchecked : 
        material.Icons.clear, 
        color: (countClick%2 == 0 ? 
        material.Colors.redAccent : 
        material.Colors.greenAccent
        ), 
        size: 70,
    );
  }

  getIconWinner() {    
    return  material.Icon(  
        player == 0 ? 
        material.Icons.access_alarm : 
        material.Icons.call_received, 
        color: (countClick%2 == 0 ? 
        material.Colors.deepOrange : 
        material.Colors.indigoAccent
        ), 
        size: 70,
    );
  }
}
