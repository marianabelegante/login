import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var tamanhoLargura =  MediaQuery.of(context).size.width;
    TextEditingController _nameController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text('Faça seu Login'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 256,
              ),
              TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                  onFieldSubmitted: (String value) {
                    print(value);
                  }),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock)),
                onFieldSubmitted: (String value) {
                  print(value);
                },
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: tamanhoLargura,
                child: ElevatedButton(
                  onPressed: () {
                    print('Entrar');
                  },
                  child: const Text('Entrar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,

                  ),),
              ),
              SizedBox(
                height: 16,
              ),
              Text('Criar uma nova conta',
                style: TextStyle(color: Colors.blue),),
              SizedBox(
                height: 16,
              ),
              Text('Esqueci minha senha',
                style: TextStyle(color: Colors.blue),),





            ],
          ),
        ));
  }
}