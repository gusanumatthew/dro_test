import 'package:dro_test/src/core/constant/colors.dart';
import 'package:dro_test/src/core/constant/images.dart';
import 'package:dro_test/src/features/store/data/product_data.dart';
import 'package:dro_test/src/features/store/product_tile.dart';
import 'package:dro_test/src/features/store/search_screen.dart';
import 'package:dro_test/src/widgets/spacing.dart';
import 'package:dro_test/src/widgets/statusbar.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  static String routeName = '/store';
  const StoreScreen({Key? key}) : super(key: key);

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
              title: Text(
                '${myProduct.length} item(s)',
                style: const TextStyle(
                  color: AppColors.dark,
                ),
              ),
              elevation: 0.0,
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            primary: Colors.white60,
                            padding: const EdgeInsets.all(8)),
                        child: Image.asset(
                          AppImages.sort,
                          width: 20,
                        ),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            primary: Colors.white60,
                            padding: const EdgeInsets.all(8)),
                        child: Image.asset(
                          AppImages.filter,
                          width: 20,
                        ),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            primary: Colors.white60,
                            padding: const EdgeInsets.all(8)),
                        child: Image.asset(
                          AppImages.search,
                          width: 20,
                        ),
                        onPressed: () => Navigator.pushNamed(
                            context, SearchProductScreen.routeName),
                      ),
                    ],
                  ),
                  const Spacing.mediumHeight(),
                  Expanded(
                    child: GridView.builder(
                        // shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: myProduct.length,
                        itemBuilder: (context, index) {
                          return ProductTile(
                            model: myProduct[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: AppColors.darkPurple,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: const [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: AppColors.light,
                          ),
                          Text(
                            'Bag',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.light,
                            ),
                          ),
                        ]),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              primary: AppColors.light,
                              padding: const EdgeInsets.all(8)),
                          child: const Text(
                            '3',
                            style:
                                TextStyle(fontSize: 15, color: AppColors.dark),
                          ),
                          onPressed: () {},
                        ),
                      ]),
                ),
              ),
            )));
  }
}
