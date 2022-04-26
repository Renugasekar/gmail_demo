import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Compose',
        style:TextStyle(
          color:Colors.white,
        )),
        actions: <Widget> [
          IconButton(
          onPressed: (){},
            icon:Icon(Icons.attachment,
            color:Colors.white),
            ),
          IconButton(
            onPressed: (){
              Navigator.pop(context,'/');
            },
            icon:Icon(Icons.send,
              color:Colors.white),
            ),
            IconButton(
                onPressed: (){},
              icon:Icon(Icons.more_vert,
                color:Colors.white),
              ),
          ],
      ),
      body:Container(
          child:Column(
        children:<Widget>[
          TextField(
          decoration:InputDecoration(
            border:UnderlineInputBorder(),
          labelText:'From',
          ),
            autocorrect:true,
        ),
          TextField(
            decoration:InputDecoration(
              border:UnderlineInputBorder(),
              labelText:'To',
            ),
            autocorrect:true,
          ),
          TextField(
            decoration:InputDecoration(
              hintText:'Subject',
            ),
            autocorrect:true,
          ),
          TextField(
            decoration:InputDecoration(
              hintText:'Compose email',
            ),
            autocorrect:true,
          ),
    ],
      )),
    );
  }
}
