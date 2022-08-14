import 'package:flutter/material.dart';

void main() {
  runApp(uygulamam());
}

class uygulamam extends StatelessWidget {
  const uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Slider Kullanımı'),centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: iskelet(),
    ));
  }
}

class iskelet extends StatefulWidget {
  const iskelet({Key? key}) : super(key: key);

  @override
  State<iskelet> createState() => _iskeletState();
}

class _iskeletState extends State<iskelet> {
  double gun = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.all(50.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.deepPurple),
            child: Column(
              children: [
                SizedBox(height: 20.0,),
                Text('Kaç gün çalışıyorsunuz?',style: TextStyle(fontSize: 20.0,color:Colors.white),),
                SizedBox(height: 20.0,),
                Text(
                  gun.round().toString(),
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  max: 7,
                  min: 0,
                  value: gun,
                  divisions: 7,
                  onChanged: (double NewValue) {
                    setState(() {
                      gun = NewValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ]))
      ],
    );
  }
}
