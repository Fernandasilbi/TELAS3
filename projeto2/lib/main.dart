import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(MulherApp());
}

class MulherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cuidar-se',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        scaffoldBackgroundColor: Colors.purple[50],
        fontFamily: 'Pacifico',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuidar-se 💖', style: TextStyle(fontFamily: 'DancingScript', fontSize: 26)),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vinda ao Cuidar-se! 🌸',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pinkAccent, fontFamily: 'DancingScript'),
            ),
            SizedBox(height: 20),
            _buildButton(context, 'Dicas de Autocuidado 🌸', DicasPage()),
            SizedBox(height: 10),
            _buildButton(context, 'Saúde Feminina 💕', SaudePage()),
            SizedBox(height: 10),
            _buildButton(context, 'Calendário de Autocuidado 📅', CalendarioPage()),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget page) {
    return OpenContainer(
      closedElevation: 5,
      closedColor: Colors.white,
      closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      transitionType: ContainerTransitionType.fadeThrough,
      openBuilder: (context, _) => page,
      closedBuilder: (context, openContainer) => ElevatedButton(
        onPressed: openContainer,
        child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Pacifico')),
      ),
    );
  }
}

class DicasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dicas de Autocuidado 🌸')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Cabelo:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
            Text(' - Hidrate os fios semanalmente.\n - Evite calor excessivo.\n - Use protetor térmico antes do secador.'),
            SizedBox(height: 10),
            Text('Maquiagem:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
            Text(' - Remova a maquiagem antes de dormir.\n - Utilize produtos adequados para seu tipo de pele.\n - Hidrate a pele diariamente.'),
            SizedBox(height: 10),
            Text('Depilação:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
            Text(' - Esfolie a pele antes de depilar.\n - Hidrate a pele após a depilação.\n - Evite exposição ao sol logo após a depilação.'),
          ],
        ),
      ),
    );
  }
}

class SaudePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saúde Feminina 💕')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Alimentação:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
            Text(' - Beba pelo menos 2L de água por dia.\n - Consuma alimentos ricos em ferro.\n - Evite excesso de açúcar e gorduras.'),
            SizedBox(height: 10),
            Text('Exercícios:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
            Text(' - Pratique atividades físicas regularmente.\n - Faça alongamentos diários.\n - Mantenha uma rotina de exercícios leves.'),
            SizedBox(height: 10),
            Text('Bem-estar emocional:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
            Text(' - Tenha momentos de autocuidado.\n - Medite e pratique a respiração consciente.\n - Priorize seu sono e descanso.'),
          ],
        ),
      ),
    );
  }
}

class CalendarioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calendário de Autocuidado 📅')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Sugestões de Rotina:', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.pinkAccent)),
            Text(' - Segunda: Hidratação capilar\n - Terça: Exercícios físicos\n - Quarta: Spa em casa\n - Quinta: Esfoliação e depilação\n - Sexta: Rotina de skincare\n - Sábado: Meditação e relaxamento\n - Domingo: Planejamento da semana'),
          ],
        ),
      ),
    );
  }
}
