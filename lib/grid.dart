import 'package:flutter/material.dart';

class gridview extends StatefulWidget {
  const gridview({Key? key}) : super(key: key);

  @override
  State<gridview> createState() => gridviewState();
}

class gridviewState extends State<gridview> {

  List name=["Msdhoni","Ruturaj Gaikwad","Deven Convey","Ambati Rayudu","Moeen Ali","Ravindra Jadeja",
    "Shivam Dube", "Ben Stocks","Maheesha","Deepak Chahar","Mukesh chaudhary"
  ];
  List Category=["7th July 1981","31st Jan1997","8th July 1991","23rd Sep 1985","18th Jun 1987","6th Dec 1988",
    "26th Jun 1993","4th Jun 1991","1st Aug 2000","7th Aug 1992","6th July 1996",
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
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        },
          icon: const Icon(Icons.arrow_back,color: Colors.yellow,), ),
        centerTitle: true,
        title: const Text("Chennai Super Kings",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight: FontWeight.w600),),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[400],
          image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/ea/40/fd/ea40fd13fa7d46618c5567146f07ba41.png")),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 7,
              mainAxisSpacing: 7,
          ),
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Container(
              height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image:  AssetImage("assets/${Img[index]}") ),
                   color: Colors.blue.withOpacity(0.5)
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow.withOpacity(0.7),
                      radius: 17,
                        child: Text("${index+1}",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w500),)),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.blue.withOpacity(0.6),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${name[index]}",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.yellow),),
                            Text("${Category[index]}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.yellow[300])),
                          ],
                        ),
                        Icon(Country[index],color: Colors.yellow[500],),
                      ],
                    ),

                  ),
                ],
              ),
            );
          },),
      ),
    );
  }
}

