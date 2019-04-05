import 'package:flutter/material.dart';
import './quoteActivity.dart' as qA;
import './styles.dart' as ss;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Simple Quotes',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: Text('Explore',style:ss.tT()),centerTitle: true),
        body: CategoryList()
      )
    );
  }
}

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> cL = ['Happiness','Passion','Success','Creativity'];
    List<String> iL = ['img/happy.png','img/pass.png','img/success.png','img/create.png'];
    return Container(
      margin: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 12.0),
      child: new ListView.builder(
        itemCount: cL.length,
        itemBuilder: (BuildContext context, int i) {
          return Card(elevation: 8.0,shape:ss.rT(),
            child: new InkWell(
              onTap:(){Navigator.push(context, MaterialPageRoute(
                  builder: (context) => qA.QuotesList(cL[i],iL[i])));
              },
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Image(image: AssetImage(iL[i]),height: 96.0,width: 96.0),
                  new Text(cL[i],style:ss.nT())
                ]
              )
            )
          );
        }
      )
    );
  }
}