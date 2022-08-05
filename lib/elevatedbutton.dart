import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class elevated extends StatefulWidget {
  const elevated({Key? key}) : super(key: key);

  @override
  State<elevated> createState() => _elevatedState();
}

class _elevatedState extends State<elevated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text("data"),
        actions: const [
          Icon(Icons.abc),
        ],
      ),
      body: Center(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 100,width: 100),
            child:constElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: TextStyle(
                fontSize: 25,fontStyle: FontStyle.italic
              ),
              elevation: 25,
              shadowColor: Colors.blue,
            )
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.bubble_chart),
              label: const Text("Button"),
            ),
          ),
        ),
      ),
    );
  }
}
