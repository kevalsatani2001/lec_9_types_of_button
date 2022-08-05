import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class button extends StatefulWidget {
  const button({Key? key}) : super(key: key);

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text("data"),
        actions: const [Icon(Icons.abc)],
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  print("Textbutton");
                },
                child: const Text("data")),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  elevation: MaterialStateProperty.all(8)),
              onPressed: () {
                print("TextButton");
              },
              child: const Text("ElevetedButton"),
            ),
            IconButton(
              onPressed: () {},
              icon: const Text("A"),
            ),
            //Image.network("https://thumbs.dreamstime.com/z/sun-2972259.jpg",scale: 0.1,),
            //Image.asset("assets/i1.jpg")
            GestureDetector(
              onTap: () {
                print("custom button");
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        spreadRadius: 3,
                        color: Colors.black12,
                        offset: Offset(2, 2))
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Image.asset(
                    //   "assets/i1.jpg",
                    //   height: 20,
                    //   width: 20,
                    // ),

                    Image.network(
                      "https://static.toiimg.com/photo/45773211.cms",
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Good morning"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
