import 'package:flutter/material.dart';
import 'package:tictactoe1/game_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GameButton> buttonslist;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonslist = doInit();
  }

  List<GameButton> doInit(){
    var gamebuttons = <GameButton>[
      new GameButton(id: 1),
      new GameButton(id: 2),
      new GameButton(id: 3),
      new GameButton(id: 4),
      new GameButton(id: 5),
      new GameButton(id: 6),
      new GameButton(id: 7),
      new GameButton(id: 8),
      new GameButton(id: 9)
    ];
    return gamebuttons;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe")
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          childAspectRatio: 1.0, 
          crossAxisSpacing: 9.0, 
          mainAxisSpacing: 9.0),
        itemCount: buttonslist.length,
        itemBuilder: (context,i)=> SizedBox(
          width: 100.0,
          height: 100.0,
          child: RaisedButton(
            onPressed: null,
            padding: const EdgeInsets.all(8.0),
            child: Text(buttonslist[i].text, style: TextStyle(color: Colors.white, fontSize: 20)),
            color: buttonslist[i].bg,
            disabledColor: buttonslist[i].bg,
            )
        )
      ),
    );
  }
}