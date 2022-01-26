// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:go_raid/Views/HomePage/Child/ItemPicture.dart';

class ListPicture extends StatefulWidget {
  final List<String> lstPictureUrl;
  const ListPicture({Key? key, required this.lstPictureUrl}) : super(key: key);

  @override
  _ListPictureState createState() => _ListPictureState();
}

class _ListPictureState extends State<ListPicture> {
  //--------------------------------------------
  //ViewModel
  //--------------------------------------------

  //--------------------------------------------
  //Properties
  //--------------------------------------------

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //--------------------------------------------
  //Widget
  //--------------------------------------------
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _computeIsolate(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return Wrap(
            spacing: 5,
            children: snapshot.data as List<Widget>,
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------

  Future<List<Widget>> _computeIsolate() async {
    return await compute(createListItemPicture, widget.lstPictureUrl);
  }
}

List<Widget> createListItemPicture(List<String> lst) {
  List<Widget> lstItemPicture = [];

  for (var element in lst) {
    lstItemPicture.add(ItemPicture(url: element));
  }

  return lstItemPicture;
}