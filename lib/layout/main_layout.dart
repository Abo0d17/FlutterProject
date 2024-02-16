import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_3/shared/bloc_cubit/home_cubit/home_cubit.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            drawer: Drawer(
              backgroundColor: Colors.grey[300]!,
            ),
            appBar: AppBar(
              backgroundColor: Colors.grey[300]!,
              title: Text(
                cubit.title[cubit.currentIndex],
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Icon(
                    Icons.brightness_4,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Icon(
                    Icons.settings,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey[300]!,
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              ),
            ),
            bottomNavigationBar: GNav(
                onTabChange: (index) {
                  cubit.changeNavBar(index);
                },
                activeColor: Colors.black,
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                tabMargin: EdgeInsets.all(10),
                gap: 8,
                backgroundColor: Colors.grey[300]!,
                tabs: [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.heart,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: LineIcons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  )
                ]
            )
          );
        },
      ),
    );
  }
}
