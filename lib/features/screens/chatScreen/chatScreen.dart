import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_txt_style.dart';



class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: const IconThemeData(color: Colors.blue),
      child: Container(
        width: AppSize.width,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        padding:const EdgeInsets.all(9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon:const Icon(CupertinoIcons.smiley,color: textColor2,),
                onPressed: () { }),
            Flexible(
              child:
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(

                  constraints:const BoxConstraints(
                    maxHeight: 100.0, // Adjust the maximum height as needed
                  ),
                  child: TextField(
                    controller: _textController,
                    onSubmitted: _handleSubmitted,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: "inter",
                    ),
                    maxLines: null, // This allows the text to go to the next line
                    decoration: InputDecoration(
                      hintText: 'HomePage.type-message'.tr(),
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.secondary,
                        fontFamily: 'inter',
                      ),
                      enabledBorder:const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder:const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.file_present_outlined, color: placeHolderColor),
                IconButton(
                    icon:const Icon(Icons.send),
                    onPressed: () {
                      if(_textController.text.isNotEmpty){
                        _handleSubmitted(_textController.text);
                      }
                    }
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

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
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12,),
                  Text("Dr Mechaeele Augus ",style:
                  AppTextStyle(size: 14, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary),),
                  const SizedBox(height:5,),
                  Text('HomePage.online'.tr(),
                    style:
                    AppTextStyle(size: 14, fontweight: FontWeight.normal,color: primary_Color),),
                  const Divider(color: textColor2,thickness: 2,),
                ],
              )
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.video_camera,size: 33,)),
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.phone,size: 25,)),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (_, int index) => _messages[index],
            ),
          ),
          const Divider(height: 1.0,color: Colors.grey,),
          _buildTextComposer(),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({required this.text});

  final String text;
  DateTime currentTime = DateTime.now();




  @override
  Widget build(BuildContext context) {
    String formattedTime = "${currentTime.hour}:${currentTime.minute}";
    print(formattedTime); // This will print the current time in the "hh:mm" format
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight, // Adjust alignment as needed
          child: Container(
            constraints: BoxConstraints(
              maxWidth: AppSize.width * 0.7, // Specify your desired max width
            ),
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration:const  BoxDecoration(
              color: primary_Color, // Replace with your desired colors
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: AppTextStyle(size: 14, fontweight: FontWeight.normal, color: Colors.white),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(CupertinoIcons.checkmark_alt, color: primary_Color, size: 16),
            const SizedBox(width: 4), // Add some space between the icon and text
            Text(formattedTime, style: AppTextStyle(size: 11, fontweight: FontWeight.normal, color: textColor2)),
          ],
        )
      ],
    );
  }
}


