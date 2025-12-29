import 'package:flutter/material.dart';
import 'package:uniqloapp/Model/products.dart';


 
class ProductDetail extends StatefulWidget {
  final product products;
  ProductDetail({super.key, required this.products});
  
  
  @override
  State<StatefulWidget> createState() {
    return ProductDetailState();
  }
}
class ProductDetailState extends State<ProductDetail> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) _quantity--;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            Image(image: AssetImage(widget.products.imageUrl)),
            const SizedBox(height: 20.0),
            Text(
              widget.products.imgLabel,
              style: TextStyle(
                fontSize: 30.0,
                
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(widget.products.description,style: TextStyle(fontSize: 16),),
            ),
 
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: _decrementQuantity, icon: const Icon(Icons.remove)),
                      Text('$_quantity', style: const TextStyle(fontSize: 18)),
                      IconButton(onPressed: _incrementQuantity, icon: const Icon(Icons.add)),
                    ],
                  ),
                  Text(
                    'Price: ${widget.products.price * _quantity} THB',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
 
            
          ],
        ),
      ),
    );
  }
  
}
 