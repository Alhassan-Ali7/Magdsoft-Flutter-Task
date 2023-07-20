import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_task/constant.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/home_view_background.dart';
import 'package:magdsoft_flutter_task/features/home/presentation/views/widgets/home_view_component.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: const [
          HomeViewBackground(),
          HomeViewComponent(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.logout,
              color: Color(0xFFB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color(0xFFB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFFB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Color(0xFFB1B1B1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color(0xFFB1B1B1),
            ),
            label: '',
          ),
        ],
        onTap: (value) {
          if(value == 0){
            Navigator.of(context).pushNamed('/login');
          }else if(value == 4){
            Navigator.of(context).pushNamed('/help');
          }
        },
      ),
    );
  }
}
