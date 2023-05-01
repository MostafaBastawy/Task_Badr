import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/modules/booking_screen/widgets/booking_item.dart';

class BookingList extends StatefulWidget {
  const BookingList({Key? key}) : super(key: key);

  @override
  State<BookingList> createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  List<int> items = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final key = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedList(
        key: key,
        initialItemCount: items.length,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) =>
                buildItem(
          item: items[index],
          index: index,
          animation: animation,
        ),
      ),
    );
  }

  Widget buildItem({
    required int item,
    required int index,
    required Animation<double> animation,
  }) =>
      BookingItem(
        item: item,
        onTap: () => removeItem(item, index),
        animation: animation,
      );

  void removeItem(int item, int index) {
    final item = items.removeAt(index);

    key.currentState!.removeItem(
      index,
      (context, animation) => buildItem(
        item: item,
        index: index,
        animation: animation,
      ),
    );
  }
}
