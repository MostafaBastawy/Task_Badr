import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_badr/modules/home_screen/widgets/account_status.dart';
import 'package:task_badr/modules/home_screen/widgets/add_new_service.dart';
import 'package:task_badr/modules/home_screen/widgets/home_app_bar.dart';
import 'package:task_badr/modules/home_screen/widgets/our_services.dart';
import 'package:task_badr/modules/home_screen/widgets/reservation_chart.dart';
import 'package:task_badr/modules/home_screen/widgets/reservations.dart';
import 'package:task_badr/modules/home_screen/widgets/revisions_widget.dart';
import 'package:task_badr/modules/home_screen/widgets/wallet_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBar(),
        SizedBox(height: 20.h),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  const AccountStatus(),
                  SizedBox(height: 21.h),
                  const AddNewService(),
                  SizedBox(height: 25.h),
                  const OurServices(),
                  SizedBox(height: 32.h),
                  Stack(
                    children: const [
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: RevisionsWidget(),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: WalletWidget(),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  const Reservations(),
                  SizedBox(height: 28.h),
                  const ReservationChart(),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
