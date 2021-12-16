import 'package:flutter/material.dart';

class CreateTodo extends StatelessWidget {
  const CreateTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff20306c),
      appBar: AppBar(
        backgroundColor: Color(0xff20306c),
        title: Text("CreateTodo"),
      ),
      body: Container(
        padding: EdgeInsets.all(14),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xfff0f4ff),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Form(
            child: ListView(
          children: [
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: "Title",
                hintText: "Please Enter Title",
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                labelStyle: TextStyle(
                  color: Color(0xff20306c),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
