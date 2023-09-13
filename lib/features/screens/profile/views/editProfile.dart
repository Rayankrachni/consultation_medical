import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_size.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController= TextEditingController();

  TextEditingController phoneController= TextEditingController();

  TextEditingController birthday=TextEditingController(text: "Birth day ");

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String selectedItem = 'Male';

  bool isEmptyBirthday=false;


  final List<String> gender = ['Male', 'Female'];

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,

      initialDate: selectedDate,


      firstDate: DateTime(1960),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        selectedDate = picked;
        isEmptyBirthday=false;
        birthday.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  List<String> duration= ['30 min', '40 min', '60 min'];
  String selectedValue="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile.edit-profile',
          style:  TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w600,fontFamily: 'inter'),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 15,top: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextFormField(controller: nameController, hintText: 'Appointment.name'.tr(), prefixIcon: CupertinoIcons.person, textInputType: TextInputType.text),
                  CustomTextFormField(controller: phoneController, hintText: 'Appointment.phone'.tr(), prefixIcon: CupertinoIcons.phone, textInputType: TextInputType.text),
                  const SizedBox(height: 10,),
                  /*Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Text("Birth date",style: Theme.of(context).textTheme.headline3,),
                    ),
                  ),*/
                
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Text('Appointment.birth-date'.tr(),style: Theme.of(context).textTheme.headline2,),
                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                      border: Border.all(color: placeHolderColor),
                      borderRadius:const BorderRadius.all(Radius.circular(10))
                    ),
                    child: GestureDetector(
                      onTap: (){_selectDate(context);},
                     // onTap: (){push(context: context, screen: EditProfile());},
                      child: ListTile(
                        title:Text( birthday.text,style: TextStyle(
                          color:Theme.of(context).colorScheme.secondary,
                          fontSize: 14,
                          fontFamily: "inter"
                        ),),
                        leading: Icon(CupertinoIcons.calendar,color:Theme.of(context).colorScheme.secondary,size: 22,),
                        trailing: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.keyboard_arrow_down,size: 26,color:Theme.of(context).colorScheme.secondary,),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Text('Appointment.gender'.tr(),style: Theme.of(context).textTheme.headline2,),
                    ),
                  ),

                  Container(
                    width: AppSize.width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                            color: placeHolderColor
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.transgender,color: Theme.of(context).colorScheme.secondary,size: 17,),
                          const SizedBox(width: 20,),
                          SizedBox(

                            width: AppSize.width*0.73,
                            child: DropdownButton(

                              value: gender[0],
                              items: gender.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(

                                  value: value,
                                  child: Text(value,style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: "inter")),
                                );
                              }).toList(),
                              onChanged: (v){
                                selectedValue = v!;
                              },
                              alignment: Alignment.center,
                              isExpanded: true,
                              enableFeedback: true,
                              iconSize: 25,

                              icon: Icon(Icons.keyboard_arrow_down,size: 26,color:Theme.of(context).colorScheme.secondary),
                              underline: Container(),


                            ),
                          ),
                          //Icon(Icons.access_time_sharp,color: Theme.of(context).colorScheme.secondary,),
                          const SizedBox(width: 10,),
                        ],
                      ),
                    ),
                  ),


                ],
              ),


              SizedBox(height: AppSize.height*0.32,),

              Padding(
                padding: const EdgeInsets.only(bottom: 28.0),
                child: DefaultButton(onPressed: (){}, text:'Appointment.save-changes'.tr()),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
