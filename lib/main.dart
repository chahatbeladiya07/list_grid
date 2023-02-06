import 'package:flutter/material.dart';
import 'grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: builder(),
    );
  }
}
class builder extends StatefulWidget {
  const builder({Key? key}) : super(key: key);

  @override
  State<builder> createState() => _builderState();
}

class _builderState extends State<builder> {

  List name=["Msdhoni","Ruturaj Gaikwad","Deven Convey","Ambati Rayudu","Moeen Ali","Ravindra Jadeja",
    "Shivam Dube", "Ben Stocks","Maheesha Teekshna","Deepak Chahar","Mukesh Chaudhary"
  ];
  List Category=["July 7th, 1981","January 31st, 1997","July 8th, 1991","September 23rd, 1985","June 18th, 1987","December 6th, 1988",
    "June 26th, 1993","June 4th, 1991","August 1st, 2000","August 7th, 1992","July 6th, 1996",
  ];
  List Country=[Icons.home,Icons.home,Icons.flight,Icons.home,Icons.flight,Icons.home,
    Icons.home,Icons.flight,Icons.flight,Icons.home,Icons.home,
  ];
  List Img=["msdhoni.png","ruturaj.png","convey.png","raydu.png","moeen.png","jadeja.png",
    "shivam.png", "stocks.png","meheesha.png","chahar.png","mukesh.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chennai Super Kings",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w600),),
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => gridview(),));
            },
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.yellow.shade700,
                    Colors.yellow.shade300
                  ])
              ),
              child: ListTile(

                leading: CircleAvatar(
                  radius: 35,
                  foregroundImage: AssetImage("assets/${Img[index]}") ,
                  backgroundColor: Colors.blue[300],
                ),
                title: Text("${name[index]}") ,
                trailing: Icon(Country[index],color: Colors.blue,),
                subtitle: Text("${Category[index]}"),
              ),
            ),
          );

        },),
    );
  }
}
