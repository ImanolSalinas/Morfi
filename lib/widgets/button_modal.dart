import 'package:flutter/material.dart';

class BottonModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DraggableScrollableSheet(
        initialChildSize: 0.2,
        minChildSize: 0.1,
        maxChildSize: 0.7,
        builder: (context, scrollController) {
          return Container(
            child: ListaItems(scrollController),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(0),
                )),
          );
        },
      ),
    );
  }
}

class ListaItems extends StatelessWidget {
  final ScrollController scrollController;
  final items = new ListView(
    children: const <Widget>[
      ListTile(
        leading: Icon(Icons.map),
        title: Text('Map'),
      ),
      ListTile(
        leading: Icon(Icons.photo_album),
        title: Text('Album'),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('Phone'),
      ),
    ],
  );

  ListaItems(this.scrollController);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: scrollController,
        itemCount: 6,
        itemBuilder: (context, index) => ListTile(
              title: (Text('Item: $index')),
            ));
  }
}
