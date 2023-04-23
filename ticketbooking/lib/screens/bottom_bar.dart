import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import './home_screen.dart';

class BottomBar extends StatefulWidget
{
	State<BottomBar> createState()=> _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
{
	/* simple index variable which will be keeping the track 
	   of the navigation trhough indices of the List which 
	   will be changed by the BottomNavigationBarItem onTap.
	*/	
	int _selectedIndex = 0; // Default value is set to 0, eveythime the homeScreen will appear 

	/* Added the List of the navigated list items*/ 
	static final List <Widget> _widgetOptions = <Widget>[
	
			 HomeScreen(),
			 const Text("Search"),
			 const Text("Tickets"),
			 const Text("Profile"),

	];


	// user defined method, to change the value of index variable of the Navigation list 
	void _onItemTapped(int index)
	{
		setState(
			(){
				_selectedIndex = index;
			}
		);	

	}


	@override 
	Widget build(BuildContext context)
	{
		return Scaffold(
			/* appBar : AppBar( */
			/* title : const Text("My Tickets"), */
			/* ), */
			body: Center(
			child: _widgetOptions[_selectedIndex],
			),
			bottomNavigationBar:BottomNavigationBar(
			// Properries (Named Arguments) of BottomNavigationBar() Widget 
			elevation: 10,
			showSelectedLabels: false,
			showUnselectedLabels: false,
			selectedItemColor: Colors.blueGrey,
			unselectedItemColor: const Color(0xff526480),
			onTap: _onItemTapped,
			currentIndex: _selectedIndex,
			type: BottomNavigationBarType.fixed,

			items:const [
				BottomNavigationBarItem(
				icon: Icon(FluentIcons.home_12_regular),
				label: "home",
				activeIcon: Icon(FluentIcons.home_12_filled),
				),
				BottomNavigationBarItem(
				icon: Icon(FluentIcons.search_12_regular),
				label: "search",
				activeIcon: Icon(FluentIcons.search_12_filled),
				),
				BottomNavigationBarItem(
				icon: 
				Icon(FluentIcons.ticket_diagonal_28_regular),
				label: "ticket",
				activeIcon: Icon(FluentIcons.ticket_diagonal_16_filled),
				),
				BottomNavigationBarItem(
				icon: Icon(FluentIcons.person_12_regular),
				label: "profile",
				activeIcon: Icon(FluentIcons.person_12_filled), 
				),
			],
			),
		);
	}

}
