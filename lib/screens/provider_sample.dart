import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/model/burger.dart';

class MyProviderST extends StatefulWidget {
  @override
  _MyProviderSTState createState() => _MyProviderSTState();
}

class _MyProviderSTState extends State<MyProviderST> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CheeseBurger>(
      create: (context) => CheeseBurger(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider Test'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(35),
                child: Consumer<CheeseBurger>(
                  builder: (context,burger,child){
                    return Text('You ordered ${burger.orderABurger} Cheeseburger.',style: TextStyle(fontSize: 24),);
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.red[200],
                child: Consumer<CheeseBurger>(
                  builder: (context, burger, child){
                    return RaisedButton(
                      child: Text('Cheeseburger'),
                      onPressed: (){
                        //we've access to the Model
                       burger.orderSomeCheeseburger();
                      }
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}