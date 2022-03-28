import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(name: 'Whitelab Brightening Face Toner', price: 45000,  imageUrl: 'https://cf.shopee.co.id/file/78defbec83b26bd84264896c37df7e17'),
    Item(name: 'WARDAH LIGHTENING BB CREAM', price: 70000,  imageUrl: 'https://static.hdmall.id/750x450/system/image_attachments/images/000/014/824/original/wardah-lightening-bb-cream-light-15ml-1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Girls Skincare'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(item.name),
                      ),
                      Expanded(
                        child: Text(item.price.toString(),
                            textAlign: TextAlign.end),
                      ),
                      Expanded(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(item.imageUrl),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}