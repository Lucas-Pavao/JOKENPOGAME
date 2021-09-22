import '../modelo/jogadas.dart';
import '../modelo/robo.dart';
import 'dart:io';
main() {
  
  var jogadas = Jogadas();
  
  var robo = Robo();
  
  bool jogadaFinal = true;
  int iniciar = 0;
  
  /*
  
  
  Para iniciar use o commando 

  dart teste/testejogo.dart
  
  NO TERMINAL!!
  
  */
  do{
  print("\n\n\n\n\n\n");
  print("~" * 120);
  print("░░░░░██╗░█████╗░██╗░░██╗███████╗███╗░░██╗██████╗░░█████╗░      ░██████╗░░█████╗░███╗░░░███╗███████╗");
  print("░░░░░██║██╔══██╗██║░██╔╝██╔════╝████╗░██║██╔══██╗██╔══██╗      ██╔════╝░██╔══██╗████╗░████║██╔════╝");
  print("░░░░░██║██║░░██║█████═╝░█████╗░░██╔██╗██║██████╔╝██║░░██║      ██║░░██╗░███████║██╔████╔██║█████╗░░");
  print("██╗░░██║██║░░██║██╔═██╗░██╔══╝░░██║╚████║██╔═══╝░██║░░██║      ██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░");
  print("╚█████╔╝╚█████╔╝██║░╚██╗███████╗██║░╚███║██║░░░░░╚█████╔╝      ╚██████╔╝██║░░██║██║░╚═╝░██║███████╗");
  print("░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝╚═╝░░░░░░╚════╝░      ░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝");
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
  for (int i = 0; i < 3; i++){
  stdout.write("\nCARREGANDO");
  sleep(Duration(seconds: 1));
  stdout.write('.');
  sleep(Duration(seconds: 2));
  stdout.write('.');
  sleep(Duration(seconds: 3));
  stdout.write('.');
  
  
  }

  print("\n");

 

  do{
  print("O que você quer jogar?\n");
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
  
  if (robo.numeroAleatorio == jogadas.pedra){
    if (jogadaUsuario == jogadas.pedra){
      print('=' *  30);
      print("O jogo EMPATOU!!");
      print("O jogador escolheu ${jogadas.pedraSTR}");
      print("O Robo escolheu ${jogadas.pedraSTR}");
      print('=' *  30);
    }    
    if (jogadaUsuario == jogadas.papel){
      print('=' *  30);
      print("O jogador ganhou!!");
      print("O jogador escolheu ${jogadas.papelSTR}");
      print("O Robo escolheu ${jogadas.pedraSTR}");
      print('=' *  30);
    }
    if (jogadaUsuario == jogadas.tesoura){
      print('=' *  30);
      print("O computador ganhou!!");
      print("O jogador escolheu ${jogadas.pedraSTR}");
      print("O Robo escolheu ${jogadas.tesouraSTR}");
      print('=' *  30);
    }
    if(jogadaUsuario != jogadas.papel && jogadaUsuario != jogadas.pedra && jogadaUsuario != jogadas.tesoura){
      print("Valor invalido!!");
    }
  }
  if (robo.numeroAleatorio == jogadas.papel){
    if (jogadaUsuario == jogadas.papel){
      print('=' *  30);
      print("O jogo EMPATOU!!");
      print("O jogador escolheu ${jogadas.papelSTR}");
      print("O Robo escolheu ${jogadas.papelSTR}");
      print('=' *  30);
    }    
    if (jogadaUsuario == jogadas.tesoura){
      print('=' *  30);
      print("O jogador ganhou!!");
      print("O jogador escolheu ${jogadas.tesouraSTR}");
      print("O Robo escolheu ${jogadas.papelSTR}");
      print('=' *  30);
    }
    if (jogadaUsuario == jogadas.pedra){
      print('=' *  30);
      print("O computador ganhou!!");
      print("O jogador escolheu ${jogadas.pedraSTR}");
      print("O Robo escolheu ${jogadas.tesouraSTR}");
      print('=' *  30);
    }
    if(jogadaUsuario != jogadas.papel && jogadaUsuario != jogadas.pedra && jogadaUsuario != jogadas.tesoura){
      print("Valor invalido!!");
    } 
  }
  if (robo.numeroAleatorio == jogadas.tesoura){
    if (jogadaUsuario == jogadas.tesoura){
      print('=' *  30);
      print("O jogo EMPATOU!!");
      print("O jogador escolheu ${jogadas.tesouraSTR}");
      print("O Robo escolheu ${jogadas.tesouraSTR}");
      print('=' *  30);
    }    
    if (jogadaUsuario == jogadas.pedra){
      print('=' *  30);
      print("O jogador ganhou!!");
      print("O jogador escolheu ${jogadas.pedraSTR}");
      print("O Robo escolheu ${jogadas.tesouraSTR}");
      print('=' *  30);
    }
    if (jogadaUsuario == jogadas.papel){
      print('=' *  30);
      print("O computador ganhou!!");
      print("O jogador escolheu ${jogadas.papelSTR}");
      print("O Robo escolheu ${jogadas.tesouraSTR}");
      print('=' *  30);
    } 
    if(jogadaUsuario != jogadas.papel && jogadaUsuario != jogadas.pedra && jogadaUsuario != jogadas.tesoura){
      print("Valor invalido!!");
    }
  }
  }while(jogadaFinal != jogadas.finalizar);
}else{
  print("Senha incorreta!!");
}
}