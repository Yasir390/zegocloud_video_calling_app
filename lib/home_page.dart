import 'package:flutter/material.dart';
import 'package:video_calling/call_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final idController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: idController,
              decoration: InputDecoration(
                hintText: "Enter call id to join"
              ),
            ),
            SizedBox(
              height: 50,
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage(callID: idController.text),),);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink
                ),
                child: Text("Join a call")
            )
          ],
        ),
      ),
    );
  }
}
