import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sogra/constant/font.dart';
import 'package:sogra/provider/firebase_provider.dart';
import 'package:sogra/repository/firebase_repository.dart';
import 'package:sogra/widget/reviewCardMap.dart';

import '../constant/colors.dart';
import '../widget/mapdialog.dart';


class Bbang extends StatefulWidget {
  const Bbang({
    super.key,
    required this.type,
  });

  final String type;

  @override
  State<Bbang> createState() => _BbangState();
}

class _BbangState extends State<Bbang> {



  Image getImage(String? imagePath) {
    if (imagePath != null && imagePath.length > 10) {
      return Image.network(imagePath);
    }
    return Image.asset('assets/logo.png');
  }

  Future<List> _fetchWeekly(BuildContext context) async {
    final FirebaseFirestore firebaseFirestore = context.read<FirebaseRepository>().firebaseFirestore;

    List<dynamic> res = [];
    var data = firebaseFirestore.collection("weekly_${widget.type}").get();
    List<String> filter = List.empty(growable: true);
    await data.then((value) {
      for (var e in value.docs[value.docs.length-1].data()['docs']) {
        filter.add(e);
      }
    }); // weekly elements
    await firebaseFirestore.collection(widget.type)
        .where("doc", whereIn: filter)
        .get()
        .then((e) {
      for (var element in e.docs) {
        res.add(element);
      }
    }); // get items from elements
    List<ReviewCardMap> children = List.empty(growable: true);
    for (var m in res) {
      children.add(
          ReviewCardMap(height: 100, width: 100,
            image: getImage(m['imagePath']),
            store: m['store'], name: m['name'],
          ) as ReviewCardMap
      );
    } // create widgets from items
    return children;
  }

  @override
  Widget build(BuildContext context) {

    final double _screenheight = MediaQuery
        .of(context)
        .size
        .height;
    final double _screenwidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        title: Text(
          '이 달의 빵',
          style: GmarketSans24,
        ),
      ),
      body: SafeArea(
        child: Container(
          color: greyColor,
          height: _screenheight,
          width: _screenwidth,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: FutureBuilder(
              future: _fetchWeekly(context),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData == false || snapshot.hasError) {
                  return const CircularProgressIndicator();
                }

                return ListView(
                  children: snapshot.data,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
