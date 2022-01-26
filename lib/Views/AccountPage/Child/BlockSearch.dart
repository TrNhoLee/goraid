// ignore_for_file: file_names
import 'package:go_raid/Commons/Constants/AppConsts.dart';
import 'package:flutter/material.dart';

class BlockSearch extends StatelessWidget {
  final FocusNode _focus = FocusNode();
  final VoidCallback? onFocus;
  final VoidCallback? onFilterClicked;
  final VoidCallback? onAddClicked;

  BlockSearch({Key? key, this.onFocus, this.onFilterClicked, this.onAddClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    _focus.addListener(() {
      onFocus!.call();
    });

    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(
              child: TextField(
                focusNode: _focus,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                    hintText: hintInputSearch,
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
              flex: 7),
          Expanded(
              child: IconButton(
                  icon: const Icon(Icons.sort),
                  onPressed: () {
                    onFilterClicked!.call();
                  }),
              flex: 1),
          Expanded(
              child: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    onAddClicked!.call();
                  }),
              flex: 1)
        ],
      ),
    );
  }
}
