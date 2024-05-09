import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int zikrsoni=0;

Color rangi=Colors.purple;
String zikrnomi ='SubhanOlloh';
Color rang=Colors.amberAccent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.blue,
        title: Text("Tasbex",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.orange),),
      ),
      body: Container(
        color: rang,
        child: Center(
          child: Column(children: [
            SizedBox(height: 50,),
            Text(zikrnomi,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800,color:rangi),),
            SizedBox(height: 150,),
            Text(zikrsoni.toString(),style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: Colors.red),),
            Padding(
              padding: const EdgeInsets.only(top: 200,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                
                children: [
                    Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: FloatingActionButton(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.refresh,size:50,weight: 10,),
                      onPressed: (){
                    Qaytarish();
                    }),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    child: Center(child: Icon(Icons.add_circle_outline_sharp,size:50,weight: 10,)),
                    onPressed: ()
                    async
                    {
                      
                   Zikrsoninioshir();
                   if(zikrsoni==33){
                    Zikrnominiozg("Alhamdulilah");
                    rang=Colors.cyan;
                    rangi=Colors.yellow;
                   }
                   else if(zikrsoni==66){
                    Zikrnominiozg("Allohu Akbar");
                     rang=const Color.fromARGB(255, 119, 238, 123);
                     rangi=Colors.pink;
                   }
                   else if(zikrsoni==99){
                    Zikrnominiozg("Olloh qabul qilsin");
                  await Future.delayed(Duration(seconds: 2));
                    Qaytaboshla();
                        rang=Colors.amberAccent;
                    rangi=Colors.purple;
                     setState(() {
                       
                     });
                                  
                   }
                  }),
                
                ],
              ),
            )
          ],),
        ),
      ),
    );
  }
  void Zikrsoninioshir(){
       
                zikrsoni++;
                setState(() {
                });
  }
  void Zikrnominiozg(String Yangizikr){
    zikrnomi=Yangizikr;
    setState(() {
      
    });
  }

  void Qaytaboshla(){
    zikrsoni=0;
    Zikrnominiozg("SubhanOlloh");
    rang=Colors.amberAccent;
   rangi=Colors.purple;
   setState(() {
     
   });
  }
  void Qaytarish(){
    zikrnomi='SubhanOlloh';
    zikrsoni=0;
    rang=Colors.amberAccent;
    rangi=Colors.purple;
      setState(() {
      
    });
  }
}