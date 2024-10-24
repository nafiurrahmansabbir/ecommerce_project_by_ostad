import 'package:ecommerce_project_by_ostad/data/models/category_model.dart';
import 'package:ecommerce_project_by_ostad/presentation/ui/widgets/category_card.dart';
import 'package:flutter/material.dart';

class HorizontalCategoryListView extends StatelessWidget {
  const HorizontalCategoryListView({
    super.key, required this.categoryList,
  });

  final List<CategoryModel> categoryList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: categoryList.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          categoryModel: categoryList[index],
        );
      },
      separatorBuilder: (_, __) => const SizedBox(width: 8),
    );
  }
}
