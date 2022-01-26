// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/Views/SearchPage/Child/InputSearch.dart';
import 'package:go_raid/ViewModels/Search/SearchViewModel.dart';
import 'package:go_raid/Views/HomePage/Child/ListPicture.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //--------------------------------------------
  //ViewModel
  //--------------------------------------------
  late SearchViewModel _searchViewModel;

  //--------------------------------------------
  //Properties
  //--------------------------------------------
  late List<String> _listPicture;

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    _listPicture = [];
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
    return Scaffold(
      body: Column(
        children: [
          InputSearch(
            onValueInput: _clearInputSearch,
            onValueChanged: _inputSearchValueChanged,
            onValueSubmitted: _inputSearchSubmitted,
          ),
          Flexible(
              child: Center(
            child: _listPicture.isEmpty ? null : createListPictureView(),
          ))
        ],
      ),
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------
  void _clearInputSearch() {
    setState(() {
      _listPicture = [];
    });
    return;
  }

  _inputSearchValueChanged(String value) {
    return;
  }

  _inputSearchSubmitted(String value) async {
    var keyword = value.trim();

    if (keyword.isEmpty) {
      return;
    }

    _listPicture = _searchViewModel.searchPictures(keyword);

    setState(() {
      _listPicture;
    });
  }

  Future<void> _lstPictureRefresh() async {
    _listPicture = _searchViewModel.refreshListPicture(_listPicture);

    setState(() {
      _listPicture;
    });
  }

  createListPictureView() {
    return RefreshIndicator(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: ListPicture(lstPictureUrl: _listPicture),
      ),
      onRefresh: _lstPictureRefresh,
    );
  }
}
