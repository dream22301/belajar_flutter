import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            spacing: 10,
            children: [
              Center(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 50,
                      color: Colors.amber,
                      child: Center(
                        child: Text("Mobil Lama"),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 50,
                      color: Colors.white,
                      child: Center(
                        child: Text("Mobil Terbaru"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[50],
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 360,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset('assets/Koennigsseg.jpg'),
                      ),
                    ),
                    Container(
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Koenigsseg"),
                      )
                    ),
                    Container(
                      width: 360,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(child: Text("Ini Adalah Koenigsseg jesko")),
                    )
                  ],
                )
              ),
              Container(
                width: 370,
                height: 140,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(
                          width: 185,
                          height: 90,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/Lexus.jpg'),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 90,
                            child: Center(
                              child: Text('Ini Lexus LFA'),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey[200],
                      child: Center(
                        child: Text("Lexus LFA"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                height: 140,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(
                          width: 185,
                          height: 90,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/Audi.jpg'),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 90,
                            child: Center(
                              child: Text('Ini Audi R8'),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey[200],
                      child: Center(
                        child: Text("Audi R8"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                height: 140,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(
                          width: 185,
                          height: 90,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/Camaro.jpg'),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 90,
                            child: Center(
                              child: Text('Ini adalah Camaro SS'),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey[200],
                      child: Center(
                        child: Text("Camaro SS"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                height: 140,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(
                          width: 185,
                          height: 90,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/Dodge_Challenger.jpg'),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 90,
                            child: Center(
                              child: Text('Ini adalah Dodge Challenger'),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey[200],
                      child: Center(
                        child: Text("Dodge Challenger"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                height: 140,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(
                          width: 185,
                          height: 90,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/Dodge.jpg'),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 90,
                            child: Center(
                              child: Text('Ini adalah Dodge SRT Viper'),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey[200],
                      child: Center(
                        child: Text("Dodge SRT Viper"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                height: 140,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(
                          width: 185,
                          height: 90,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/F1.jpg'),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 90,
                            child: Center(
                              child: Text('Toyota F1'),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey[200],
                      child: Center(
                        child: Text("Toyota F1"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                height: 140,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        SizedBox(
                          width: 185,
                          height: 90,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.asset('assets/Mclaren.jpg'),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 90,
                            child: Center(
                              child: Text('Ini adalah Mclaren Spider 570s'),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey[200],
                      child: Center(
                        child: Text("Mclaren Spider 570s"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ]
      )
    );
  }
}