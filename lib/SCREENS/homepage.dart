import 'package:flutter/material.dart';
import 'package:shop/MODELS/model.dart';
import 'package:shop/SERVICE/api_services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<Product> _product;

  @override
  void initState() {
    super.initState();
    _product = service().getProduct();
    //_populateProduct();
  }

  //void _populateProduct() async{
    //final productf = await getProduct();
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoprite'),
      ),
      body: Container(
        child: FutureBuilder(
          future: _product,
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: ((context, index) {
                  return Container(
                    height: 100,
                    color: Colors.red,
                  );
                }),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
        ),
      ),
    );
  }
}
