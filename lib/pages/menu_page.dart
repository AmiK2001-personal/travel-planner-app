import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

VxState MenuPage() => VxState(store: MenuPageStore(), child: MenuPageWidget());

class MenuPageStore extends VxStore {
  int selectedNavigationBarItemId = 0;
  int selectedSwiperItemId = 0;
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
  const TravelCard({Key key}) : super(key: key);

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
            "Название".text.bold.xl.make(),
            "Описание".text.make(),
            "14.05.2001".text.make()
          ],
          alignment: MainAxisAlignment.center,
          crossAlignment: CrossAxisAlignment.center,
        )
            .card
            .rounded
            .elevation(8)
            .make()
            .wh(context.percentWidth * 60, context.percentHeight * 10)
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

  const Body({Key key, this.selectedItemId}) : super(key: key);

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
      default:
        return Text("Under construction");
    }
  }
}

class MenuPageWidget extends StatelessWidget {
  const MenuPageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MenuPageStore store = VxState.store;

    return SafeArea(
        child: VxBuilder(
            builder: (_, status) => Scaffold(
                  body: Body(
                    selectedItemId: store.selectedNavigationBarItemId,
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    onTap: (value) {
                      store.selectedNavigationBarItemId = value;
                      SelectedNavigationBarItemChanged().next(() => null);
                    },
                    unselectedItemColor: Theme.of(context).primaryColor,
                    selectedItemColor: Theme.of(context).accentColor,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    currentIndex: store.selectedNavigationBarItemId,
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home_outlined), label: "Дом"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.favorite_border_outlined),
                          label: "Избранное"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.card_travel_outlined),
                          label: "Путешествия"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.notifications_outlined),
                          label: "Уведомления"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings_outlined),
                          label: "Настройки")
                    ],
                  ),
                ),
            mutations: {SelectedNavigationBarItemChanged}));
  }
}
