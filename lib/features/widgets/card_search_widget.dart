import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 1.0,
                  offset:const Offset(0.1, 3)
              )

            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 1.0,
                              offset:const Offset(0.1, 3)
                          )

                        ],
                        color: Colors.white,
                        image: DecorationImage(image: NetworkImage("https://www.pngall.com/wp-content/uploads/2018/05/Doctor-PNG-Clipart.png"),fit: BoxFit.contain,)
                    ),

                  ),
                  SizedBox(width: 5,),
                  SizedBox(
                    width: AppSize.width*0.65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dr Mary Rose c",style: TextStyle(
                                    color:Theme.of(context).colorScheme.secondary,
                                    fontSize: 15,fontWeight: FontWeight.w600
                                ),),
                                Text("Psychiatrist",style: TextStyle(
                                    color:Theme.of(context).colorScheme.secondary,
                                    fontSize: 12,fontWeight: FontWeight.normal
                                ),),
                              ],
                            ),

                            IconButton(onPressed: (){}, icon:Icon( Icons.favorite,color: Colors.red,))
                          ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(

                          width: AppSize.width*0.65,
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             const Row(
                                children: [
                                  Icon(Icons.star,color: Colors.orangeAccent,size: 18,),
                                  Icon(Icons.star,color: Colors.orangeAccent,size: 18,),
                                  Icon(Icons.star,color: Colors.orangeAccent,size: 18,),
                                  Icon(Icons.star,color: Colors.orangeAccent,size: 18,),
                                  Icon(Icons.star,color: Colors.orangeAccent,size: 18,),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("4.4",style: TextStyle(
                                      color: Theme.of(context).colorScheme.secondary,
                                      fontSize: 14,fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(width: 5,),
                                  Text("(8545 Reviews)",style: TextStyle(
                                      color: textColor2,
                                      fontSize: 12,fontWeight: FontWeight.normal
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppSize.width*0.41,
                    child: ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(
                      primary: witeColor3, // Set the button's background color
                      onPrimary: Theme.of(context).colorScheme.secondary,
                      elevation: 1, // Set the elevation (shadow) of the button
                     shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Set the border radius
                          ),
                      // Set the minimum width and height
                      // Add more properties as needed, e.g., padding, textStyle, etc.
                      ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.message,size: 16,),
                            SizedBox(width: 10,),
                            Text("Messages",style: TextStyle(fontSize: 12),)
                          ],
                        )),
                  ),
                  SizedBox(
                    width: AppSize.width*0.41,
                    child: ElevatedButton(onPressed: (){},

                        style: ElevatedButton.styleFrom(
                          primary: primaryColor, // Set the button's background color
                          onPrimary: Colors.white, // Set the text color
                          elevation: 1, // Set the elevation (shadow) of the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Set the border radius
                          ),
                          // Set the minimum width and height
                          // Add more properties as needed, e.g., padding, textStyle, etc.
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.calendar_month,size: 16,),
                            SizedBox(width: 10,),
                            Text("Appointnement",style: TextStyle(fontSize: 12),)
                          ],
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
