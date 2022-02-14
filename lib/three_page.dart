//PAREI 4:30 FLUTTER NV1 - 10

// ignore_for_file: prefer_const_constructors, file_names

//digitei stl
import 'package:flutter/material.dart';

class threePage extends StatelessWidget {
  const threePage({Key? key}) : super(key: key);

  @override
  //criando um widget sem estado
  Widget build(BuildContext context) {
    //criando a variavel ARGS q vai receber um contexto no tipo STRING
    //var args = ModalRoute.of(context)!.settings.arguments as String;

    //retorna o esqueleto da pagina
    return Scaffold(
      //colocando uma appbar
      appBar: AppBar(),
      //colocando cor de fundo
      backgroundColor: Colors.blue.shade100,
      //no body no centro temos um botao
      body: Center(
        child: ElevatedButton(
          //aos ser precionado executa a funcao a baixo e volta a pag
          onPressed: () {
            //verifica se é possivel fazer um POP(retornar a pag), SE sim for possivel, ele retorna
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop('retorno');
            }
          },
          //mensagem do botao e exibindo o valor q ta em ARGS (valor q foi passado na ONE_PAGE)
          child: Text('voltar para a page anterior'),
        ),
      ),
    );
  }
}
