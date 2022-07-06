import 'package:dox_financeiro/presentation/pages/finances/widgets/finances_tabs/finances_tabs_widget.dart';
import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/dox_sizing.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class FinancesPage extends StatefulWidget {
  const FinancesPage({Key? key}) : super(key: key);

  @override
  State<FinancesPage> createState() => _FinancesPageState();
}

class _FinancesPageState extends State<FinancesPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DoxAppBar(
        onBackTap: () {
          //TODO: ex: pop page here, check if can pop or call controller
        },
      ),
      body: TertiaryBackground(
          child: Column(
        children: [
          Align(
            child: FinancesTabs(
              currentIndex: _currentIndex,
              onTabTap: (index) => setState(() {
                _currentIndex = index;
              }),
            ),
          ),
        ],
      )),
    );
  }
}

class TertiaryBackground extends StatelessWidget {
  final Widget child;
  const TertiaryBackground({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DoxColors.tertiary,
      child: child,
    );
  }
}

class DoxAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final VoidCallback? onBackTap;
  const DoxAppBar({
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
                color: DoxColors.cyan,
                onTap: onBackTap,
              )),
              const Expanded(child: DoxAppBarTitleWithDrawer()),
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
  const DoxAppBarTitleWithDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              alignment: Alignment.center,
              child: Text("Financeiro", style: DoxTypograph.appBarTitle)),
        ),
        AppBarActionButton(
          child: const SortIcon(
            color: DoxColors.cyan,
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
        dimension: DoxSizing.hug,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        ),
      ),
    );
  }
}

class SortIcon extends DoxIconButton {
  const SortIcon({
    required super.color,
    super.onTap,
    super.key,
  });

  @override
  Widget body(BuildContext context) {
    return Icon(
      Icons.sort,
      color: color,
    );
  }
}

class LeftArrowIcon extends DoxIconButton {
  const LeftArrowIcon({
    required super.color,
    super.onTap,
    super.key,
  });

  @override
  Widget body(BuildContext context) {
    //TODO: should have an exported icon.
    //Material has it's own inner spacing
    return SizedBox(
      width: 14,
      height: 24,
      child: Icon(
        Icons.arrow_back_ios,
        color: color,
      ),
    );
  }
}

abstract class DoxIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color color;
  const DoxIconButton({
    required this.color,
    this.onTap,
    Key? key,
  }) : super(key: key);

  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Center(child: body(context));
  }
}
