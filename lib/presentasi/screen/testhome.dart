import 'package:flutter/material.dart';

class Testhome extends StatelessWidget {
  const Testhome({super.key});

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
        child: Column(
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
                    onPressed: () {},
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
                              onPressed: () {},
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
            SizedBox(
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
                    onPressed: () {},
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
            Container(
              width: 360,
              height: 90,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  border: Border.all(
                    width: 2,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Image(
                      image: AssetImage('assets/images/ic_icomfest.png')),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Google Developer Groups',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Gabarito'),
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontFamily: 'Gabarito',
                            fontSize: 12),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              '26 Januari, 2025',
                              style: TextStyle(
                                  fontSize: 12, fontFamily: 'Gabarito'),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 20,
                            decoration: BoxDecoration(
                                color: const Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: const Text(
                              'Bekasi',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Gabarito'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xff33C2A4).withOpacity(0.3),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.5), width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Free',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Gabarito'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
