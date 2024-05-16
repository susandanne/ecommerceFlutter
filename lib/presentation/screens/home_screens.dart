import 'package:ecommerceflutter/presentation/utility/assets_path.dart';
import 'package:ecommerceflutter/presentation/widgets/RightAppBarWidget.dart';
import 'package:ecommerceflutter/presentation/widgets/all_category.dart';
import 'package:ecommerceflutter/presentation/widgets/carosel.dart';
import 'package:ecommerceflutter/presentation/widgets/categoryitem.dart';
import 'package:ecommerceflutter/presentation/widgets/populer_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: rightAppbarTop(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                searchTextField(),
                SizedBox(
                  height: 8,
                ),
                Carosel(),
                SizedBox(
                  height: 8,
                ),
                CategoryHeader(title: 'All category', ontapcategory: () {}),
                SizedBox(
                  height: 4,
                ),
                ListViewCategoryAll(),
                CategoryHeader(title: 'Popular ', ontapcategory: () {}),
                ListViewPopulerProducts(),
                SizedBox(
                  height: 8,
                ),
                CategoryHeader(title: 'Special ', ontapcategory: () {}),
                ListViewPopulerProducts(),
                SizedBox(
                  height: 8,
                ),
                CategoryHeader(title: 'New ', ontapcategory: () {}),
                ListViewPopulerProducts(),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ));
  }

  Widget ListViewCategoryAll() {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 12);
        },
      ),
    );
  }

  Widget ListViewPopulerProducts() {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return PopularProducts();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 8);
        },
      ),
    );
  }

  Widget searchTextField() {
    return TextFormField(
      key: _globalKey,
      controller: _searchController,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'search now',
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
          fillColor: Colors.grey.shade300,
          filled: true),
    );
  }

  AppBar rightAppbarTop() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.logonavsvg),
      actions: [
        RightAppbaabarIcon(
          icon: Icons.person,
          ontapaction: () {},
        ),
        SizedBox(
          width: 7,
        ),
        RightAppbaabarIcon(
          icon: Icons.call,
          ontapaction: () {},
        ),
        SizedBox(
          width: 7,
        ),
        RightAppbaabarIcon(
          icon: Icons.notifications,
          ontapaction: () {},
        ),
        SizedBox(
          width: 7,
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }
}
