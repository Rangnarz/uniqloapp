import 'package:flutter/material.dart';
import 'package:uniqloapp/Model/products.dart';
import 'package:uniqloapp/productDetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Uniqlo Mens Clothing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(child: Container(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              
              return GestureDetector(
                onTap: () {
                  print('You Tapped on ${product.samples[index].imgLabel}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProductDetail(products: product.samples[index]);
                      },
                    ),
                  );
                },
                child: buildproductCard(product.samples[index]),
              );
            },

              
            itemCount: product.samples.length,
          ),      
          
        ),
      ),
      
      ); 
    
  }

  Widget buildproductCard(product product) {
    return Card(
      elevation: 2.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(product.imageUrl)),
            SizedBox(height: 12.0),
            Text(product.imgLabel),
          ],
        ),
      ),
    );
  }
}
