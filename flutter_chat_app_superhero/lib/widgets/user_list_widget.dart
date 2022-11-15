import 'package:flutter/material.dart';

import 'user_image_widget.dart';

class UserListWidget extends StatelessWidget {
  String imagePath;
  String title;
  String dateTime = "4:30 PM";
  String subTitle;
  bool isOnline;

  UserListWidget(
      this.dateTime, this.imagePath, this.subTitle, this.title, this.isOnline);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //İMAGE **************************************************
          UserImageWidget(isOnline, imagePath: imagePath),
          //COLUMN 2 FOR TİTLE AND SUBTİTLE
          Container(
            width: MediaQuery.of(context).size.width *
                0.65, // i think if we dont use this width is infinity
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            title,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        isOnline
                            ? Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 7,
                                width: 7,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade400,
                                ),
                              )
                            : Container(
                                child: null,
                              )
                      ],
                    ),
                    Text(
                      dateTime,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Text(
                  maxLines: 2,
                  subTitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
