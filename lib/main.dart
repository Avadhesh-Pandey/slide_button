import 'package:flutter/material.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/slider.dart';
import 'package:slider_button_lite/feature/presentation/slider_button/slider_button_prop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Slider Button Example Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Page Content',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SliderButton(
        properties: SliderButtonProperties(
          disable: false,
          isLoading: false,
          disableButtonColor: const Color(0xFFCCCCDD),
          width: MediaQuery.of(context).size.width - (16 * 2),
          dismissThresholds: 0.90,
          backgroundColor: Colors.yellow,
          action: () async {
            debugPrint('Action completed');
            ///Any task

            /// Async task for progress bar
            await Future.delayed(const Duration(seconds: 3), () => debugPrint('Large Latte'));
            return false;
          },
          label: const Text('Slide to confirm',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )),
          buttonSize: 60,
          alignLabel: Alignment.center,
          icon: const ClipOval(
            child: Material(
              color: Colors.black, // Button color
              child: SizedBox(
                  width: 60, height: 60, child: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white)),
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
