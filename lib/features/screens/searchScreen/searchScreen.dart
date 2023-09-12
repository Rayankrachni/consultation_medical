

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
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
              TextFormField(
                controller: name,

                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Toast.empty-field'.tr();
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,

                style: TextStyle(color: Theme.of(context).colorScheme.secondary,),

                decoration: InputDecoration(
                  hintText: 'Placeholder.search-specialist'.tr(),

                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 20.0,
                  ),
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                    size: 20,
                  ),

                  enabledBorder:const OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: placeHolderColor,
                    ),
                  ),
                  focusedErrorBorder:const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:  BorderSide(
                      width: 1,
                      color: placeHolderColor,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                        color: primary_Color
                    ),
                  ),
                  errorBorder:const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10),),
                    borderSide:  BorderSide(
                      width: 1,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
             const SizedBox(height: 20,),

              SearchCard(onPressed: (){},),
              SearchCard(onPressed: (){},),
              SearchCard(onPressed: (){},),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search History", style: AppTextStyle(size: 16, fontweight: FontWeight.w500,color: Theme.of(context).colorScheme.secondary)
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,color: Theme.of(context).colorScheme.secondary,))
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

                              decoration:const BoxDecoration(
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
