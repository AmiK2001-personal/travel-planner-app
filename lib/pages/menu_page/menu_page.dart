import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_planner_app/bloc/menu_page/bloc.dart';
import 'package:travel_planner_app/gen/assets.gen.dart';
import 'package:travel_planner_app/gen/fonts.gen.dart';
import 'package:travel_planner_app/pages/settings_page/settings_page.dart';
import 'package:velocity_x/velocity_x.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  _MenuPageState();

  int selectedNavigationBarItemId = 0;

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuPageBloc, MenuPageState>(
      listener: (context, state) {
        selectedNavigationBarItemId = state.selectedNavigationBarItemId;
      },
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        body: Stack(
          children: [
            Body(selectedItemId: selectedNavigationBarItemId),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavBar(),
            )
          ],
        )
            .box
            .padding(const EdgeInsets.only(top: 15))
            .color(Colors.transparent)
            .make(),
      ),
    );
  }
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
            .margin(const EdgeInsets.all(4))
            .make(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Название"
                .text
                .fontWeight(FontWeight.w400)
                .fontFamily(FontFamily.metropolis)
                .xl
                .color(Theme.of(context).primaryColor)
                .make(),
            "Описание описание описание описание описание описание описание описание описание описание описание описание описанием описание описание описание м  мописание"
                .text
                .softWrap(true)
                .ellipsis
                .fontFamily(FontFamily.metropolis)
                .align(TextAlign.center)
                .gray500
                .make(),
            "14.05.2001".text.fontFamily(FontFamily.metropolis).make()
          ],
        )
            .wh(context.percentWidth * 70, context.percentHeight * 12)
            .card
            .roundedLg
            .elevation(12)
            .make()
            .box
            .alignment(Alignment.bottomCenter)
            .margin(const EdgeInsets.only(bottom: 30))
            .make()
      ],
    ).box.margin(const EdgeInsets.only(left: 6, right: 6, top: 6)).make();
  }
}

class Body extends StatelessWidget {
  const Body({Key? key, this.selectedItemId = 0}) : super(key: key);

  final int selectedItemId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuPageBloc, MenuPageState>(builder: (context, state) {
      switch (context.read<MenuPageBloc>().state.selectedNavigationBarItemId) {
        case 0:
          return VxSwiper.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            height: context.screenHeight,
            itemBuilder: (context, index) {
              return const TravelCard();
            },
          );
        case 4:
          return SettingsPage();
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
                  .margin(const EdgeInsets.only(top: 20))
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ).box.margin(const EdgeInsets.all(14)).makeCentered();
      }
    });
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  _BottomNavBarState();

  int selectedItemId = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuPageBloc, MenuPageState>(
      builder: (context, state) {
        return Frost(
          frostColor: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(23),
          blur: 13,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Assets.icons.uniconsLine.homeAlt,
                Assets.icons.uniconsLine.favorite,
                Assets.icons.uniconsLine.planeFly,
                Assets.icons.uniconsLine.bell,
                Assets.icons.uniconsLine.setting,
              ]
                  .mapIndexed((currentValue, index) => currentValue
                          .svg(
                              color: context
                                          .read<MenuPageBloc>()
                                          .state
                                          .selectedNavigationBarItemId ==
                                      index
                                  ? context.accentColor
                                  : context.primaryColor)
                          .scale(
                              scaleValue: context
                                          .read<MenuPageBloc>()
                                          .state
                                          .selectedNavigationBarItemId ==
                                      index
                                  ? 1.3
                                  : 1.0)
                          .box
                          .make()
                          .onTap(() {
                        context
                            .read<MenuPageBloc>()
                            .add(SelectedNavigationBarItemIdChanged(index));
                      }))
                  .map((e) => e.scale(scaleValue: 1.2))
                  .toList(),
            ).w(context.percentWidth * 80),
          ),
        )
            .box
            .withRounded(value: 23.0)
            .padding(const EdgeInsets.only(bottom: 20))
            .outerShadow
            .make();
      },
    );
  }
}
