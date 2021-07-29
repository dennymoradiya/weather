import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/location.dart';
import 'homescreen.dart';

class SearchCity extends StatelessWidget {
  const SearchCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    controller.text = "";
    print(controller.text);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Search city",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black, width: 3.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black, width: 3.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(
                          city: controller.text,
                        ),
                      ),
                    );
                  }
                },
                child: Text("Confirm")),
          )
        ],
      )),
    );
  }
}
