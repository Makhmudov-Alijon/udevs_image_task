

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MassegePage extends StatefulWidget {
  const MassegePage({Key? key}) : super(key: key);

  @override
  State<MassegePage> createState() => _MassegePageState();
}

class _MassegePageState extends State<MassegePage> {
  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.grey[50],
          elevation: 1,
          title: Text("Suxbatlar",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,size: 30,))
          ],
        ),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/Ellipse.png'),
            ),
            title: Text('James'),
            subtitle: Text('Thank you! That was very helpful!'),
          ),
        ),
        Divider(),
        Divider(),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/Ellipse.png'),
            ),
            title: Text('James'),
            subtitle: Text('Thank you! That was very helpful!'),
          ),
        ),

        Divider(),
        Divider(),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/Ellipse.png'),
            ),
            title: Text('James'),
            subtitle: Text('Thank you! That was very helpful!'),
          ),
        ),
        Divider(),
        Divider(),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/Ellipse.png'),
            ),
            title: Text('James'),
            subtitle: Text('Thank you! That was very helpful!'),
          ),
        ),
      ],
    );

  }
}
