import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget 
{
	@override 
	Widget build(BuildContext context)
	{
		return Scaffold(
		backgroundColor: Color(0xffeedf2),
		body: ListView(
			children: <Widget>[
				Container(
				padding: const EdgeInsets.symmetric(horizontal: 20),
				child: Column(
				children: [
					Row(
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
					children: <Widget>[
						Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: const <Widget>[
							Text("Good Morning"),
							Text("Book Tickets"),
						],
						),
					Container(
					width: 50,
					height: 50,
					decoration: const BoxDecoration(
					borderRadius: BorderRadius.all(Radius.circular(10),),
					image: DecorationImage(
					fit: BoxFit.cover,
					image: AssetImage("assets/logo.jpg"),
					),
					),
					),	
					],
					),
				],	
				),
				),	
			],
		),
		);
	}

}
