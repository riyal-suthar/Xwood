import 'package:athathi/screens/home_screen/home_screen.dart';
import 'package:athathi/screens/product/category_screen.dart';
import 'package:flutter/foundation.dart';

import '../../../export.dart';

class ProductFilterScreen extends StatelessWidget {
  ProductFilterScreen({super.key});

  ValueNotifier<int> _page = ValueNotifier(0);
  List<Widget> _listPages = [CategoryScreen(), HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            flex: 1,
            child: ListView.separated(
              itemCount: _listPages.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _page.value = index;
                  },
                  child: Text(index.toString()),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
          ),
          Expanded(flex: 2, child: Material(child: _listPages[_page.value])),
        ],
      ),
    );
  }
}
