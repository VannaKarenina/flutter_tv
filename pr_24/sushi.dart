import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int val;

  @override
  void initState() {
    val = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Суши Wok с Aliexpress',
          ),
          centerTitle: true,
        ),
        body: MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.indigo,
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.tealAccent,
          )
        )
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          sushiCard(
            text: 'Креветка, огурец, авокадо, яки соус, масаго',
            image: 'https://img-api.yumapos.ru/image/crop/800x800/b9abdee3-28ee-68f3-10fb-b48c8a0ff801.jpeg',
            price: '999 р.',
            name: 'Рис вода миска кушат рыба'
          ),
          sushiCard(
              text: 'Лосось, сливочный сыр, огурец',
              image: 'https://img-api.yumapos.ru/image/crop/800x800/59dccc3b-2ff2-149a-af88-ac4e82772b6b.jpeg',
              price: '999 р.',
              name: 'Филадельфия'
          ),
          sushiCard(
              text: 'Угорь, сливочный сыр, огурец, унаги соус, кунжут',
              image: 'https://img-api.yumapos.ru/image/crop/800x800/bf519b97-4f60-605b-508e-4db762ebb270.jpeg',
              price: '999 р.',
              name: 'Филадельфия с угрем'
          ),
        ],
      ),
    );
  }
}

class sushiCard extends StatefulWidget {
  final String text;
  final String image;
  final String name;
  final String price;
  const sushiCard({
    Key? key,
    required this.text,
    required this.image,
    required this.price,
    required this.name
  }) : super(key: key);

  @override
  State<sushiCard> createState() => _sushiCardState();
}

class _sushiCardState extends State<sushiCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.black26,
          )
        )
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.network(
            widget.image,
            width: 150,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  widget.name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      )
                ),
                SizedBox(height: 10),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: sushiButton(),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            Text(
                              widget.price,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              '50 р.',
                              style: TextStyle(
                                fontSize: 30,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class sushiButton extends StatefulWidget {
  const sushiButton({
    Key? key,
  }) : super(key: key);

  @override
  State<sushiButton> createState() => _sushiButtonState();
}

class _sushiButtonState extends State<sushiButton> {
  late int val;

  @override
  void initState() {
    val = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.blue),
            ),
            child: Ink(
              color: Colors.green,
              child: Icon(
                Icons.add,
                size: 50,
                color: Colors.yellow
              ),
            ),
            onPressed: () {
              setState(() {
                val += 1;
              });
            },
          ),
          Text(
            '${val}',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.blue),
            ),
            child: Ink(
              color: Colors.green,
              child: Icon(
                  Icons.remove,
                  size: 50,
                  color: Colors.yellow
              ),
            ),
            onPressed: () {
              setState(() {
                if (val > 0) val -= 1;
              });
            },
          ),
        ],
      ),
    );
  }
}