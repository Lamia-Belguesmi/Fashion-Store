import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'filter_page.dart';

class StyleMainPage extends StatefulWidget {
  const StyleMainPage({Key? key}) : super(key: key);

  @override
  _StyleMainPageState createState() => _StyleMainPageState();
}

class _StyleMainPageState extends State<StyleMainPage> {
  int _pageIndex = 0;
  int _tabIndex = 0;
  List<String> tabTitle = ['Weekend', 'Comfy', 'Travel', 'Meetings', 'ALL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.arrow_back_ios),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 8, right: 8, top: 4, bottom: 4),
                                  child: Text(
                                    'Show Available',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Icon(Icons.tune),
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StyleFilterPage(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: tabTitle.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _tabIndex = index;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8),
                                    color: _tabIndex == index
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      tabTitle[index],
                                      style: TextStyle(
                                        color: _tabIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 0.7,
                      crossAxisCount: 2,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              height: 350,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(Icons.clear),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        Text(
                                          'ADD TO COLLECTION',
                                          style: TextStyle(),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.add),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 200,
                                      child: ListView.builder(
                                        itemCount: 10,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage('images/1.jpg'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        16,

                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(

                                                child: Text('ALL WISHLIST'),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: MaterialButton(
                                        minWidth: double.infinity,
                                        onPressed: () {},
                                        child: Text(
                                          'DONE',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage('images/1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 0,
                                        top: 0,
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.favorite_border,
                                          ),
                                          onPressed: () {},
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                flex: 7,
                              ),
                              SizedBox(height: 10,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Winter Coat',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      ' S M XL',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 2,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _pageIndex,
        onTap: (newPageIndex) {
          setState(() {
            _pageIndex = newPageIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_browser),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wish List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.move_to_inbox),
            label: 'My Box',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'People',
          ),
        ],
      ),
    );
  }
}
