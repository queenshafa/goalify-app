import 'package:flutter/material.dart';
import 'package:goalify/data/competition_data.dart';
import 'package:goalify/presentasi/widget/event_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 380,
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff63CDF1).withOpacity(0.8),
                        const Color(0xff352B70).withOpacity(0.1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning, Queenshafa!',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Gabarito',
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Remember your goals?',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Gabarito',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 210,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xffF9EF91).withOpacity(0.7),
                                const Color(0xFFFFF8B9).withOpacity(0.4)
                              ],
                            ),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.7), width: 2),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Your Competition List',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gabarito',
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 210,
                          height: 230,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white.withOpacity(0.7),
                                      width: 2),
                                  right: BorderSide(
                                      color: Colors.white.withOpacity(0.7),
                                      width: 2),
                                  left: BorderSide(
                                      color: Colors.white.withOpacity(0.7),
                                      width: 2))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildCompetitionList(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildCompetitionList(),
                              const SizedBox(
                                height: 10,
                              ),
                              _buildCompetitionList(),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 25,
                                width: 100,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/competitionScreen');
                                  },
                                  child: const Text(
                                    "See more",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Gabarito',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 170,
                              height: 50,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFFFFFFFF).withOpacity(0.2),
                                    const Color(0xFF33C2A4).withOpacity(0.5)
                                  ],
                                ),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.7),
                                    width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "Today's Event",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gabarito',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              width: 170,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white.withOpacity(0.7),
                                          width: 2),
                                      right: BorderSide(
                                          color: Colors.white.withOpacity(0.7),
                                          width: 2),
                                      left: BorderSide(
                                          color: Colors.white.withOpacity(0.7),
                                          width: 2))),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'GDG Bogor 2025',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          fontFamily: 'Gabarito',
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Time: 09:00',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Gabarito'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 170,
                              height: 35,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFFFFFFFF).withOpacity(0.2),
                                    const Color(0xFFF04F54).withOpacity(0.3)
                                  ],
                                ),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.7),
                                    width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "You reach",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gabarito',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              width: 170,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.7),
                                  width: 2,
                                ),
                              ),
                              child: const Text(
                                '10%',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 40,
                                  fontFamily: 'Gabarito',
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 170,
                              height: 35,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFFFFFFFF).withOpacity(0.2),
                                    const Color(0xFFF04F54).withOpacity(0.5)
                                  ],
                                ),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.7),
                                    width: 2),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Of your goals this year!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Gabarito',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
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
                            'January Competition',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gabarito',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/competitionScreen');
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: _buildCompetitionCards(context),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
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
                            'Upcoming Events',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gabarito',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/eventScreen');
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const EventCard(
                      imagePath: 'assets/images/dticx_events.png',
                      title: 'DTICX 2025',
                      description: 'General',
                      price: 'Free',
                      date: '25 June 2025',
                      location: 'Bekasi'),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ],
          )),
    ));
  }

  Container _buildCompetitionList() {
    return Container(
      width: 190,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xff343075),
        border: Border.all(
          color: Colors.white.withOpacity(0.6),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ICOMFEST 2025',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.circle,
                color: Colors.red,
                size: 10,
              ),
              SizedBox(width: 5),
              Text(
                'Deadline: Monday, 02 Februari 2025',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildCompetitionCards(BuildContext context) {
  final competitionData = [
    ...getDataCompetitions("WDC 2025"),
    ...getDataCompetitions("Hackaton 10"),
    ...getDataCompetitions("MAPID WebGIS 2025"),
    ...getDataCompetitions("TECHCOMFEST 2025"),
    ...getDataCompetitions("GENETIC 2025"),
  ];

  return SingleChildScrollView(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        competitionData.length,
        (index) => _buildCardItem(context, competitionData[index]),
      ),
    ),
  );
}

Widget _buildCardItem(BuildContext context, Map<String, String> data) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: 160,
      height: 280,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        border: Border.all(
          width: 2,
          color: Colors.white.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(
            data['image'] ?? '',
            height: 140,
            width: 140,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(
            data['title'] ?? '',
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Gabarito',
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTag('Free', const Color(0xff33C2A4)),
              const SizedBox(width: 5),
              _buildTag('IT', const Color(0xffFFFFFF)),
            ],
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 150,
            height: 25,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/competitionDetailScreen');
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
}

Widget _buildTag(String label, Color color) {
  return Container(
    alignment: Alignment.center,
    width: label == 'Free' ? 50 : 30,
    decoration: BoxDecoration(
      color: color.withOpacity(0.3),
      border: Border.all(
        width: 2,
        color: Colors.white.withOpacity(0.5),
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      label,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Gabarito',
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
