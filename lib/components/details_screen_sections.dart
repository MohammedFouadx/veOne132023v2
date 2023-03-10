

import 'package:flutter/material.dart';

import '../core/theme/theme.dart';
import 'category_card.dart';

class AddToCartCard extends StatelessWidget {
  const AddToCartCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      alignment: Alignment.center,
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ThemeService().themelight().primaryColor,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text('Add to cart     ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18)),
          const SizedBox(
              height: 20,
              child: VerticalDivider(
                color: Colors.white,
              )),
          Text('    \$ 14',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18)),
        ],
      ),
    );
  }
}

class SizeListSection extends StatelessWidget {
  const SizeListSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: CategoryItem(
                isSelected: true,
                iconData: null,
                title: "Small"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: CategoryItem(
                isSelected: false,
                iconData: null,
                title: "Medium"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: CategoryItem(
                isSelected: false,
                iconData: null,
                title: "Large"),
          ),
        ],
      ),
    );
  }
}
