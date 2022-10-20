import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/auto_route.gr.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        Child1Tab(),
        Child2Tab(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(label: 'Users', icon: Icon(Icons.dry)),
              BottomNavigationBarItem(label: 'Posts', icon: Icon(Icons.duo)),
            ],
          ),
        );
      },
    );
  }
}
