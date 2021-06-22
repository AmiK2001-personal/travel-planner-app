import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelplanner/presentation/utils/assets.gen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../bloc/bloc.dart';

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
                Assets.icons.uniconsLine.planeFly,
                Assets.icons.uniconsLine.user,
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
            ).w(context.percentWidth * 70),
          ),
        )
            .box
            .withRounded(value: 23.0)
            .padding(const EdgeInsets.only(bottom: 20))
            .make();
      },
    );
  }
}
