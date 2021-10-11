import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Categories> category = [
      Categories(0, 'Charis'),
      Categories(1, 'Sofas'),
      Categories(2, 'Cupboards'),
      Categories(3, 'Tables'),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          height: MediaQuery.of(context).size.height - 100,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                  height: 100,
                  width: double.infinity,
                  child: Expanded(
                      child: Text(
                    'Perfect Furniture              For Your House',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ))),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
                height: 50.0,
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Expanded(
                      flex: 9,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Here',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: double.infinity,
                          color: Colors.black,
                          child: Icon(
                            Icons.sort,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                height: 30.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: category.length,
                    itemBuilder: (context, i) => Container(
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.symmetric(vertical: 3.0),
                          decoration: 2 == category[i].index
                              ? BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 3, color: Colors.black)))
                              : null,
                          width: 100,
                          child: Expanded(
                            child: Text(
                              category[i].type,
                              style: TextStyle(
                                  color: i == category[i].index
                                      ? Colors.black
                                      : Colors.grey),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 25.0,
              ),
              Expanded(
                child: Container(
                  // width: double.infinity,
                  // height: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                height: 250,
                                child: Image.asset(
                                  'assets/item1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text('Lounge Chair',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('499 \$',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold)),
                                  Icon(Icons.favorite_border)
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 50.0),
                        Container(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                height: 250,
                                child: Image.asset(
                                  'assets/item2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text('Wing Chair',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('69 \$',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold)),
                                  Icon(Icons.favorite_border)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}

class Categories {
  final int index;
  final String type;

  Categories(this.index, this.type);
}
