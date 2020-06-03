// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'QuotesData.dart';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:navigation_bar_example/quotes/quotes.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget. App starts running from here
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      //Home Screen of the app, opens up to 'Today'
      home: MyStatefulWidget(),
    );
  }
}

//The HomeScreen Widget
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isFavorited = false;
  static int selectedIndex = 0;



  //Function to change the state of the favorite button
  void toggleState() {
    setState(() {
      if (isFavorited) {
        isFavorited = !isFavorited;
      } else if (!isFavorited) {
        isFavorited = !isFavorited;
      }
    });
  }

  //BottomNavigationBar function to navigate in app
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;

      switch (index) {
        case 1:
          {
            selectedIndex = 0;
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return StoicScreen();
            }));
          }
          break;

        case 2:
          {
            selectedIndex = 0;
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return LibraryScreen();
            }));
          }
          break;

        case 3:
          {
            selectedIndex = 0;
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return AboutPage();
            }));
          }
          break;
      }
    });
  }

  //Returns the text that is displayed on the 'today' screen
  Widget homeScreen() {
    var rng = new Random();
    var num = rng.nextInt(61) + 1;
    QuotesData obj;

    switch(num){
      case 1: {
        obj = epictetus;
      }
      break;

      case 2: {
        obj = cato;
      }
      break;

      case 3: {
        obj = chrysippus;
      }
      break;

      case 4: {
        obj = cleanthes;
      }
      break;

      case 5: {
        obj = gaius;
      }
      break;

      case 6: {
        obj = seneca;
      }
      break;

      case 7: {
        obj = marcusAurelius;
      }
      break;

      case 8: {
        obj = zeno;
      }
      break;

      case 9: {
        obj = aeschines;
      }
      break;

      case 10: {
        obj = aeschylus;
      }
      break;

      case 11: {
        obj = aesop;
      }
      break;

      case 12: {
        obj = agathon;
      }
      break;

      case 13: {
        obj = agesilaus;
      }
      break;

      case 14: {
        obj = alcaeus;
      }
      break;

      case 15: {
        obj = alexander;
      }
      break;

      case 16: {
        obj = anacreon;
      }
      break;

      case 17: {
        obj = anaxagoras;
      }
      break;

      case 18: {
        obj = anaximander;
      }
      break;

      case 19: {
        obj = antisthenes;
      }
      break;

      case 20: {
        obj = archilochus;
      }
      break;

      case 21: {
        obj = archimedes;
      }
      break;

      case 22: {
        obj = aristippus;
      }
      break;

      case 23: {
        obj = aristophanes;
      }
      break;

      case 24: {
        obj = aristotle;
      }
      break;

      case 25: {
        obj = bias;
      }
      break;

      case 26: {
        obj = bion;
      }
      break;

      case 27: {
        obj = chilon;
      }
      break;

      case 28: {
        obj = cleobulus;
      }
      break;

      case 29: {
        obj = critias;
      }
      break;

      case 30:{
        obj = democritus;
      }
      break;

      case 31: {
        obj = demosthenes;
      }
      break;

      case 32: {
        obj = diogenes;
      }
      break;

      case 33: {
        obj = epicharmus;
      }
      break;

      case 34: {
        obj = euclid;
      }
      break;

      case 35: {
        obj = euripedes;
      }
      break;

      case 36: {
        obj = heraclitus;
      }
      break;

      case 37: {
        obj = herodotus;
      }
      break;

      case 38: {
        obj = hesiod;
      }
      break;

      case 39: {
        obj = hippocrates;
      }
      break;

      case 40: {
      obj = homer;
      }
      break;

      case 41: {
        obj = isocrates;
      }
      break;

      case 42: {
        obj = parmenides;
      }
      break;

      case 43: {
        obj = periander;
      }
      break;

      case 44: {
        obj = pericles;
      }
      break;

      case 45: {
        obj = pindar;
      }
      break;

      case 46: {
        obj = pittacus;
      }
      break;

      case 47: {
        obj = plato;
      }
      break;

      case 48: {
        obj = plutarch;
      }
      break;

      case 49: {
        obj = polybius;
      }
      break;

      case 50: {
        obj = protagoras;
      }
      break;

      case 51: {
        obj = pythagoras;
      }
      break;

      case 52: {
        obj = socrates;
      }
      break;

      case 53: {
        obj = solon;
      }
      break;

      case 54: {
        obj = sophocles;
      }
      break;

      case 55: {
        obj = thales;
      }
      break;

      case 56: {
        obj = themistocles;
      }
      break;

      case 57: {
        obj = theocritus;
      }
      break;

      case 58: {
        obj = theognis;
      }
      break;

      case 59: {
        obj = theophrastus;
      }
      break;

      case 60: {
        obj = thucydides;
      }
      break;

      case 61: {
        obj = xenophanes;
      }
      break;

      case 62: {
        obj = xenophon;
      }
      break;
    }

    var index = rng.nextInt(obj.getQuotes().length);


    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AutoSizeText(
                      obj.getQuoteAtIndex(index),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Garamond',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                  maxLines: 10,
                ),
                Divider(height: 30.0),
                Text(
                  obj.getAuthorName(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Cinzel',
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),

          ),
        ),
        Divider(height: 30.0),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue.shade100, Colors.blue.shade500]),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          constraints: BoxConstraints(
            maxWidth: 100.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.autorenew),
                color: Colors.grey.shade700,
                tooltip: 'New quote',
                onPressed: toggleState,
                iconSize: 30.0,
              ),
              IconButton(
                icon: Icon(Icons.info),
                tooltip: 'More info',
                color: Colors.grey.shade700,
                onPressed: (){
                  setState((){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoPage(),
                        settings: RouteSettings(
                          arguments: obj,
                        ),
                      ),
                    );
                  },);
                },
                iconSize: 30.0,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    //The home screen BottomNavigationBar implementation
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Dark Dunes.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: homeScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            title: Text('Today'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_library),
            title: Text('Stoic'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Classical'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('About'),
          )
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue.shade50,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red.shade900,
        onTap: _onItemTapped,
      ),
    );
  }
}



//A placeholder widget; landing page for navigation
class SampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Hello',
        ),
      ),
    );
  }
}

//Widget for header of StickyHeader
Widget stickyHeaderContainer(String text){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Colors.blue.shade50, Colors.blue.shade900]
      ),
    ),
    height: 40.0,
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    alignment: Alignment.centerLeft,
    child: Text(text,
    style: TextStyle(
      color: Colors.white,
      fontFamily: 'Cinzel',
      fontWeight: FontWeight.bold,
    )),

  );
}

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/red_valley.jpg'),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.6),
                  BlendMode.dstATop),

            ),
          ),

          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Designed and Developed by',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,

                    )),
                Divider(height: 20.0,
                    color: Colors.transparent),
                Text('Aqib Ahmed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,

                    )
                ),
                Divider(height: 10.0,
                    color: Colors.transparent),
                Text('2020',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,

                    )),
                Divider(height: 40.0,
                    color: Colors.transparent),
                Text('Image Assets from Unsplash',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),
                Divider(height: 20.0,
                    color: Colors.transparent),
                Text('Thanks To: ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),

                Divider(height: 10.0, color: Colors.transparent),
                Text('Jeremy Bishop',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),
                Text('Josh Rose',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),
                Text('Dimitar Donovski',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),
                Text('Sven King',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,

                    )),



              ]
          )
      ),
    );
  }
}




class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {

  @override
  Widget build(BuildContext context) {
    QuotesData data = ModalRoute.of(context).settings.arguments;
    String author = data.getAuthorName();
    String born = data.getBirthYear();
    String death = data.getDeathYear();
    String bio = data.getBio();
    return Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/white_background.jpg'),
              fit: BoxFit.cover,
              colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4),
                  BlendMode.dstATop),
            ),
          ),

          child:
              CustomScrollView(slivers: <Widget>[
                SliverAppBar(
                  pinned: false,
                  expandedHeight: 500.0,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                      background: Image(
                        image: NetworkImage(data.getImageLink()),
                        fit: BoxFit.cover,
                      )),
                ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Divider(height: 30.0,
                        color: Colors.transparent),
                        Text(author,
                        textAlign:TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Garamond',
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Divider(height: 30.0,
                            color: Colors.transparent),
                        Text('Born: $born',
                        textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Cinzel',
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                          ),),
                        Divider(height: 15.0,
                            color: Colors.transparent),
                        Text('Died: $death',
                        textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Cinzel',
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                          ),),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                          child: Text(bio,
                              textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Garamond',
                          )),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
    );
  }
}



//This widget is reached when the 'Classical' button is pressed on the bottomnavigationbar
class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(slivers: <Widget>[
          const SliverAppBar(
            pinned: false,
            expandedHeight: 200.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Author Library',
                  style: TextStyle(
                    fontFamily: 'Garamond',
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                background: Image(
                  image: AssetImage('assets/dark_pattern.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 40.0),
                  child: Column(
                    children: <Widget>[
                      StickyHeader(
                        header: stickyHeaderContainer('A'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Aeschines'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aeschines,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aeschylus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aeschylus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aesop'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aesop,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Agathon'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: agathon,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Agesilaus II'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: agesilaus,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Alcaeus of Mytilene'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: alcaeus,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Alexander the Great'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: alexander,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Anacreon'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: anacreon,
                                    ),
                                  ),
                                );
                              },
                            ),

                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Anaxagoras'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: anaxagoras,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Anaximander'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: anaxagoras,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Antisthenes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: antisthenes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Archilochus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: archilochus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Archimedes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: archimedes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aristippus of Cyrene'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aristippus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aristophanes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aristophanes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Aristotle'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: aristotle,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('B'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Bias of Priene'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: bias,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Bion of Borysthenes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: bion,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('C'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Chilon of Sparta'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: chilon,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Cleobulus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: cleobulus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Critias'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: critias,
                                    ),
                                  ),
                                );
                              },
                            ),

                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('D'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Democritus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: democritus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Demosthenes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: demosthenes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Diogenes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: diogenes,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('E'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Epicharmus of Kos'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: epicharmus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Euclid'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: euclid,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Euripedes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: euripedes,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('H'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Heraclitus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: heraclitus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Herodotus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: herodotus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Hesiod'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: hesiod,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Hippocrates'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: hippocrates,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Homer'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: homer,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('I'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Isocrates'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: isocrates,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('P'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Parmenides'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: parmenides,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Periander'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: periander,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Pericles'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: pericles,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Pindar'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: pindar,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Pittacus of Mytilene'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: pittacus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Plato'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: plato,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Plutarch'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: plutarch,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Polybius'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: polybius,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Protagoras'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: protagoras,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Pythagoras'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: pythagoras,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('S'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Socrates'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: socrates,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Solon'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: solon,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Sophocles'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: sophocles,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('T'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Thales'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: thales,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Themistocles'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: themistocles,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Theocritus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: theocritus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Theognis of Megara'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: theognis,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Theophrastus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: theophrastus,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Thucydides'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: thucydides,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('X'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Xenophanes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: xenophanes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Xenophon'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: parmenides,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

//Function to return individual list elements inside a container
Widget libraryScreenContainer(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
    child: Container(
      margin: EdgeInsets.all(8.0),
      alignment: Alignment.centerLeft,
      child: Text(text,
          style: TextStyle(
            fontFamily: 'Cinzel',
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          )),
    ),
  );
}


class StoicScreen extends StatefulWidget {
  @override
  _StoicScreenState createState() => _StoicScreenState();
}

class _StoicScreenState extends State<StoicScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(slivers: <Widget>[
          const SliverAppBar(
            pinned: false,
            expandedHeight: 200.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'The Stoics',
                  style: TextStyle(
                    fontFamily: 'Garamond',
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                background: Image(
                  image: AssetImage('assets/mountains.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 40.0),
                  child: Column(
                    children: <Widget>[
                      StickyHeader(
                        header: stickyHeaderContainer('C'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Cato the Younger'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: cato,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Cleanthes'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: cleanthes,
                                    ),
                                  ),
                                );
                              },
                            ),
                            Divider(),
                            GestureDetector(
                              child: libraryScreenContainer('Chrysippus of Soli'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: chrysippus,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),

                      StickyHeader(
                        header: stickyHeaderContainer('E'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Epictetus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: epictetus,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('G'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Gaius Musonius Rufus'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: gaius,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),

                      StickyHeader(
                        header: stickyHeaderContainer('M'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Marcus Aurelius'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: marcusAurelius,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('S'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Seneca the Younger'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: seneca,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      StickyHeader(
                        header: stickyHeaderContainer('Z'),
                        content: Column(
                          children: <Widget>[
                            GestureDetector(
                              child: libraryScreenContainer('Zeno of Citium'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuotesPage(),
                                    settings: RouteSettings(
                                      arguments: zeno,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class QuotesPage extends StatefulWidget {
  @override
  _QuotesPageState createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {
  bool _isFavorite = false;
  void toggleState(){
    setState((){
      if(_isFavorite){
        _isFavorite = !_isFavorite;
      }
      else if(!_isFavorite){
        _isFavorite = !_isFavorite;
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    QuotesData data = ModalRoute.of(context).settings.arguments;
    final List<String> quotes = data.getQuotes();

    return SafeArea(
      child: Scaffold(
        body: ListView.separated(
          padding: const EdgeInsets.all(8.0),
          itemCount: quotes.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                child: Center(child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(quotes[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Garamond',
                        fontSize: 20.0,
                      ),
                      )
                    ),
                    Divider(height: 15.0, color: Colors.transparent),
                  ],
                )),
              ),
            );
          },
        separatorBuilder: (BuildContext context, int index) => const Divider())),
    );

//      appBar: AppBar(title: Text('Quotes by $name')),
//      body: Builder(
//        builder: (context) {
//          final double height = MediaQuery.of(context).size.height;
//          return CarouselSlider(
//            options: CarouselOptions(
//              height: height,
//              viewportFraction: 1.0,
//              enlargeCenterPage: false,
//// autoPlay: false,
//            ),
//            items: data
//                .getQuotes()
//                .map((item) => Container(
//              child: Padding(
//                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
//                child: Center(
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                    children: <Widget>[
//                      Text(item,
//                          textAlign: TextAlign.justify,
//                          style: TextStyle(
//                            fontFamily: 'Helvetica',
//                          )),
//                      Text('''
//
//
//$name''', textAlign: TextAlign.center),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//            )
//                .toList(),
//          );
//        },
//      ),
//    );
  }
}





