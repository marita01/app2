import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          'Caminho Sereno',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomContainer(
            title: 'Massagem',
            iconPath: 'assets/massagem.jpg',
          ),
          CustomContainer(
            title: 'Respiração',
            iconPath: 'assets/respiracao.png',
          ),
          CustomContainer(
            title: 'Alongamento',
            iconPath: 'assets/alongamento.png',
          ),
          CustomContainer(
            title: 'Leitura',
            iconPath: 'assets/leitura.jpeg',
          ),
          CustomContainer(
            title: 'Meditação',
            iconPath: 'assets/meditacao.jpg',
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String title;
  final String iconPath;

  const CustomContainer({required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            width: 60.0,
            height: 60.0,
          ),
          SizedBox(width: 20.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.green.shade900,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
            },
            color: Colors.green.shade900,
          ),
        ],
      ),
    );
  }
}
