import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_size.dart';

class ChatScreen extends StatefulWidget {
   ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> msgs=["jjjsjjsakjsa","asjxnkaasjhjdjadj dkaclkm dlkvlkm aklxkcmadl asckmldvkm kcjahnksjchkajcks","asjhjksajkxas","hasjkhciwduVHLJHVKLJCHSK","JJJ"];

  bool ispair=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Center(
          child: Row(
            children: [
             const CircleAvatar(
                  radius: 20,
                  backgroundImage:
                  NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg")
              ),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12,),
                  Text("Dr Mechaeele Augus ",style:
                  AppTextStyle(size: 14, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary),),
                    SizedBox(height:5,),
                  Text("Online ",
                    style:
                    AppTextStyle(size: 14, fontweight: FontWeight.normal,color: primary_Color),),
                   Divider(color: placeHolderColor,),
                ],
              )
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.video_camera,size: 33,)),
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.phone,size: 25,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0,bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment:ispair? CrossAxisAlignment.start:CrossAxisAlignment.end,
                  children: msgs.asMap().entries.map((entry) {
                    final index = entry.key;
                    final message = entry.value;
                    final isEven = index % 2 == 0;
                    setState(() {
                      ispair=isEven;
                    });

                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Align(
                        alignment:ispair?Alignment.topLeft: Alignment.topRight,
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: AppSize.width * 0.7, // Specify your desired max width
                          ),
                          decoration: BoxDecoration(
                            color: ispair ? filledColor :primary_Color, // Replace with your desired colors
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                                bottomLeft:ispair ?Radius.circular(0): Radius.circular(10),
                                bottomRight: ispair ?Radius.circular(10): Radius.circular(0),
                            ),
                          ),
                          padding: EdgeInsets.all(10.0),
                          child: IntrinsicWidth(
                            child: Text(
                              message,
                              style: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: ispair?Colors.black:Colors.white)
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                )

              ),
            ),

            Container(
              //height: AppSize.height * 0.09,
              width: AppSize.width,
              decoration: BoxDecoration(


                borderRadius: BorderRadius.all(Radius.circular(5)),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Divider(color: placeHolderColor,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(CupertinoIcons.smiley),
                        SizedBox(
                          width: AppSize.width * 0.6,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.secondary,

                              fontFamily: "inter",
                            ),
                            decoration: InputDecoration(
                              hintText: "Type a Message",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontFamily: 'inter'
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.file_present_outlined, color: placeHolderColor),
                            SizedBox(width: 20),
                            Icon(Icons.send, color: primary_Color),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


           /* Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: AppSize.height*0.07,

                decoration:const BoxDecoration(
                  color: primary_Color,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      SizedBox(
                          width: AppSize.width*0.7,
                          child: TextFormField(
                            style:const  TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: regularfontFamilyName
                            ),
                            decoration: InputDecoration(

                              hintText: "Type a Message",
                              hintStyle:
                              AppTextStyle(size: 14, fontweight: FontWeight.normal,color: Colors.white),
                              enabledBorder:UnderlineInputBorder(
                                borderSide: BorderSide.none
                              )
                            ),


                          )),
                      const Row(
                        children: [
                          Icon(Icons.file_present_outlined,color: Colors.white,),
                          Icon(Icons.mic,color: Colors.white,)
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            )*/

          ],
        ),
      ),
    );
  }
}
