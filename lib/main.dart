//? stateless dan stateFull

/* import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull and Stateless'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('${counter}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            counter = counter - 1;
                            print(counter);
                          },
                          child: Text('-')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            counter = counter + 1;
                            print(counter);
                          },
                          child: Text('+')),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Statefullwg(),
                      ),
                    );
                  },
                  child: Text('To Statefull'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Statefullwg extends StatefulWidget {
  int Counter = 0;
  @override
  State<Statefullwg> createState() => _StatefullwgState();
}

class _StatefullwgState extends State<Statefullwg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull and Stateless'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('${widget.Counter}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.Counter = widget.Counter - 1;
                            });
                            print(widget.Counter);
                          },
                          child: Text('-')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.Counter = widget.Counter + 1;
                            });
                            print(widget.Counter);
                          },
                          child: Text('+')),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text('Back'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
} */

// =========================
//? getX state management

/* import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myController = Get.put(TestController());
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Obx(() => Text('${myController.count}')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            myController.decrement();
                          },
                          child: Text('-'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            myController.increment();
                          },
                          child: Text('+'),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TestController extends GetxController {
  var count = 0.obs;
  decrement() {
    if (count > 0) {
      count--;
    }
  }

  increment() => count++;
}
 */

//======================
//? snackbar
/* import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //! Old Snackbar
            /* ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Ini snackbar'),
                action:
                    SnackBarAction(label: 'Aksi Snackbar', onPressed: () {}),
              ),
            ); */

            //! using getX
            Get.snackbar('Ini Snackbar', 'Hello world!',
                snackPosition: SnackPosition.BOTTOM);
          },
          child: Text('Open Snackbar'),
        ),
      ),
    );
  }
} */

// ====================
//? dialog
/* import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: DialogExample(),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            //? ddefault dialog
            ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: const Text('AlertDialog description'),
                ),
              ),
              child: Text('Show default dialog'),
            ),
            //? get default dialog
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Ini judul',
                  content: Text('Ini content'),
                );
              },
              child: Text('Get default dialog'),
            ),
            //? get dialog
            ElevatedButton(
                onPressed: () {
                  Get.dialog(
                    AlertDialog(
                      title: Text('Ini title'),
                      content: Text('Ini Content'),
                    ),
                  );
                },
                child: Text('Get dialog'))
          ],
        ),
      ),
    );
  }
} */

// =====================
//? Bottom sheet

/* import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200,
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(50),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const Text('Modal BottomSheet'),
                              ElevatedButton(
                                child: const Text('Close BottomSheet'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text('Default bottom sheet')),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 150,
                      color: Colors.amberAccent,
                      child: Column(
                        children: [
                          Text('Hii 1', textScaleFactor: 2),
                          Text('Hii 2', textScaleFactor: 2),
                          Text('Hii 3', textScaleFactor: 2),
                          Text('Hii 4', textScaleFactor: 2),
                        ],
                      ),
                    ),
                  );
                },
                child: Text('Get bottom sheet')),
          ],
        ),
      ),
    );
  }
} */

//========================
//? State reactvie and simple

/* import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
} */

//========================
//? State reactvie and simple

/* import 'package:flutter/material.dart';
import 'package:flutter_state_management/pages/home_react_state.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeReactState(),
    );
  }
} */

//========================
//? worker

import 'package:flutter/material.dart';
import 'package:flutter_state_management/pages/home_react_state.dart';
import 'package:flutter_state_management/pages/worker_pages.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: WorkerPage(),
    );
  }
}
