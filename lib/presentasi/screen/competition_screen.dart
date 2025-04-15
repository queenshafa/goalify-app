import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class CompetitionScreen extends StatelessWidget {
  const CompetitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Competitions!',
          style: TextStyle(
              fontSize: 24,
              fontFamily: 'Gabarito',
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                const Color(0xff352B70).withOpacity(0.9),
                const Color(0xffF9EF91)
              ])),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff3F369A),
              Color(0xff070942),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                  height: 150,
                  width: 380,
                  child: AnotherCarousel(
                    images: const [
                      AssetImage('assets/images/exbanner_1.png'),
                      AssetImage('assets/images/exbanner_2.png'),
                      AssetImage('assets/images/exbanner_3.png'),
                    ],
                    showIndicator: false,
                    borderRadius: true,
                    moveIndicatorFromBottom: 180.0,
                    noRadiusForIndicator: true,
                  )),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 200,
                  height: 35,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff615ADB),
                        const Color(0xff343075).withOpacity(0.2)
                      ],
                    ),
                  ),
                  child: const Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gabarito',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryCard(
                      image: 'assets/images/category_smp.png',
                      title: 'SMP Sederajat'),
                  CategoryCard(
                      image: 'assets/images/category_smk.png',
                      title: 'SMA Sederajat'),
                  CategoryCard(
                      image: 'assets/images/category_smk.png',
                      title: 'Kuliah Sederajat'),
                ],
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 200,
                  height: 35,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff615ADB),
                        const Color(0xff343075).withOpacity(0.2)
                      ],
                    ),
                  ),
                  child: const Text(
                    'Deadline',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gabarito',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilterButton(text: 'Today'),
                    FilterButton(text: 'Next Week'),
                    FilterButton(text: 'Next Month'),
                    FilterButton(text: 'More'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    // Bisa ubah jumlah card sesuai kebutuhan
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 160,
                        height: 280,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            border: Border.all(
                                width: 2, color: Colors.white.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Image.asset('assets/images/ic_icomfest.png'),
                            const SizedBox(height: 10),
                            const Text(
                              'ICOMFEST 2025',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gabarito',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff33C2A4)
                                          .withOpacity(0.3),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Text(
                                    'Free',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Gabarito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  alignment: Alignment.center,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFFFFF)
                                          .withOpacity(0.3),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Text(
                                    'IT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Gabarito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: 150,
                              height: 25,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'competitionDetailScreen');
                                },
                                child: const Text(
                                  "See more",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Gabarito',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;

  const CategoryCard({
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 113,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Gabarito',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String text;

  const FilterButton({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
