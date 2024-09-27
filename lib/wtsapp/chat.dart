import 'package:flutter/material.dart';
class ChatsScreen extends StatelessWidget {
  var name=["john","sam"];
  var sub=["hi","hlo"];
  var time=["01:00","05:07"];
var image=["assets/images/deadpool.jpg","assets/images/deadpool.jpg"];
  @override
  Widget build(BuildContext context) {
    // Populate with chat list UI
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(image[index]),
          ),
          title:Text( name[index]),
          subtitle: Text(sub[index]),
          trailing: Text(time[index]),
        ),
        );

      },
      itemCount: name.length,
    );
  }
}
