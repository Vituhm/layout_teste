import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  State createState() => new LayoutState();
}

class LayoutState extends State<Layout> {
  
  Row criarRow(String texto){
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Container(
          margin: EdgeInsets.only(top: 15),
          child: new Text(
            texto,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          width: 350,
          color: Colors.blueAccent,
          padding: EdgeInsets.all(15)
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // barra de título
        appBar: AppBar(
          title: Text("Layout - Flutter"),
          backgroundColor: Colors.blueAccent,
        ),
        
        // menu lateral (hamburguer)
        drawer: new Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // cabeçalho do menu
              DrawerHeader(
                child: Text("Itens do Menu"),
                decoration: BoxDecoration(color: Colors.blueAccent),
              ),

              // item 1 
              new ListTile(
                title: Text("Flutter"),
                subtitle: Text("Tudo são Widgets"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(
                  Icons.flash_on,
                  color: Colors.red,
                  size: 32,
                ),
                onTap: (){
                  // ação ou método
                  Navigator.pop(context);
                }
              ),
                
              // item 2 
              new ListTile(
                title: Text("Dart"),
                subtitle: Text("É muuito forte!"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(
                  Icons.mood,
                  color: Colors.amber.shade700,
                ),
                onTap: (){
                  // ação ou método
                  Navigator.pop(context);
                }
              ),
                
              // item 3
              new ListTile(
                title: Text("Cafessíneo"),
                subtitle: Text("Quero cafééé!"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(
                  Icons.coffee,
                  color: Colors.brown.shade600,
                  size: 32,
                ),
                onTap: (){
                  // ação ou método
                  Navigator.pop(context);
                }
              ),

              // item 4
              new ListTile(
                title: Text("Configurações"),
                subtitle: Text("Ajustes do Sitema"),
                trailing: Icon(Icons.keyboard_arrow_right),
                leading: Icon(
                  Icons.settings,
                  color: Colors.teal,
                  size: 32,
                ),
                onTap: (){
                  // ação ou método
                  Navigator.pop(context);
                }
              ),
            ],
          )
        ),
        
        // Corpo (body) 
        body: new Column(
          children: [
            // Linhas criadas a partir do método criarRow
            criarRow("Linha de teste"),
            criarRow("Segunda Linha"),
            criarRow("Terceira Linha"),

            // Linha criada manualmente
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Container(
                  margin: EdgeInsets.only(top: 15),
                  child: new Text(
                    "Linha criada manualmente",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  width: 350,
                  color: Colors.pinkAccent,
                  padding: EdgeInsets.all(15)
                ),
              ],
            ),

            new Padding(padding: EdgeInsets.all(8)),
            
            new Center(
              child: ElevatedButton(
                child: Text("Mostrar SnackBar"),
                onPressed: (){
                  final snackBar = SnackBar(
                    content: Text("Buenas!"),
                    duration: new Duration(milliseconds: 2500),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: "OK",
                      onPressed: (){
                        // ação ou método
                      },
                    ),
                  );
                  // Exibindo o SnackBar usando o ScaffoldMessenger
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            ),

          ],
        ),

        // // corpo
        // body: Center(
        //   child: ElevatedButton(
        //     child: Text("Mostrar SnackBar"),
        //     onPressed: (){
        //       final snackBar = SnackBar(
        //         content: Text("Buenas"),
        //         duration: new Duration(milliseconds: 2500),
        //         behavior: SnackBarBehavior.floating,
        //         action: SnackBarAction(
        //           label: "OK",
        //           onPressed: (){
        //             // ação ou método
        //           },
        //         ),
        //       );
        //       // Exibindo o SnackBar usando o ScaffoldMessenger
        //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //     },
        //   ),
        // ),

        // barra de ícones (bottomNavigationBar)
        bottomNavigationBar: BottomNavigationBar(
          items: [
            // ícone Home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),

            // ícone Configurações
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações"
            ),

            // ícone Login
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "Login",
            ),
          ],
        ),
      ),
    );
  }
}
