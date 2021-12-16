import 'package:flutter/material.dart';
import 'package:todo_app/view/create_todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff20306c),
      appBar: AppBar(
        backgroundColor: Color(0xff20306c),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1551418988-c21e451467b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b2NlYW4lMjBiZWFjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
        title: Text('My Task'),
        actions: [
          Icon(Icons.filter_list_rounded),
          Icon(Icons.search),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Color(0xfff0f4ff),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                children: [
                  Icon(Icons.check_circle_outline_outlined),
                  Expanded(
                    child: Column(
                      children: [
                        Text('Plan a trip to Finland'),
                        Text('planning the trip')
                      ],
                    ),
                  ),
                  Row(
                    children: [Icon(Icons.notifications), Text('Yesterday')],
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: 5,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CreateTodo();
              },
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff20306c),
      ),
    );
  }
}
