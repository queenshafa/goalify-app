import 'package:flutter/material.dart';
import 'package:goalify/presentasi/widget/navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
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
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 380,
                      height: 100,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      margin: const EdgeInsets.symmetric(vertical: 30),
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
                                'Good Morning, User!',
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
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff38308E),
                        // Color(0xff080A43),
                        Color(0xff2B267A),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
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
                                  color: Colors.white.withOpacity(0.7),
                                  width: 2),
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
                                Container(
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
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, // Rata kiri semua
                                    children: [
                                      Text(
                                        'ICOMFEST 2025',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              12, // Besarin dikit biar sesuai referensi
                                        ),
                                      ),
                                      SizedBox(
                                          height:
                                              5), // Jarak antara title dan deadline
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.red,
                                            size:
                                                10, // Biar lebih jelas tapi ga kegedean
                                          ),
                                          SizedBox(
                                              width: 5), // Jarak icon ke teks
                                          Text(
                                            'Deadline: Monday, 02 Februari 2025',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  9, // Lebih kecil dari judul
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
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
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, // Rata kiri semua
                                    children: [
                                      Text(
                                        'ICOMFEST 2025',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              12, // Besarin dikit biar sesuai referensi
                                        ),
                                      ),
                                      SizedBox(
                                          height:
                                              5), // Jarak antara title dan deadline
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.red,
                                            size:
                                                10, // Biar lebih jelas tapi ga kegedean
                                          ),
                                          SizedBox(
                                              width: 5), // Jarak icon ke teks
                                          Text(
                                            'Deadline: Monday, 02 Februari 2025',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  9, // Lebih kecil dari judul
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
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
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, // Rata kiri semua
                                    children: [
                                      Text(
                                        'ICOMFEST 2025',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              12, // Besarin dikit biar sesuai referensi
                                        ),
                                      ),
                                      SizedBox(
                                          height:
                                              5), // Jarak antara title dan deadline
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.red,
                                            size:
                                                10, // Biar lebih jelas tapi ga kegedean
                                          ),
                                          SizedBox(
                                              width: 5), // Jarak icon ke teks
                                          Text(
                                            'Deadline: Monday, 02 Februari 2025',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  9, // Lebih kecil dari judul
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 25,
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: () {},
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
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            width: 2),
                                        right: BorderSide(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            width: 2),
                                        left: BorderSide(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            width: 2))),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start, // Rata kiri semua
                                      children: [
                                        Text(
                                          'GDG Bogor 2025',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            fontFamily:
                                                'Gabarito', // Besarin dikit biar sesuai referensi
                                          ),
                                        ),
                                        SizedBox(
                                            height:
                                                5), // Jarak antara title dan deadline// Jarak icon ke teks
                                        Text(
                                          'Time: 09:00',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily:
                                                  'Gabarito' // Lebih kecil dari judul
                                              ),
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
                              // Container atas (judul)
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

                              // Container putih (angka 10%)
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

                              // Container bawah (hijau) DIPISAH
                              Container(
                                alignment: Alignment.center,
                                width: 170,
                                height: 35, // Naik sedikit biar rapat
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
                Container(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                width: 160,
                                height: 280,
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.white.withOpacity(0.5)),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Image.asset(
                                        'assets/images/ic_icomfest.png'),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff33C2A4)
                                                  .withOpacity(0.3),
                                              border: Border.all(
                                                width: 2,
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
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
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
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
                                image: AssetImage(
                                    'assets/images/ic_icomfest.png')),
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
                                      color: Colors.white,
                                      fontFamily: 'Gabarito'),
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Text(
                                        '26 Januari, 2025',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Gabarito'),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 1)),
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
                                    color: Colors.white.withOpacity(0.5),
                                    width: 1),
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
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
                // const NavBar()
              ],
            )));
  }
}
