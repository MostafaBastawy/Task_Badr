import 'package:flutter/material.dart';
import 'package:task_badr/modules/home_screen/widgets/service_item.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
      padding: EdgeInsets.zero,
      childAspectRatio: 2.96 / 1,
      children: const [
        ServiceItem(
          image: 'assets/images/home_screen/service1.png',
          label: 'خدمات العناية',
        ),
        ServiceItem(
          image: 'assets/images/home_screen/service2.png',
          label: 'خدمات علاجية',
        ),
        ServiceItem(
          image: 'assets/images/home_screen/service3.png',
          label: 'خدمات صحية',
        ),
        ServiceItem(
          image: 'assets/images/home_screen/service4.png',
          label: 'خدمات التطعيم',
        ),
      ],
    );
  }
}
