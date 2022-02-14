//digitei stl

import 'package:exemplo8/two_page.dart';
import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  //criando um widget sem estado
  Widget build(BuildContext context) {
    //retorna o esqueleto da pagina
    return Scaffold(
      //no body no centro temos um botao
      body: Center(
        child: ElevatedButton(
          //aos ser precionado executa a funcao
          onPressed: () {
            //executa a funcao navigator, q nos passamos o nome da rota q é o TwoPage,
            //e passando o argumento 123 em forma de string
            Navigator.of(context)
                .pushNamed('/twoPage')
                //aguardando a imprimindo um valor com o .then(value)
                .then((value) => print(value));
          }, //texto do botao
          child: Text('ir para segunda page'),
        ),
      ),
    );
  }
}

//dai aparece o botao voltar no TOPBAR
//            Navigator.of(context)
//                .pushNamed('/twoPage', arguments: '123')
//                //aguardando a imprimindo um valor com o .then(value)
//                .then((value) => print(value));
