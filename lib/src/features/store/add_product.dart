import 'package:dro_test/src/core/constant/colors.dart';
import 'package:dro_test/src/core/constant/images.dart';
import 'package:dro_test/src/widgets/spacing.dart';
import 'package:dro_test/src/widgets/statusbar.dart';
import 'package:flutter/material.dart';

class AddProdut extends StatelessWidget {
  static String routeName = '/addProduct';
  const AddProdut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Statusbar(
        child: Scaffold(
      backgroundColor: AppColors.light,
      appBar: AppBar(
        backgroundColor: AppColors.light,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: AppColors.dark,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                      color: AppColors.droPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: AppColors.light,
                      ),
                      Text(
                        '4',
                        style: TextStyle(fontSize: 15, color: AppColors.light),
                      )
                    ],
                  )),
            ),
          )
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: Image.asset(AppImages.para)),
            const Spacing.mediumHeight(),
            const Text('Garlic Acid'),
            const Text('acidic 500mg'),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.icon,
                maxRadius: 30,
              ),
              title: Text('Sold By'),
              subtitle: Text('Emzor paracitals'),
            )
          ],
        ),
      ),
    ));
  }
}
