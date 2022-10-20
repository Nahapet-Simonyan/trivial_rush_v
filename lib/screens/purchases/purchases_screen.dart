import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trivial_rush/constants/colors_list/colors_list.dart';
import 'package:trivial_rush/screens/purchases/widgets/purchases_item.dart';
import 'package:trivial_rush/widgets/sub_screen_appbar.dart';
import '../../core/models/purchases_model/purchases.dart';
import '../../core/trivial_rush_client.dart';

class PurchasesScreen extends StatelessWidget {
  PurchasesScreen({Key? key}) : super(key: key);

  late Future<List<Purchases>> futurePurchases;

  @override
  Widget build(BuildContext context) {

    futurePurchases = TrivialRushAPI().purchasesService.getPurchasesData();

    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: subScreenAppBar(
            context: context,
            backgroundColor: Colors.white,
            itemsColor: const Color.fromRGBO(0, 153, 0, 1),
            text: 'Purchases'),
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
                          return purchasesItem(
                              context, snapshot, purchasesColorList, index, item);
                        });
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
