// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/Commons/Constants/AppConsts.dart';

class InputSearch extends StatefulWidget {
  final VoidCallback? onValueInput;
  final ValueChanged<String>? onValueChanged;
  final ValueChanged<String>? onValueSubmitted;

  const InputSearch(
      {Key? key, this.onValueInput, this.onValueChanged, this.onValueSubmitted})
      : super(key: key);

  @override
  _InputSearchState createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  //--------------------------------------------
  //Properties
  //--------------------------------------------
  late TextEditingController _searchController;
  late bool _enableIconClearSearch;

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    _searchController = TextEditingController();
    _enableIconClearSearch = false;
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _searchController,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            hintText: hintInputSearch,
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            suffixIcon: _enableIconClearSearch
                ? IconButton(
                    icon: const Icon(Icons.close, color: Colors.grey),
                    onPressed: _clearInputSearch)
                : null,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(5),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
        onChanged: _inputSearchValueChanged,
        onSubmitted: _inputSearchSubmitted,
      ),
    );
  }

  void _clearInputSearch() {
    widget.onValueInput!.call();

    _searchController.clear();
    setState(() {
      _enableIconClearSearch = false;
    });
  }

  void _inputSearchValueChanged(String value) {
    widget.onValueChanged!.call(value);

    if (value.isNotEmpty) {
      setState(() {
        _enableIconClearSearch = true;
      });
    } else {
      setState(() {
        _enableIconClearSearch = false;
      });
    }
  }

  void _inputSearchSubmitted(String value) {
    widget.onValueSubmitted!.call(value);
  }
}
