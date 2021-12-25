import 'package:cloth_store_app/filter_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyleFilterPage extends StatefulWidget {
  @override
  _StyleFilterPageState createState() => _StyleFilterPageState();
}

class _StyleFilterPageState extends State<StyleFilterPage> {
  int _sizeSelected = 0;
  List<Color> colorList = [
    Colors.black,
    Colors.grey,
    Colors.purple,
    Colors.brown,
    Colors.indigo,
    Colors.red,
    Colors.cyan,
    Colors.green,
  ];
  List<String> silhouetteList = [
    'A-LINE',
    'FIT AND FLARE',
    'PENCIL',
    'SHIFT',
    'CIRCLE',
    'TUBE',
    'NONE',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(
            Icons.clear,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Filters',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('SIZES'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 0;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                                color: _sizeSelected == 0
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'XXS',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 1;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                                color: _sizeSelected == 1
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'XS',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 2;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                                color: _sizeSelected == 2
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'S',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 3;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                                color: _sizeSelected == 3
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'M',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 4;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                                color: _sizeSelected == 4
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'L',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: ExpansionTile(
                  title: Text('COLOR'),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: GridView.count(
                            crossAxisCount: 5,
                            childAspectRatio: 1,
                            children: colorList
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: e,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                )
                                .toList()),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: ExpansionTile(
                  title: Text('PRINT'),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: GridView.count(
                            crossAxisCount: 5,
                            childAspectRatio: 1,
                            children: colorList
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: e,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                )
                                .toList()),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: ExpansionTile(
                  title: Text('SILHOUETTE'),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: GridView.count(
                            crossAxisCount: 3,
                            childAspectRatio: 4,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            children: silhouetteList
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(child: Text(e),) ,
                                    ),
                                  ),
                                )
                                .toList()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Container(
          height: 72,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'RESET',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text('APPLY'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
