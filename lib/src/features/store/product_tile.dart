import 'package:dro_test/src/core/constant/colors.dart';
import 'package:dro_test/src/features/store/add_product.dart';

import 'package:dro_test/src/features/store/model/product_model.dart';
import 'package:dro_test/src/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key, required this.model}) : super(key: key);
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    // final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AddProdut.routeName),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 125,
              child: Card(
                  elevation: 3.0,
                  color: AppColors.light,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset(
                              model.imageUrl,
                              fit: BoxFit.fill,
                              height: 60,
                            ),
                          ),
                          Text(model.name),
                          Text(model.desc),
                          Text(model.pill),
                        ],
                      ),
                    ),
                    const Spacing.largeHeight(),
                    Positioned(
                      right: 15,
                      bottom: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.icon,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            model.amount,
                            style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: AppColors.light,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ])))),
    );
  }
}
