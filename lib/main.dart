
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counters.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(context)=>CounterAppState(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}
class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<CounterAppState>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Counter App ",
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${state.i}",
            style:const TextStyle(
              fontSize: 30,
            ),
            ),
            ElevatedButton(onPressed: (){
              state.increment();
            },

              child: const Text("+",
                    style: TextStyle(
                      fontSize: 30,

                    )
                ),
              ),
            const SizedBox(height:20.0),
            ElevatedButton(onPressed: (){
              state.decrement();
            },
              child: const Text("-",
                  style:TextStyle(
                      fontSize: 30,

                  )
              ),
            ),
            const SizedBox(height:20.0),

            ],
        ),
      )
    );
  }
}
