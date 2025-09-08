import 'package:flutter/material.dart';
import 'package:food_dilivery_app/widgets/Onbording.dart';
import 'package:food_dilivery_app/widgets/images.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'title': 'Wide range of Food Categories & more',
      'description':
          "Browse through our extensive list of restaurants and dishes, and when you're ready to order, simply add your desired items to your cart and checkout. It's that easy!.",
      'image': AssetImageClass.launch,
    },
    {
      'title': 'Free Deliveries for One Month!',
      'description':
          'Get your favorite meals delivered to your doorstep for free with our online food delivery app - enjoy a whole month of complimentary delivery!',
      'image': AssetImageClass.launch2,
    },
    {
      'title': 'Get started on Ordering your Food',
      'description':
          'Please create an account or sign in to your existing account to start browsing our selection of delicious meals from your favorite restaurants.',
      'image': AssetImageClass.launch3,
    },
  ];

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    final page = _pages[index];
                    return OnboardingPage(
                      title: page['title']!,
                      description: page['description']!,
                      image: page['image']!,
                      count: _pages.length,
                      currentPage: _currentPage,
                    );
                  },
                ),
              ),
              // IndicatorDots(
              //   currentPage: _currentPage,
              //   count: _pages.length,
              // ),
              NavigationButtons(
                currentPage: _currentPage,
                totalPages: _pages.length,
                onPageChange: (page) {
                  _pageController.animateToPage(
                    page,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
