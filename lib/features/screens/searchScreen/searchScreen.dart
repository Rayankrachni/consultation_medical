

import 'package:chip_list/chip_list.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/card_search_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController name=TextEditingController();
  final List<String> _searchHistory = [
    'Beagle',
    'Labrador',
    'Retriever',
    'Beagle',
    'Labrador',
    'Retriever',
    'Beagle',
    'Labrador',
    'Retriever',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Search Doctor",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            CustomTextFormField(controller: name, hintText: "Search  Doctor", prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search History",   style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline_outlined))
              ],
            ) ,
            ChipList(
              listOfChipNames: _searchHistory,
              activeBgColorList: [placeHolderColor],
              inactiveBgColorList: [placeHolderColor],
              activeTextColorList: [textColor2],
              inactiveTextColorList: [textColor2],
              listOfChipIndicesCurrentlySeclected: [0],
              //borderColorList: [Theme.of(context).primaryColor],
            ),
            SearchCard(),

          ],
        ),
      ),
    );
  }
}
