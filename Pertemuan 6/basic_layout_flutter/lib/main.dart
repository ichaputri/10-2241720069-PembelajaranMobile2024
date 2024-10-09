import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';

    // class _buildDecoratedImage
    Widget _buildDecoratedImage(int imageIndex) => Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('images/pic$imageIndex.jpg'),
      ),
    );

    // class _buildImageRow
    Widget _buildImageRow(int imageIndex) => Row(
      children: [
        _buildDecoratedImage(imageIndex),
        _buildDecoratedImage(imageIndex + 1),
      ],
    );

    // Fungsi untuk membangun kolom gambar
    Widget _buildImageColumn() {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.black26,
        ),
        child: Column(
          children: [
            _buildImageRow(1), // Panggil fungsi _buildImageRow
            _buildImageRow(3), // Panggil fungsi _buildImageRow
          ],
        ),
      );
    }

    // Fungsi untuk membangun daftar tile grid
    List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
      ),
      child: Image.asset('images/pic$i.jpg'), // Gambar sesuai nama
    ),
    );

    // Fungsi untuk membangun grid
    Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30),
    );

    // Widget untuk menampilkan bintang
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    // Widget untuk menampilkan rating
    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    // Gaya teks untuk iconList
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // Widget untuk menampilkan ikon dan teks
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    // Widget untuk menampilkan title dan subtitle
    final titleText = const Text(
      'Delicious Dish',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );

    final subTitle = const Text(
      'A wonderful recipe for everyone',
      style: TextStyle(
        fontSize: 16,
        color: Colors.black54,
      ),
    );

    // widget untuk mainimage
    final mainImage = Image.asset('images/brownies.jpg'); // Ganti dengan nama gambar yang sesuai

    // Container untuk menampung semua elemen
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          // titleText,
          // subTitle,
          // ratings,
          // iconList,
          _buildImageColumn(),
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        //     body: const Center(
        //       child: Text('Hello World'),
        //     ),
        //     // body: Column(
        //     //   mainAxisAlignment: MainAxisAlignment.center,
        //     //   crossAxisAlignment: CrossAxisAlignment.center,
        //     //   children: <Widget>[
        //     //     // Widget Teks
        //     //     const Center(
        //     //     child: Text('Hello World'),
        //     //     ),
        //     //     SizedBox(height: 20),
        //     //
        //     //     // Widget Gambar
        //     //     Image.asset(
        //     //       'images/gunung.jpg', // Pastikan ada gambar di direktori ini
        //     //       fit: BoxFit.cover,
        //     //     ),
        //     //
        //     //     SizedBox(height: 20),
        //     //
        //     //     // Widget Ikon
        //     //     Icon(
        //     //       Icons.star,
        //     //       color: Colors.red[500],
        //     //     ),
        //     //   ],
        //     // ),
        //   ),
        // );
        // return const CupertinoApp(
        //   title: 'Flutter layout demo',
        //   theme: CupertinoThemeData(
        //     brightness: Brightness.light,
        //     primaryColor: CupertinoColors.systemBlue,
        //   ),
        //   home: CupertinoPageScaffold(
        //     navigationBar: CupertinoNavigationBar(
        //       backgroundColor: CupertinoColors.systemGrey,
        //       middle: Text('Flutter layout demo'),
        //     ),
        //     child: Center(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: <Widget>[
        //           Text('Hello World'),
        //         ],
        //       ),
        //     ),
        //   ),
        // );
        body: Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
            height: 600,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 440,
                    child: leftColumn,
                  ),
                  // mainImage,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
