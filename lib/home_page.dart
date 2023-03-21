import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title",
                  "This is a Snackbar message",
                  snackPosition: SnackPosition.BOTTOM,
                  overlayBlur: 5,
                  duration: Duration(milliseconds: 10000),
                  userInputForm: Form(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text('Show Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
