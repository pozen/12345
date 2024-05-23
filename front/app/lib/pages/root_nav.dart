import 'package:fe_12345/controller/id.dart';
import 'package:fe_12345/controller/nav.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNav();
}

class _MainNav extends State<MainNav> {
  final extended = false;
  static const Color textColor = Color(0xffcfd1d7);
  static Color activeColor = Colors.blue;
  static TextStyle labelStyle = TextStyle(color: textColor, fontSize: 11);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            border: Border(right: BorderSide(width: .1))),
        constraints: BoxConstraints(maxWidth: 90),
        child: GetX<NavController>(builder: (controller) {
          return NavigationRail(
            minWidth: 55.0,
            selectedIndex: controller.selectedIndex.value,
            //selectedIndex: selectedIndex,
            labelType: NavigationRailLabelType.all,
            //selectedLabelTextStyle: TextStyle(
            //  color: Theme.of(context).colorScheme.onPrimary,
            //),
            leading: const Column(
              children: [
                //const Icon(Icons.menu_open,color: Colors.grey,),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
            trailing: Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: GetX<IdController>(
                    builder: (controller) {
                      return controller.token_.value != ''
                          ? TextButton(
                              onPressed: () {
                                controller.logout();
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(20),
                                ),
                              ),
                              child: SizedBox(
                                  height: 50,
                                  child: Column(
                                    children: [
                                      Icon(Icons.logout),
                                      Text('logout'.tr)
                                    ],
                                  )))
                          : TextButton(
                              onPressed: () {
                                controller.login(context);
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(20),
                                ),
                              ),
                              child: SizedBox(
                                  height: 50,
                                  child: Column(
                                    children: [
                                      Icon(Icons.login),
                                      Text('login'.tr)
                                    ],
                                  )));
                    },
                  ),
                ),
              ),
            ),
            elevation: 3,
            // navigation rail items
            destinations: [
              NavigationRailDestination(
                  icon: Icon(Icons.home), label: Text('home'.tr, style: Theme.of(context).textTheme.bodyMedium)),
              NavigationRailDestination(
                  icon: Icon(
                      /*Icons.desktop_mac_rounded*/ FontAwesomeIcons.toolbox),
                  label: Text('tools'.tr, style: Theme.of(context).textTheme.bodyMedium)),
              NavigationRailDestination(
                  icon: Icon(FontAwesomeIcons.peopleGroup),
                  label: Text('ground'.tr, style: Theme.of(context).textTheme.bodyMedium)),
              NavigationRailDestination(
                  icon: Icon(Icons.settings), label: Text('profile'.tr, style: Theme.of(context).textTheme.bodyMedium)),
            ],
            onDestinationSelected: (int i) {
              controller.selectedIndex.value = i;
              selectedIndex = i;
              controller.rootPageCtr.jumpToPage(i);
              Logger().d('selected index ' + i.toString());
              setState(() {});
            },
            backgroundColor: Theme.of(context).colorScheme.background,
            unselectedIconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.primary),
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          );
        }));
  }
}

class MainNavPhone extends StatefulWidget {
  const MainNavPhone({super.key});

  @override
  State<MainNavPhone> createState() => _MainNavPhone();
}

class _MainNavPhone extends State<MainNavPhone> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            border: const Border(right: BorderSide(width: .1))),
        //constraints: const BoxConstraints(maxWidth: 150),
        //alignment: Alignment.centerLeft,
        child: GetX<NavController>(builder: (controller) {
          return BottomNavigationBar(
              currentIndex: controller.selectedIndex.value,
//              unselectedItemColor: Colors.grey,
              //selectedItemColor: Colors.indigoAccent,
              selectedIconTheme:
                  IconThemeData(color: Theme.of(context).hintColor),
              backgroundColor: Theme.of(context).colorScheme.background,
              unselectedIconTheme:
                  IconThemeData(color: Theme.of(context).colorScheme.primary),
              //selectedIconTheme: IconThemeData(color: Theme.of(context).colorScheme.onPrimary) ,

              // called when one tab is selected
              onTap: (int index) {
                controller.selectedIndex.value = index;
                controller.rootPageCtr.jumpToPage(index);
                setState(() {});
              },
              // bottom tab items
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'home'.tr),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.toolbox), label: 'tools'.tr),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.peopleGroup),
                    label: 'ground'.tr),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'profile'.tr)
              ]);
        }));
  }
}
