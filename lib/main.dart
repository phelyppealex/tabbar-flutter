import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialAppHome());
}

class MaterialAppHome extends StatelessWidget {
  const MaterialAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Acoustic Guitar Catalog"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Tab 1",
                  icon: Icon(
                    Icons.home
                  ),
                ),
                Tab(
                  text: "Tab 2",
                  icon: Icon(
                    Icons.app_registration_rounded
                  ),
                ),
                Tab(
                  text: "Tab 3",
                  icon: Icon(
                    Icons.image,
                    //color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text(
                "Bem-vindo ao\ncatálogo de violões",
                style: TextStyle(
                  fontSize: 30.0
                ),
                textAlign: TextAlign.center,
              )),
              Image(image: AssetImage('images/background1.jpg')),
              Text("Tab 3"),
            ],
          ),
        ),
      ),
    );
  }
}