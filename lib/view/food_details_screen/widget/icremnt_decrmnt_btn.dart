import 'package:flutter/material.dart';


class IncrementDecrementButtonWidget extends StatefulWidget {
  final Color color;
  final Color iconColor;
  final double h;
  final double w;
  const IncrementDecrementButtonWidget({
    super.key, required this.color, required this.iconColor, required this.h, required this.w,
  });

  @override
  State<IncrementDecrementButtonWidget> createState() => _IncrementDecrementButtonWidgetState();
}

class _IncrementDecrementButtonWidgetState extends State<IncrementDecrementButtonWidget> {
  int counter = 1;

  void increment(){
    setState(() {
      counter++;
    });
  }
  void decrement(){
    setState(() {
      if(counter > 1){
        counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 40,
      decoration: BoxDecoration(
        color:widget.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                decrement();
              },
              icon:  Icon(
                Icons.remove,
                color: widget.iconColor,
              )),
           SizedBox(
              width: 10,
              child: Text(
                '$counter',
                style: const TextStyle(overflow: TextOverflow.ellipsis),
              )),
          IconButton(
              onPressed: () {
                increment();
              },
              icon:  Icon(
                Icons.add,
                color: widget.iconColor,
              ))
        ],
      ),
    );
  }
}
