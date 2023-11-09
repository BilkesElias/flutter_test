import 'package:flutter/material.dart';

class CardTextWidget extends StatefulWidget {
  const CardTextWidget({
    Key? key,
    required this.screen,
    required this.content,
    required this.date,
  }) : super(key: key);

  final Size screen;
  final String content;
  final String date;

  @override
  State<CardTextWidget> createState() => _CardTextWidgetState();
}

class _CardTextWidgetState extends State<CardTextWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 4,
      child: Row(
        children: [
          SizedBox(width: widget.screen.width * 0.05),
          Container(
            width: widget.screen.width * 0.8,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: const Color(0xFFC4C4C4),
                width: 0.5,
              ),
              color: const Color.fromRGBO(76, 66, 67, 0.66),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.content,
                  maxLines: isExpanded ? 100 : 4,
                  style: TextStyle(color: Colors.white,fontSize: isExpanded?20:14),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.date,
                      style: TextStyle(
                        color: Color(0xFFE5A5A5),
                        fontFamily: 'Roboto',
                      ),
                    ),
                    if (exceedsMaxLines(widget.content, 4))
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(44, 43, 43, 0.80),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 2),
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Text(
                                isExpanded ? '..Less' : '..More',
                                style: const TextStyle(
                                  color: Color(0xFF2CCAA0),
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Image.asset(
                                isExpanded
                                    ? 'assets/images/arrow_down.png'
                                    : 'assets/images/arrow_up.png',
                              )
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: widget.screen.width * 0.05),
        ],
      ),
    );
  }

  bool exceedsMaxLines(String text, int maxLines) {
    TextPainter painter = TextPainter(
      maxLines: maxLines,
      text: TextSpan(
        text: text,
        style: TextStyle(color: Colors.white),
      ),
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: widget.screen.width * 0.8);

    return painter.didExceedMaxLines;
  }
}
