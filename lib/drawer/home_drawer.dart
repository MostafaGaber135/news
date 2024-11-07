import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/app_theme.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key, required this.onItemSelected});
  final void Function(DrawerItem) onItemSelected;
  @override
  Widget build(BuildContext context) {
    TextStyle? titleLargeStyle =
        Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 24,
            );
    Size screenSize = MediaQuery.sizeOf(context);
    return SizedBox(
      width: screenSize.width * 0.7,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: screenSize.height * 0.2,
            width: double.infinity,
            color: AppTheme.primary,
            child: Text(
              'News App!',
              style: titleLargeStyle,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsetsDirectional.only(
                start: 12,
                top: 12,
              ),
              color: AppTheme.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => onItemSelected(
                      DrawerItem.categories,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.list,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Categories',
                          style: titleLargeStyle?.copyWith(
                            color: AppTheme.charcoal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => onItemSelected(
                      DrawerItem.settings,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.gear,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Settings',
                          style: titleLargeStyle?.copyWith(
                            color: AppTheme.charcoal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum DrawerItem {
  categories,
  settings,
}
