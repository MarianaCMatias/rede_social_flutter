import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Thoughts of a reader'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [],
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                          child: Image.network(
                              "https://th.bing.com/th/id/R.a9b0b5af8859f1791226d5cb69f99d02?rik=ubWL5KrlHaLkzA&riu=http%3a%2f%2fblog.maxieduca.com.br%2fwp-content%2fuploads%2f2017%2f11%2fLeitura-Destaque.png&ehk=KqjDlCod75%2bm4yMqwKui99zNd7eZ3gLEMV%2bIGeR%2fCvU%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1")),
                      Container(
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                              color: Color.fromARGB(255, 49, 21, 207),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 49, 21, 207),
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text("Compartilhe suas leituras!",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                          child: Image.network(
                              "https://kinsta.com/pt/wp-content/uploads/sites/3/2020/02/wordpress-forum-plugins-1024x512.png")),
                      Container(
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 49, 21, 207),
                  height: 50,
                  child: Center(
                    child: Text(
                      "Faça resenhas críticas!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                          child: Image.network(
                              "https://espaconave.com.br/wp-content/uploads/2019/03/como-escrever-um-livro-1440x730.jpg")),
                      Container(
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ElevatedButton(
                child: Text(
                    "Cadastre-se".toUpperCase(),
                    style: TextStyle(fontSize: 14, color: Colors.white)
                ),
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            side: BorderSide(color: Colors.blue)
                        )
                    )
                ),
                onPressed: () => null
            ),

OutlinedButton.icon(
              icon: Icon(Icons.home),
              label: Text("Entre"),
              onPressed: () => print("it's pressed"),
              style: ElevatedButton.styleFrom(
                side: BorderSide(width: 2.0, color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ),
                
              ],
            ),
          ),
        ));
  }
}