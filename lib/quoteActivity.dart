import 'package:flutter/material.dart';
import './quotes.dart' as qs;
import './name.dart' as ns;
import './styles.dart' as ss;

class QuotesList extends StatelessWidget {
  final String cn, ci;
  QuotesList(this.cn, this.ci);
  
  @override
  Widget build(BuildContext context) {
    List<String> qC = qs.qL(cn);
    List<String> qn = ns.qN(cn);
    return new Scaffold(
      appBar: AppBar(title: Text(cn,style:ss.tT()),centerTitle: true),
      body: Container(padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            new Image(image: AssetImage(ci)),
            new Padding(padding: EdgeInsets.all(12.0)),
            new ListView.builder(shrinkWrap: true,
              itemCount: qC.length,
              itemBuilder: (BuildContext context, int i) {
                return SizedBox(height: 125.0,width: 200.0,
                  child: new Card(elevation: 8.0,shape: ss.rT(),
                    child: new Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new Text(qC[i],style:ss.qT(),textAlign: TextAlign.center),
                        new Text(qn[i],style:ss.nT())
                      ]
                    )
                  )
                );
              }
            )
          ]
        )
      )
    );
  }
}
