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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock_outline,
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
            Expanded(flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [

                            ['1', '2', '3'],
                            ['4', '5', '6'],
                            ['7', '8', '9'],
                          ].map((item) => _buildNumberRow(item)).toList(),


                        ),

                      ],

                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                          ),
                          Container(
                            width: 75.0,
                            height: 75.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey, width: 2.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2), // สีเงา
                                    offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                  )
                                ]),
                            //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
                            child: TextButton(
                              onPressed: () {
                                debugPrint('0');
                              },
                              child: Text('0',style: TextStyle(fontSize: 25,color: Colors.black)),
                            ),
                          ),
                          Container(
                            height: 50.0,
                            width: 100.0,
                            child: TextButton(
                              child: Icon(Icons.backspace,size: 30,color: Colors.black,),
                              onPressed: () {},
                            ),
                          ),

                        ]
                    ),
                  ],
                ),

              ),
            ),
            TextButton(
              onPressed: (){
                setState(() {

                });
              },
              child: Text('ลืมรหัสผ่าน',style: TextStyle(fontSize: 25),),
            ),
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
            border: Border.all(color: Colors.grey, width: 2.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // สีเงา
                offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        child: TextButton(
          onPressed: () {
            debugPrint(Number);
          },
          child: Text(Number,style: TextStyle(fontSize: 25,color: Colors.black)),
        ),
      ),
    );
  }
