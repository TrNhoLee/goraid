// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ItemPicture extends StatelessWidget {
  final String url;

  const ItemPicture({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthItem = MediaQuery.of(context).size.width / 2 - 10;
    return Column(
      children: [
        _createPictureItem(widthItem),
        _createBottomItem(widthItem),
      ],
    );
  }

  Widget _createPictureItem(double widthPicture) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            height: 300,
            width: widthPicture,
            child: const FlutterLogo(size: 100),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            height: 300,
            width: widthPicture,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    label: const Text("6,7n", style: TextStyle(color: Colors.white))),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
          )
        ],
      ),
      onTap: _itemTap,
    );
  }

  Widget _createBottomItem(double widthBottom) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      width: widthBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [SizedBox(height: 10), Text("Nho le"), SizedBox(height: 20)],
      ),
    );
  }

  void _itemTap() {}
}
