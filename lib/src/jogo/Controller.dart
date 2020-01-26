class Controller {
  var matriz = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  setCheck(int x, int y, int value) {
    matriz[x][y] = value;
   /*
    print("--------");
    print(matriz[0]);
    print(matriz[1]);
    print(matriz[2]);
    print("--------");
  */
  }

  cleanGame() {
    //print("limpando");
    for (int i = 0; i < matriz.length; i++)
      for (int j = 0; j < matriz[i].length; j++) matriz[i][j] = 0;
  }

  checkLine(int line) {
    int sumResult = 0;
    for (int i = 0; i < matriz.length; i++)
      sumResult += matriz[line][i];
    //print("Linha $sumResult") ;
    if (sumResult == 3 || sumResult == -3)
      return true;
    else
      return false;
  }

  checkCollun(int collun) {
    int sumResult = 0;
    for (int i = 0; i < matriz.length; i++)
      sumResult += matriz[i][collun];
    //print("Coluna $sumResult") ;
    if (sumResult == 3 || sumResult == -3)
      return true;
    else
      return false;
  }

  checkDiagonally() {
       
    int sumResultMan= matriz[0][0] + matriz[1][1] + matriz[2][2];
    if (sumResultMan == 3 || sumResultMan == -3)
      return 1;
    int sumResultSecondary = matriz[0][2] + matriz[1][1] + matriz[2][0];
    if (sumResultSecondary == 3 || sumResultSecondary == -3)
      return 2;
    //print("sumResultMan $sumResultMan  sumResultSecondary $sumResultSecondary");

    return 0;   
  }
}
