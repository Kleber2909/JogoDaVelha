import 'package:flutter/material.dart' as material;
import 'package:jogo_da_velha/src/jogo/Controller.dart';
import 'package:mobx/mobx.dart';

class JogoCotroller {
  Controller _controller = Controller();

  int _countClick = 0;
  int _player = 0;
  bool _playing = true;

  // #region variables Observable

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

  var animateLine1 = Observable(false);
  var animateLine2 = Observable(false);
  var animateLine3 = Observable(false);

  var animateColum1 = Observable(false);
  var animateColum2 = Observable(false);
  var animateColum3 = Observable(false);

  var animateDiag1 = Observable(false);
  var animateDiag2 = Observable(false);
  
  var player1 = Observable(0);
  var player2 = Observable(0);

  var twoPayers = Observable(false);

  // #endregion

  // #region Action Declarete

  Action button1Action,
      button2Action,
      button3Action,
      button4Action,
      button5Action,
      button6Action,
      button7Action,
      button8Action,
      button9Action,
      buttonClean,
      printWinnerLine,
      printWinnerCol,
      printWinnerDiag,
      winnerAdd,
      setTwoPayers;

   // #endregion

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
    buttonClean = Action(_buttonClean);
    printWinnerLine = Action(_printWinnerLine);
    printWinnerCol = Action(_printWinnerCol);
    printWinnerDiag = Action(_printWinnerDiag);
    winnerAdd = Action(_winnerAdd);
    setTwoPayers = Action(_setTwoPayers);

    autorun((_){
     // print("animateLine1.value ${animateLine1.value}");
    });

  }

  // #region Botões onPress
  _button1Action() {
    if(_playing)
    if (_button1.value) {
      if (_lastButtonClick.value == 1) {
        _countClick--;
        _icon1.value = new material.Icon(null);
        _button1.value = false;
        _controller.setCheck(0, 0, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 1;
      _button1.value = true;
      _icon1.value = getIcon();
      _controller.setCheck(0, 0, _player);
      _checkWinner(0, 0);
    }
  }

  _button2Action() {
    if(_playing)
    if (_button2.value) {
      if (_lastButtonClick.value == 2) {
        _countClick--;
        _icon2.value = new material.Icon(null);
        _button2.value = false;
        _controller.setCheck(0, 1, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 2;
      _button2.value = true;
      _icon2.value = getIcon();
      _controller.setCheck(0, 1, _player);
      _checkWinner(0, 1);
    }
  }

  _button3Action() {
    if(_playing)
    if (_button3.value) {
      if (_lastButtonClick.value == 3) {
        _countClick--;
        _icon3.value = new material.Icon(null);
        _button3.value = false;
        _controller.setCheck(0, 2, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 3;
      _button3.value = true;
      _icon3.value = getIcon();
      _controller.setCheck(0, 2, _player);
      _checkWinner(0, 2);
    }
  }

  _button4Action() {
    if(_playing)
    if (_button4.value) {
      if (_lastButtonClick.value == 4) {
        _countClick--;
        _icon4.value = new material.Icon(null);
        _button4.value = false;
        _controller.setCheck(1, 0, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 4;
      _button4.value = true;
      _icon4.value = getIcon();
      _controller.setCheck(1, 0, _player);
      _checkWinner(1, 0);
    }
  }

  _button5Action() {
    if(_playing)
    if (_button5.value) {
      if (_lastButtonClick.value == 5) {
        _countClick--;
        _icon5.value = new material.Icon(null);
        _button5.value = false;
        _controller.setCheck(1, 1, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 5;
      _button5.value = true;
      _icon5.value = getIcon();
      _controller.setCheck(1, 1, _player);
      _checkWinner(1, 1);
    }
  }

  _button6Action() {
    if(_playing)
    if (_button6.value) {
      if (_lastButtonClick.value == 6) {
        _countClick--;
        _icon6.value = new material.Icon(null);
        _button6.value = false;
        _controller.setCheck(1, 2, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 6;
      _button6.value = true;
      _icon6.value = getIcon();
      _controller.setCheck(1, 2, _player);
      _checkWinner(1, 2);
    }
  }

  _button7Action() {
    if(_playing)
    if (_button7.value) {
      if (_lastButtonClick.value == 7) {
        _countClick--;
        _icon7.value = new material.Icon(null);
        _button7.value = false;
        _controller.setCheck(2, 0, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 7;
      _button7.value = true;
      _icon7.value = getIcon();
      _controller.setCheck(2, 0, _player);
      _checkWinner(2, 0);
    }
  }

  _button8Action() {
    if(_playing)
    if (_button8.value) {
      if (_lastButtonClick.value == 8) {
        _countClick--;
        _icon8.value = new material.Icon(null);
        _button8.value = false;
        _controller.setCheck(2, 1, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 8;
      _button8.value = true;
      _icon8.value = getIcon();
      _controller.setCheck(2, 1, _player);
      _checkWinner(2, 1);
    }
  }

  _button9Action() {
    if(_playing)
    if (_button9.value) {
      if (_lastButtonClick.value == 9) {
        _countClick--;
        _icon9.value = new material.Icon(null);
        _button9.value = false;
        _controller.setCheck(2, 2, 0);
      }
    } else {
      _countClick++;
      _lastButtonClick.value = 9;
      _button9.value = true;
      _icon9.value = getIcon();
      _controller.setCheck(2, 2, _player);
      _checkWinner(2, 2);
    }
  }

  // #endregion

  _checkWinner(int x, int y){
    if(_controller.checkLine(x))
      _printWinnerLine(x);
    else if(_controller.checkCollun(y))
      _printWinnerCol(y);

    var _diag = _controller.checkDiagonally();
    if(_diag > 0)
      _printWinnerDiag(_diag);
  }

  _printWinnerLine(int x){
    _playing = false;
    _winnerAdd();
    if(x == 0)
      animateLine1.value = true;
    else if(x == 1)
      animateLine2.value = true;
    else if(x == 2)
      animateLine3.value = true;
  }

  _printWinnerCol(int y){
    _playing = false;
    _winnerAdd();
    if(y == 0)
      animateColum1.value = true;
    else if(y == 1)
      animateColum2.value = true;
    else if(y == 2)
      animateColum3.value = true;
  }

  _printWinnerDiag(int diag){
    _playing = false;
    _winnerAdd();
    if(diag == 1)
      animateDiag1.value = true;
    else if(diag == 2)
      animateDiag2.value = true;
  }

  _winnerAdd(){
    _player == 1 ? player1.value ++ : player2.value ++;
  }

  _buttonClean(){
    _controller.cleanGame();
    _countClick = 0;
    _lastButtonClick.value = 0;
    _playing = true;
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
    animateLine1.value = false;
    animateLine2.value = false;
    animateLine3.value = false;
    animateColum1.value = false;
    animateColum2.value = false;
    animateColum3.value = false;
    animateDiag1.value = false;
    animateDiag2.value = false;
  }

  cleanScoreboard(){
    runInAction((){
      player1.value = 0;
      player2.value = 0;
    });
  }

  _setTwoPayers(){
    twoPayers.value = !twoPayers.value;
  }

  getIcon(){    
    _player = _countClick%2 == 0 ?  -1 : 1;
    return  material.Icon(  
      _countClick%2 == 0 ? 
        material.Icons.radio_button_unchecked : 
        material.Icons.clear, 
        color: (_countClick%2 == 0 ? 
        material.Colors.redAccent : 
        material.Colors.greenAccent
        ), 
        size: 70,
    );
  }
}
