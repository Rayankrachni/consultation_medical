import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_size.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  Widget _buildMessageItem(String message) {
    return Align(
      alignment:  Alignment.centerRight ,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        color:  Colors.blue,
        child: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: Center(
          child: Row(
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundImage:
                  NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg")
              ),
              SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr Mechaeele Augus ",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text("Online ",style: TextStyle(color:Theme.of(context).primaryColor,fontSize:14,fontWeight: FontWeight.normal),),

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
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(color: placeHolderColor,),
              Container(
                height: AppSize.height*0.77,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context ,int index){

                      return index%2==0 ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:const BoxDecoration(
                              color: primary_Color,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),

                                bottomLeft:  Radius.circular(10),
                              )
                          ),// Replace with your desired color
                          padding: EdgeInsets.all(10.0),
                          child:const IntrinsicWidth(
                            child:   Text(
                              'Your dynamic text here Your dynamic text here Your dynamic text here ',
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ),
                      ):Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration:const BoxDecoration(
                              color: filledColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),

                                bottomRight:  Radius.circular(10),
                              )
                          ),// Replace with your desired color
                          padding:const EdgeInsets.all(10.0),
                          child:const IntrinsicWidth(
                            child:   Wrap(
                              children: [
                                Text(
                                  'Your dynamic text here ',
                                  style: TextStyle(fontSize: 14.0,color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ),
              Align(
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
                              decoration:const InputDecoration(

                                hintText: "Type a Message",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: regularfontFamilyName
                                ),
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
              )

            ],
          ),
        ),
      ),
    );
  }
}
