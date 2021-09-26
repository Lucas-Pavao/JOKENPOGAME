import '../modelo/jogadas.dart';
import '../modelo/game.dart';
import 'dart:io';
import 'package:ansicolor/ansicolor.dart';

main() {
  
  var jogadas = Jogadas();
  var game = Game();
  int iniciar = 0;
  
  /*
  
  
  Para iniciar use o commando 

  dart teste/testejogo.dart
  
  NO TERMINAL!!
  
  */
  do{

    AnsiPen cor1 = new AnsiPen()..green();
    print("\n\n\n\n\n\n");
    print("~" * 120);
    print(cor1("░░░░░██╗░█████╗░██╗░░██╗███████╗███╗░░██╗██████╗░░█████╗░      ░██████╗░░█████╗░███╗░░░███╗███████╗"));
    print(cor1("░░░░░██║██╔══██╗██║░██╔╝██╔════╝████╗░██║██╔══██╗██╔══██╗      ██╔════╝░██╔══██╗████╗░████║██╔════╝"));
    AnsiPen cor2 = new AnsiPen()..yellow();
    print(cor2("░░░░░██║██║░░██║█████═╝░█████╗░░██╔██╗██║██████╔╝██║░░██║      ██║░░██╗░███████║██╔████╔██║█████╗░░"));
    print(cor2("██╗░░██║██║░░██║██╔═██╗░██╔══╝░░██║╚████║██╔═══╝░██║░░██║      ██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░"));
    AnsiPen cor3 = new AnsiPen()..blue();
    print(cor3("╚█████╔╝╚█████╔╝██║░╚██╗███████╗██║░╚███║██║░░░░░╚█████╔╝      ╚██████╔╝██║░░██║██║░╚═╝░██║███████╗"));
    print(cor3("░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝╚═╝░░░░░░╚════╝░      ░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝"));
    print("By: Lucas Pavão \n");
    print("~" * 120);
    print("\n");
    print("Digite 1010 para iniciar!");
    final iniciarTela = stdin.readLineSync();
    iniciar = int.parse(iniciarTela!);

  }while(iniciar != 1010);

  if(iniciar == 1010){
    jogadas.iniciar =true;
    print("\n");

    for (int i = 0; i < 1; i++){
      stdout.write("\nCARREGANDO");
      sleep(Duration(seconds: 1));
      stdout.write('.');
      sleep(Duration(seconds: 1));
      stdout.write('.');
      sleep(Duration(seconds: 1));
      stdout.write('.');
    }
    print("\n");
    game.gameIniciar();
  }
  
}