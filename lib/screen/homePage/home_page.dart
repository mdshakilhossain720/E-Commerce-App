import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState>_key=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,

      drawer: Drawer(),
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.menu,color: Colors.black,)),
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        actions: [
          IconButton(onPressed: (){
            _key.currentState!.openDrawer();
          }, icon:Icon(Icons.notification_add,color: Colors.black)),
          IconButton(onPressed: (){}, icon:Icon(Icons.send,color: Colors.black,))
        ],
        centerTitle: true,
        title: Text("HomePage",style: TextStyle(
          color: Colors.black,
        ),),),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,


              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search Something",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("featured",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold,
                    ),),
                    Text("See all",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),

                ],
              ),
            ),

           // card
            buildCard(),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: TextStyle(
                    fontSize: 17,fontWeight: FontWeight.bold,
                  ),),
                  Text("See all",style: TextStyle(
                    fontSize: 17,fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 45,
                    backgroundColor: Color(0xff33dcfd),

                  )
                ],
              ),
            )
          ],
        ),
      ),






    );
  }

  Widget buildCard() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Container(
                      height: 250,
                      width: 160,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 170,
                            width: 160,

                            decoration: BoxDecoration(

                              image: DecorationImage(image: AssetImage("assets/image/man.jpg"))
                            ),


                          ),
                          Text("\$ 30.0.0",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 17,color:Color(0xff9b96d6),

                          ),),
                          Text("Man T Shirt ",style: TextStyle(
                            fontSize: 16,
                          ),)
                        ],
                      ),


                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Container(
                      height: 250,
                      width: 160,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 170,
                            width: 160,

                            decoration: BoxDecoration(

                                image: DecorationImage(image: AssetImage("assets/image/man.jpg"))
                            ),


                          ),
                          Text("\$ 30.0.0",style: TextStyle(
                            fontWeight: FontWeight.bold,fontSize: 17,color:Color(0xff9b96d6),

                          ),),
                          Text("Man T Shirt ",style: TextStyle(
                            fontSize: 16,
                          ),)
                        ],
                      ),


                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
