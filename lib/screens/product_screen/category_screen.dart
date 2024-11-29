import 'package:flutter/cupertino.dart';
import 'package:athathi/export.dart';
import 'package:athathi/screens/product_screen/widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List<CategoryItem> categoryList = List.generate(10, (i) => CategoryItem());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
        ],
      ),
      body: Padding(padding: p24, child: Wrap(children: categoryList)),
    );
  }

  Widget customCarouselView() {
    return PageView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.pexels.com/photos/28783476/pexels-photo-28783476/free-photo-of-black-and-white-portrait-of-woman-with-tattoos.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        );
      },
    );
  }
}
