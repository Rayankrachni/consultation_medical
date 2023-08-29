import 'package:flutter/material.dart';

import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';

class PaymentWidget extends StatefulWidget {
  PaymentWidget({super.key,required this.title,required this.value});
  final String value;
  final String title;

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(

            color: Theme.of(context).cardColor,
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
          padding: const EdgeInsets.only(left: 12.0,right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                height: 40,
                width:40,
                decoration:const BoxDecoration(
                    color: filledColor,
                    shape: BoxShape.circle
                ),
                child: Image.asset("assets/images/paypal.png",fit: BoxFit.fill,),
              ),
              SizedBox(
                width: AppSize.width*0.77,
                child: RadioListTile(
                  title: Text(widget.title),
                  value: widget.title,
                  groupValue: widget.value,
                  onChanged: (value){
                    setState(() {
                      value = value.toString();
                    });
                  },
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
