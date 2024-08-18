import 'package:flutter/material.dart';
import 'package:supermarket_app/app/home/ui/widgets/home_botton_navigation_bar.dart';
import '../../../main.dart';
import '../../core/constants/app_colors.dart';
import '../domain/controllers/home_controller.dart';
import '../domain/states/home_states.dart';
import 'widgets/button_card.widget.dart';
import 'widgets/banner_carousel/banner_carousel_widget.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/home_floating_action_button.dart';
import 'widgets/products_section/products_section_widget.dart';
import 'widgets/shopping_categories/shopping_categories_section_widget.dart';
import 'widgets/supermarket_loading_animation_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = getIt<HomeController>();
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getHomeData();
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
      valueListenable: controller.state,
      builder: (BuildContext context, dynamic value, Widget? child) {
        return value is LoadingState
            ? const Scaffold(
                body: Center(child: SupermarketLoadingAnimation()),
              )
            : value is ErrorState
                ? Center(child: Text(value.error.toString()))
                : value is SuccessState
                    ? Scaffold(
                        appBar: CustomAppBar(
                            userEntity: value.homeEntity.userEntity),
                        body: SafeArea(
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ButtonCardWidget(
                                          title: 'ORDER\nAGAIN',
                                          image: ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                                AppColors.accentGreen
                                                    .withOpacity(0.4),
                                                BlendMode.color),
                                            child: Image.asset(
                                                'assets/images/food-bag.png',
                                                height: 60),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: ButtonCardWidget(
                                          title: 'LOCAL\nSHOP',
                                          image: Image.asset(
                                              'assets/images/store.png',
                                              height: 60),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0),
                                  child: BannersCarouselWidget(
                                    banners: value.homeEntity.banners,
                                    isSquare: false,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.25,
                                  child: ShoppingCategoriesSectionWidget(
                                    categories: value.homeEntity.categories,
                                  ),
                                ),
                                ProductsSectionWidget(
                                  products: value.homeEntity.products,
                                ),
                              ],
                            ),
                          ),
                        ),
                        floatingActionButton: HomeFloatingActionButton(
                            scrollController: scrollController),
                        floatingActionButtonLocation:
                            FloatingActionButtonLocation.centerDocked,
                        bottomNavigationBar: HomeBottonNavigationBar(
                            scrollController: scrollController))
                    : const Scaffold();
      },
    );
  }
}
