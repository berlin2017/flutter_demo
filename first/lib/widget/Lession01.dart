import 'package:flutter/material.dart';

class Lession01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Lession01Sceen(),
      },
    );
  }
}

class Lession01Sceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Column Row Space Expanded Padding Icon Image'),
        ),
      ),
      body: Lesssion01Widge(),
    );
  }
}

class Lesssion01Widge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        UserInfoWidget(),
        SizedBox(height: 10,),
        PhoneInfoWidget(),
        SizedBox(height: 10,),
        IconWidget(),
      ],
    );
  }
}

class UserInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.account_circle),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Flutter MacFlutter',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text('Experienced App Developer')
          ],
        ),
      ],
    );
  }
}

class PhoneInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('123 Main Street'),
        Text('415-555-0198'),
      ],
    );
  }
}

class IconWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.accessibility
        ),
        Icon(
            Icons.timer
        ),
        Icon(
            Icons.phone_android
        ),
        Icon(
            Icons.phone_iphone
        ),
      ],
    );
  }
}
