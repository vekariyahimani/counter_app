import 'package:counter_app/screen/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Consumer<CounterProvider>(
                builder: (context, value, child) => Text(
                      "${value.i}",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    )),
          ),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                    border: Border.all(color: Colors.black26),

                    boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.black38
                    )
                  ]
                ),
                child: FloatingActionButton(onPressed: () {
                  Provider.of<CounterProvider>(context,listen: false).increment();
                },
                child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20),),),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black26),

                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.black38
                      )
                    ]
                ),
                child: FloatingActionButton(onPressed: () {
                  Provider.of<CounterProvider>(context,listen: false).dicrement();
                },
                child: Text("-",style: TextStyle(fontSize: 20,color: Colors.black),),),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black26),

                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.black38
                      )
                    ]
                ),
                child: FloatingActionButton(onPressed: () {
                  Provider.of<CounterProvider>(context,listen: false).two();
                },
                  child: Text("2X",style: TextStyle(fontSize: 20,color: Colors.black),),),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black26),

                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.black38
                      )

                    ]
                ),
                child: FloatingActionButton(onPressed: () {
                  Provider.of<CounterProvider>(context,listen: false).three();
                },
                  child: Text("3X",style: TextStyle(fontSize: 20,color: Colors.black),),),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black38
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.black38
                      )
                    ]

                ),
                child: FloatingActionButton(onPressed: () {
                  Provider.of<CounterProvider>(context,listen: false).four();
                },
                  child: Text("4X",style: TextStyle(fontSize: 20,color: Colors.black),),),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black38
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                      color: Colors.black38
                  )
                ]

            ),
            child: FloatingActionButton(onPressed: () {
              Provider.of<CounterProvider>(context,listen: false).reset();
            },
              child:Icon(Icons.refresh,size: 20,color: Colors.black,)
          ),

          )
        ],
          )
      ),
    );
  }
}

