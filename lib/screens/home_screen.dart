import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:splash_screen/screens/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialogue box"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      content: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_bmMdcCeeVzXs7BFzMyz1VCsl7Tlig0gXjg&s"),
                      title: Center(child: Text("Are you sure to delete?")),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      duration: Duration(seconds: 1),
                                      content: Text("Deleted successfully")));
                            },
                            child: Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("No"))
                      ],
                      actionsAlignment: MainAxisAlignment.center,
                    ));
          },
        ),
      ),
      body: Center(
        child: Container(color: Colors.red, height: 300, width: 300),
      ),
    );
  }
}
