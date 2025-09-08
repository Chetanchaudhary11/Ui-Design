import 'package:flutter/material.dart';
import 'package:food_dilivery_app/LogScreen/logincall.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final int currentPage;
  final int count;
  const OnboardingPage(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.currentPage,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image container
            Container(
              width: double.infinity,
              height: 346,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(count, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  height: 10.0,
                  width: 12.0,
                  decoration: BoxDecoration(
                    color:
                        currentPage == index ? Colors.orange : Colors.grey[300],
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                );
              }),
            ),
            SizedBox(height: screenHeight * 0.03),
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            // Description
            Text(
              description,
              style: const TextStyle(
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationButtons extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final void Function(int) onPageChange;

  const NavigationButtons({
    Key? key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                if (currentPage == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                } else {
                  onPageChange(currentPage - 1);
                }
              },
              style: TextButton.styleFrom(
                minimumSize: Size(153, 58),
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                // side: BorderSide(
                //     color:
                //         Color(0XFFD5DEE7)),
              ),
              child: Text(
                'Skip',
                style: TextStyle(color: Color(0XFF000000), fontSize: 18),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (currentPage == totalPages - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                } else {
                  onPageChange(currentPage + 1); // Go to the next page
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                minimumSize: Size(183, 58),
              ),
              child: Text(
                currentPage == totalPages - 1 ? 'Continue' : 'Next',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ));
  }
}
