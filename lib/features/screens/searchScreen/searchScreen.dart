

import 'package:chip_list/chip_list.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:easy_localization/easy_localization.dart';
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
    'Beagle Retriever',
    'Retriever',
    'Labrador Beagle',

    'Beagle',
    'Labrador',
    'Retriever Retriever',
    'Beagle',
    'Labrador',
    'Retriever',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Placeholder.search-doctor'.tr(),
          style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(controller: name, hintText: 'Placeholder.search-specialist'.tr(), prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
              SizedBox(height: 20,),

              SearchCard(onPressed: (){},),
              SearchCard(onPressed: (){},),
              SearchCard(onPressed: (){},),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search History", style: AppTextStyle(size: 16, fontweight: FontWeight.w500,color: Theme.of(context).colorScheme.secondary)
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline))
                ],
              ) ,
              SizedBox(
                width: AppSize.width,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,

                  alignment: WrapAlignment.start,
                  children: _searchHistory
                      .map(
                        (chip) => Padding(
                          padding: const EdgeInsets.only(top: 5.0,right:5 ,bottom: 5),
                          child: Container(

                              decoration: BoxDecoration(
                                color: Color(0xffF6F7FD),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 5,bottom: 5),
                                child: Text("$chip",style: TextStyle(color: Colors.black54),),
                              )),
                        ),
                  )
                      .toList(),

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
