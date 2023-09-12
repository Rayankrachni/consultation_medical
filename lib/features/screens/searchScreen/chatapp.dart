import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_txt_style.dart';



class ChatScreen2 extends StatefulWidget {
  @override
  State createState() => ChatScreen2State();
}

class ChatScreen2State extends State<ChatScreen2> {
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
      data: IconThemeData(color: Colors.blue),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child:
              SizedBox(

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
                      hintText: "Type a Message",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.secondary,
                        fontFamily: 'inter',
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
              ),

            ),
            SizedBox(width: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.file_present_outlined, color: placeHolderColor),
                IconButton(
                    icon: Icon(Icons.send),
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
                  Divider(color: textColor2,thickness: 2,),
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
          Divider(height: 1.0),
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
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
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
            // Double check icon
            SizedBox(width: 4), // Add some space between the icon and text
            Text("$formattedTime", style: AppTextStyle(size: 11, fontweight: FontWeight.normal, color: textColor2)),
          ],
        )
      ],
    );
  }
}


