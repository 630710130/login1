import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyPass(),
    );
  }
}

class MyPass extends StatefulWidget {
  const MyPass({Key? key}) : super(key: key);

  @override
  State<MyPass> createState() => _MyPassState();
}

class _MyPassState extends State<MyPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 80,
                    ),
                    Text(
                      "กรุณาใส่รหัสผ่าน",
                      style: const TextStyle(fontSize: 30.0),
                    )
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ['1', '2', '3'],
                        ['4', '5', '6'],
                        ['7', '8', '9'],
                        [     '0',    ],
                      ].
                      map((item) => _buildNumberRow(item)).toList(),
                    ),
                    
                  ],
                ),
              ),
            ),
            SizedBox(width: 40),

          TextButton(onPressed: (){}, child: new Text('ลืมรหัสผ่าน',style: TextStyle(fontSize: 20),)),

          ],
        ),

      ),

    );

  }
  Row _buildNumberRow(List<String> NumberList) {
    return Row(
      children: [
        for (var i = 0; i < NumberList.length; i++)
          _buildButton4(NumberList[i]),
      ],
    );
  }
  Widget _buildButton4(String Number) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 1.0),

                     ),

        child: TextButton(
          onPressed: () {
            debugPrint(Number);
          },
          child: Text(Number,style: TextStyle(fontSize: 25,color: Colors.black),),

        ),

      ),

    );
  }


}
