import 'package:flutter/material.dart';
import 'compose.dart';

void main()=>runApp(MaterialApp(
  initialRoute:'/',
  routes:{
    '/':(context)=>MyApp(),
    '/second':(context)=>SecondPage(),
  },
  //home:MyApp(),
));
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Search in email'),
        actions:<Widget>[
         CircleAvatar(
          backgroundColor:Colors.pinkAccent,
           child:Text('r'),
      ),
        ],
        ),
      drawer:Drawer(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text('Gmail',
              style:TextStyle(
                  color:Colors.red,
                fontSize:20.0,
              )),
            ),
              Divider(
                color: Colors.grey[1],
                height: 2.0,
              ),
              ListTile(
                title:Text('All inboxes',
                    style:TextStyle(
                     fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.inbox),
                  onPressed:(){},
                ),
              ),
              Divider(
                color: Colors.grey[1],
                height: 2.0,
              ),
              ListTile(
                title:Text('Primary',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.inbox),
                  onPressed:(){},
                ),
              ),
              ListTile(
                title:Text('Social',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.people),
                  onPressed:(){},
                ),
              ),
              ListTile(
                title:Text('Promotions',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.local_offer),
                  onPressed:(){},
                ),
              ),
              ListTile(
                 title:Text('ALL LABLES',
                   style:TextStyle(
                    color:Colors.grey,
                     fontSize:12.0,
                   )),
              ),
              ListTile(
                title:Text('Starred',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.star),
                  onPressed:(){},
              ),
              ),
              ListTile(
                title:Text('Snoozed',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.access_time),
                  onPressed: (){},
              )),
              ListTile(
                title:Text('Important',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.turned_in_not),
                  onPressed:(){},),
              ),
              ListTile(
                title:Text('Sent',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.send),
                  onPressed:(){}),
              ),
              ListTile(
                title:Text('Draft',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.mail),
                  onPressed: (){}),
              ),
              ListTile(
                title:Text('Bin',
                    style:TextStyle(
                      fontWeight:FontWeight.bold,
                    )),
                leading:IconButton(
                  icon:Icon(Icons.delete),
                  onPressed:(){}),
              ),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context,'/second');
        },
        backgroundColor: Colors.white,
        child:Icon(Icons.edit,
        color:Colors.red),
        ),
    );
  }
}
