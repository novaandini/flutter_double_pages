import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final Map<String, String> product;

  SecondPage({required this.product});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Produk " + product['name']!),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: 250.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              product['image']!,
              height: 250.0,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10.0,),
            Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    product['name']!,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                SizedBox(height: 5.0),
                Text(
                    product['description']!,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[500],
                    ),
                  ),
                SizedBox(height: 5.0),
                Text(
                  "Rp" + product['price']!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              ),
            ),
          ],
        )
      ),
      
    );

  }
}