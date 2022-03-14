import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}
class _homepageState extends State<homepage> {

  var num = 0, num1 = 75, ans = 0;

  final TextEditingController t1 = TextEditingController(text: "0");

  void convert() {
    setState(() {
      num = int.parse(t1.text);
      ans = num * num1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Currency Converter'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //display image
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Image.asset('images/pc2.jpg', height:200,width: 200),
                  ),
                ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: t1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText:'Enter the price of PC in Dollars',
                      border:const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    onPressed: (){
                      setState((){
                        convert();
                      });
                    },
                    color: Colors.greenAccent,
                    child: const Text('Convert',style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child:Container(
                      child: Center(
                        child: Text("Price of PC in Rupee : $ans",style: TextStyle(fontSize: 25)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}