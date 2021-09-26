import 'dart:math';
import 'jogadas.dart';
import 'dart:io';
import 'package:ansicolor/ansicolor.dart';
class Game{
  var jogadas = Jogadas();
  bool jogadaFinal = true;
  gameIniciar(){
    do{
        
        int robo = Random().nextInt(3);
        AnsiPen pen = new AnsiPen()..blue(bold: true);
        print(pen("O que você quer jogar?\n"));
        print("-=" * 30);
        print("[0] Pedra!\n");    
        print("[1] Papel!\n");  
        print("[2] Tesoura!\n");  
        print("[-1] Para finalizar jogo!\n"); 
        print("-=" * 30);
        final entradaUsuario = stdin.readLineSync();
        int jogadaUsuario = int.parse(entradaUsuario!);

        if (jogadaUsuario == -1){
          jogadaFinal = jogadas.finalizar;
          print("jogo finalizado!!");
        }
        

        if (robo == jogadas.pedra){
          if (jogadaUsuario == jogadas.pedra){
            AnsiPen empatou = new AnsiPen()..yellow();
            print('=' *  30);
            print(empatou("O jogo EMPATOU!!"));
            print("O jogador escolheu ${jogadas.pedraSTR}");
            print("O Robo escolheu ${jogadas.pedraSTR}");
            print('=' *  30);
          }    
          else if (jogadaUsuario == jogadas.papel){
            AnsiPen ganhou = new AnsiPen()..green();
            print('=' *  30);
            print(ganhou("O jogador ganhou!!"));
            print("O jogador escolheu ${jogadas.papelSTR}");
            print("O Robo escolheu ${jogadas.pedraSTR}");
            print('=' *  30);
          }
          else if (jogadaUsuario == jogadas.tesoura){
            AnsiPen perdeu = new AnsiPen()..red();
            print('=' *  30);
            print(perdeu("O computador ganhou!!"));
            print("O jogador escolheu ${jogadas.pedraSTR}");
            print("O Robo escolheu ${jogadas.papelSTR}");
            print('=' *  30);
         }
          else if(jogadaUsuario != jogadas.papel || jogadaUsuario != jogadas.pedra || jogadaUsuario != jogadas.tesoura){
            print("Valor invalido!!");
          }
          else{
            print("ERRO");
          }
        }
         if (robo == jogadas.papel){
          if (jogadaUsuario == jogadas.papel){
            AnsiPen empatou = new AnsiPen()..yellow();
            print('=' *  30);
            print(empatou("O jogo EMPATOU!!"));
            print("O jogador escolheu ${jogadas.papelSTR}");
            print("O Robo escolheu ${jogadas.papelSTR}");
            print('=' *  30);
          }    
          else if (jogadaUsuario == jogadas.tesoura){
            AnsiPen ganhou = new AnsiPen()..green();
            print('=' *  30);
            print(ganhou("O jogador ganhou!!"));
            print("O jogador escolheu ${jogadas.tesouraSTR}");
            print("O Robo escolheu ${jogadas.papelSTR}");
            print('=' *  30);
          }
          else if (jogadaUsuario == jogadas.pedra){
            AnsiPen perdeu = new AnsiPen()..red();
            print('=' *  30);
            print(perdeu("O computador ganhou!!"));
            print("O jogador escolheu ${jogadas.pedraSTR}");
            print("O Robo escolheu ${jogadas.tesouraSTR}");
            print('=' *  30);
          }
          else if(jogadaUsuario != jogadas.papel || jogadaUsuario != jogadas.pedra || jogadaUsuario != jogadas.tesoura){
            print("Valor invalido!!");
          } 
          else{
            print("ERRO");
          }
        }
        if (robo == jogadas.tesoura){
          if (jogadaUsuario == jogadas.tesoura){
           AnsiPen empatou = new AnsiPen()..yellow();
            print('=' *  30);
            print(empatou("O jogo EMPATOU!!"));
            print("O jogador escolheu ${jogadas.tesouraSTR}");
            print("O Robo escolheu ${jogadas.tesouraSTR}");
            print('=' *  30);
          }    
          else if (jogadaUsuario == jogadas.pedra){
            AnsiPen ganhou = new AnsiPen()..green();
            print('=' *  30);
            print(ganhou("O jogador ganhou!!"));
            print("O jogador escolheu ${jogadas.pedraSTR}");
            print("O Robo escolheu ${jogadas.tesouraSTR}");
            print('=' *  30);
          }
          else if (jogadaUsuario == jogadas.papel){
            AnsiPen perdeu = new AnsiPen()..red();
            print('=' *  30);
            print(perdeu("O computador ganhou!!"));
            print("O jogador escolheu ${jogadas.papelSTR}");
            print("O Robo escolheu ${jogadas.tesouraSTR}");
            print('=' *  30);
          } 
          else if(jogadaUsuario != jogadas.papel || jogadaUsuario != jogadas.pedra || jogadaUsuario != jogadas.tesoura){
            print("Valor invalido!!");
          }
          else{
            print("ERRO");
          }
        }
      }while(jogadaFinal != jogadas.finalizar);
  }
}