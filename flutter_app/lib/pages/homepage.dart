import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:json_table/json_table.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Stock Market Data'),
        backgroundColor: Colors.blue[700],
      ),
      body: Container(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('assets/stock_market_data.json'),
          builder: (context,snapshot){
            var jsonData = json.decode(snapshot.data.toString());
            if(snapshot.hasData){
              return JsonTable(
                  jsonData,
                  showColumnToggle: true,
                  tableHeaderBuilder: (String header) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(border: Border.all(width: 0.5),color: Colors.grey[300]),
                      child: Text(
                        header,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.0,color: Colors.black87),
                      ),
                    );
                  },
                  tableCellBuilder: (value) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                      decoration: BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))),
                      child: Text(
                        value,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14.0, color: Colors.grey[900]),
                      ),
                    );
                  }
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
