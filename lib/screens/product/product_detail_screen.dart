import 'package:athathi/export.dart';
import 'package:athathi/screens/home_screen/widgets/carouselView_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: px4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [CustomCarouselView(), gap24],
          ),
        ),
      ),
    );
  }
}
