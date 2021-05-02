import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:travel_planner_app/pages/settings_page.dart';
import 'package:velocity_x/velocity_x.dart';

class MenuPageStore extends VxStore {
  int selectedNavigationBarItemId = 0;
  int selectedSwiperItemId = 0;
}

class BodyStore extends VxStore {
  SettingsStore settingsStore = SettingsStore();
}

class SelectedSwiperItemChanged extends VxMutation<MenuPageStore> {
  @override
  perform() {}
}

class SelectedNavigationBarItemChanged extends VxMutation<MenuPageStore> {
  @override
  perform() {}
}

class TravelCard extends StatelessWidget {
  const TravelCard() : super();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "http://travelermap.ru/wp-content/uploads/2014/12/e35b6d17271b.jpg",
          fit: BoxFit.fitHeight,
        )
            .whFull(context)
            .box
            .make()
            .card
            .rounded
            .elevation(8)
            .makeCentered()
            .whFull(context)
            .box
            .margin(EdgeInsets.only(bottom: 50))
            .make(),
        VStack(
          [
            "Название"
                .text
                .fontWeight(FontWeight.w400)
                .xl2
                .color(Theme.of(context).primaryColor)
                .make(),
            "Описание описание описание описание описание описание описание описание описание описание описание описание описанием описание описание описание м  мописание"
                .text
                .ellipsis
                .align(TextAlign.center)
                .gray500
                .make(),
            "14.05.2001".text.make()
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        )
            .card
            .rounded
            .elevation(8)
            .make()
            .wh(context.percentWidth * 48, context.percentHeight * 10)
            .box
            .alignment(Alignment.bottomCenter)
            .margin(EdgeInsets.only(bottom: 30))
            .make()
      ],
    ).box.margin(EdgeInsets.only(left: 2, right: 2, top: 10)).make();
  }
}

class Body extends StatelessWidget {
  final int selectedItemId;

  const Body({Key? key, this.selectedItemId = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (selectedItemId) {
      case 0:
        return VxSwiper.builder(
          itemCount: 10,
          height: context.screenHeight,
          itemBuilder: (context, index) {
            return TravelCard();
          },
        );
      case 4:
        return SettingsPage(BodyStore().settingsStore);
      default:
        return VStack(
          [
            Icon(
              Icons.build_circle,
              size: context.percentWidth * 50,
            ).iconColor(Theme.of(context).primaryColor).build(context),
            "UNDER".text.fontWeight(FontWeight.w300).size(48).make(),
            "CONSTRUCTION".text.bold.yellow400.size(32).make(),
            "Прямо сейчас наш единственный программист упорно трудится над реализацией данного функционала."
                .text
                .size(18)
                .gray500
                .align(TextAlign.center)
                .make()
                .box
                .margin(EdgeInsets.only(top: 20))
                .make()
          ],
          crossAlignment: CrossAxisAlignment.center,
        ).box.margin(EdgeInsets.all(14)).makeCentered();
    }
  }
}

// class MenuPageWidget extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: VxBuilder(
//             builder: (_, status) => Scaffold(
//                   body: Body(
//                     selectedItemId: store.selectedNavigationBarItemId,
//                   ),
//                   bottomNavigationBar: BottomNavigationBar(
//                     onTap: (value) {
//                       store.selectedNavigationBarItemId = value;
//                       SelectedNavigationBarItemChanged().next(() => null);
//                     },
//                     unselectedItemColor: Theme.of(context).primaryColor,
//                     selectedItemColor: Theme.of(context).accentColor,
//                     showSelectedLabels: false,
//                     showUnselectedLabels: false,
//                     currentIndex: store.selectedNavigationBarItemId,
//                     items: [
//                       BottomNavigationBarItem(
//                           icon: Icon(Icons.home_outlined), label: "Дом"),
//                       BottomNavigationBarItem(
//                           icon: Icon(Icons.favorite_border_outlined),
//                           label: "Избранное"),
//                       BottomNavigationBarItem(
//                           icon: Icon(Icons.card_travel_outlined),
//                           label: "Путешествия"),
//                       BottomNavigationBarItem(
//                           icon: Icon(Icons.notifications_outlined),
//                           label: "Уведомления"),
//                       BottomNavigationBarItem(
//                           icon: Icon(Icons.settings_outlined),
//                           label: "Настройки")
//                     ],
//                   ),
//                 ),
//             mutations: {SelectedNavigationBarItemChanged}));
//   }
// }

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Frost(
      frostColor: Colors.white.withOpacity(0.8),
      borderRadius: BorderRadius.circular(23),
      blur: 13,
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: HStack(
          [
            Icon(Icons.ac_unit).iconSize(48).iconColor(Colors.blue.shade700),
            Icon(Icons.ac_unit).iconSize(48),
            Icon(Icons.ac_unit).iconSize(48),
            Icon(Icons.ac_unit).iconSize(48),
          ],
          alignment: MainAxisAlignment.spaceBetween,
        ).w(context.percentWidth * 80),
      ),
    ).box.withRounded(value: 23.0).outerShadowLg.make();
  }
}
