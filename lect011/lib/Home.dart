import 'package:flutter/material.dart';
import 'package:lect011/Calculator.dart';

class Home extends StatefulWidget {
@override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<dynamic> teams  = ["Karachi","Lahore","Islamabad","Multan","Peshawar","Quetta","1","2","3","4","5","6"]; // dynamic takes both data types


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lecture 11"),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Calculator()));

          }, child: Icon(Icons.calculate))
          
          ],),
      
      body: SingleChildScrollView(
              child: ListView(
                physics: NeverScrollableScrollPhysics(),      // when using singleChildScrollView (it helps in scroliing for ListView)
                shrinkWrap: true,
          children: [

               Container(
                margin: EdgeInsets.only(top:20),
                color: Colors.green[400],
                height: 200,
               
                child: Text("Conatiner"),
              ),

              Container(
                margin: EdgeInsets.only(top:20),
                color: Colors.black45,
                height: 200,
               
                child: Text("Conatiner"),
              ),


              Container(
                margin: EdgeInsets.only(top:20),
                color: Colors.blue[400],
                height: 200,
               
                child: Text("Conatiner"),
              ),


              Container(
                margin: EdgeInsets.only(top:20),
                color: Colors.yellow[400],
                height: 200,
               
                child: Text("Conatiner"),
              ),


              Center(
                child: Container(
                  margin: EdgeInsets.only(top:20),
                  color: Colors.purple[400],
                  height: 200,
                  width: 200,
                 
                  child: Text("Conatiner"),
                ),
              ),
            
           
              Padding(
                padding: const EdgeInsets.only(top:20,bottom: 20),
                child: Center( 
                  child: Text("Testing GRIDVIEW with ListView")),
              ),
           
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,  // displays widgets by defining their height
                crossAxisCount: 3,
                mainAxisSpacing: 40 ,
                crossAxisSpacing: 20,
              children: List.generate(teams.length,(index){
                return Container(
                  color: Colors.cyan[300],
                  child: Center(child: Text("${teams[index]}")),
                );
              })


              )

 
            



            
          ]
        ),
      ) ,

    );
  }
}

