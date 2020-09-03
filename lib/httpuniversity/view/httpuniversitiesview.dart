import 'package:flutter/material.dart';
import 'package:httpuni/httpuniversity/model/httpuniversitiesmodel.dart';
import '../viewModel/httpuniversitiesviewmodel.dart';

class HttpUniView extends HttpUniViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: httpuni.length,
        itemBuilder: (context, index) => CardHttp(httpuni[index]),
      ),
    );
  }

/*
  ListView buListView(HttpUniModel uni) {
    return ListView.builder(
      itemCount: httpuni.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: Image.network(httpuni[index].img),
            title: Text(httpuni[index].adi),
            onTap: null,
          ),
        );
      },
    );
  }
*/

//nayysssssssssssssssssss
/*
  Card buildCardHttp(HttpUniModel uni) {
    return Card(
        color: Colors.white30,
        margin: EdgeInsets.all(20),
        child: ListTile(
          title: Align(
            child: Padding(
                padding: EdgeInsets.fromLTRB(5, 17, 5, 1),
                child: Image.network(uni.img)),
            alignment: Alignment(-1.2, 0),
          ),
          subtitle: Column(
            children: [
              SizedBox(height: 4),
              Text(
                uni.adi,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ));
  }
*/
//AMANYANİ
/*
  Widget buildCard(HttpUniModel model) {
    return ListTile(
      leading: Icon(Icons.book),
      title: Text(model.adi),
      trailing: Text(model.img),
    );
  }
*/
//ŞAKAKODUAMAGERÇEĞİDEVAR

  Card CardHttp(HttpUniModel uni) {
    return Card(
      margin: EdgeInsets.all(20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(uni.img),
          ),
          subtitle: Text(
            uni.adi,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: Text("Üniversite Ne Arar App'de? "),
  );
}
