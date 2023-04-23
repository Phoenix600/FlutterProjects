import 'package:flutter/material.dart';
import './screens/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
	@override
	Widget build(BuildContext context)
	{
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			home:BottomBar(),
		);
	}
}
