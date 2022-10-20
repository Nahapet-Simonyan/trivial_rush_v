import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/purchases/purchases_item.dart';
import '../../core/models/purchases_model/purchases.dart';
import '../../core/trivial_rush_client.dart';

class PurchasesScreen extends StatelessWidget {
   PurchasesScreen({Key? key}) : super(key: key);

  late Future<List<Purchases>> futurePurchases;
  static const List<Color> colorList = <Color>[
    Color.fromRGBO(0, 51, 204, 1),
    Color.fromRGBO(204, 0, 1, 1),
    Color.fromRGBO(255, 204, 0, 1),
    Color.fromRGBO(103, 0, 152, 1),
    Color.fromRGBO(0, 153, 0, 1),
    Color.fromRGBO(255, 102, 0, 1),
  ];

  @override
  Widget build(BuildContext context) {

    futurePurchases = IndigoAPI().purchasesService.getPurchasesData();

    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Color.fromRGBO(0, 153, 0, 1),
            ),
          ),
          centerTitle: true,
          title: const Text(
            'Purchases',
            style: TextStyle(
              fontFamily: 'AmericanTypeWriter',
              fontSize: 24,
              color: Color.fromRGBO(0, 153, 0, 1),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: const Color.fromRGBO(0, 153, 0, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(top: 8.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                color: Colors.white,
              ),
              child: FutureBuilder<List<Purchases>>(
                future: futurePurchases,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data?.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          // sorting: lowest plays_count to highest plays_count
                          snapshot.data?.sort(
                                (a, b) => a.plays_count!.compareTo(b.plays_count!),
                          );
                          var item = snapshot.data?[index];
                          return purchasesItem(context, snapshot, colorList, index, item);
                        });
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//
// class PurchasesScreen extends StatefulWidget {
//   const PurchasesScreen({super.key});
//
//   @override
//   State<PurchasesScreen> createState() => _PurchasesScreenState();
// }
//
// class _PurchasesScreenState extends State<PurchasesScreen> {
//   late Future<List<Purchases>> futurePurchases;
//
//
//   @override
//   void initState() {
//     super.initState();
//     futurePurchases = IndigoAPI().p;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
