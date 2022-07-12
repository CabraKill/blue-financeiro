import 'package:dox_financeiro/presentation/pages/finances/finances_page.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class DoxAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  final VoidCallback? onBackTap;
  const DoxAppBar({
    required this.title,
    this.onBackTap,
    this.height = 64,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        decoration: const BoxDecoration(color: DoxColors.tertiary),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 24,
        ),
        child: SafeArea(
          child: Row(
            children: [
              AppBarActionButton(
                child: LeftArrowIcon(
                  color: DoxColors.primary,
                ),
                onTap: onBackTap,
              ),
              Expanded(
                  child: DoxAppBarTitleWithDrawer(
                title: title,
              )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class DoxAppBarTitleWithDrawer extends StatelessWidget {
  final String title;
  const DoxAppBarTitleWithDrawer({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: DoxTypograph.appBarTitle,
              )),
        ),
        AppBarActionButton(
          child: const SortIcon(
            color: DoxColors.primary,
          ),
          onTap: () {
            //TODO: open drawer
          },
        ),
      ],
    );
  }
}

class AppBarActionButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  const AppBarActionButton({
    required this.child,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox.square(
        dimension: 44,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        ),
      ),
    );
  }
}
