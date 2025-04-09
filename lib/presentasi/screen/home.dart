import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
                              color: Colors.white.withOpacity(0.7), width: 2),
                          right: BorderSide(
                              color: Colors.white.withOpacity(0.7), width: 2),
                          left: BorderSide(
                              color: Colors.white.withOpacity(0.7), width: 2))),
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
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Rata kiri semua
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
                                height: 5), // Jarak antara title dan deadline
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 10, // Biar lebih jelas tapi ga kegedean
                                ),
                                SizedBox(width: 5), // Jarak icon ke teks
                                Text(
                                  'Deadline: Monday, 02 Februari 2025',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9, // Lebih kecil dari judul
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
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Rata kiri semua
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
                                height: 5), // Jarak antara title dan deadline
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 10, // Biar lebih jelas tapi ga kegedean
                                ),
                                SizedBox(width: 5), // Jarak icon ke teks
                                Text(
                                  'Deadline: Monday, 02 Februari 2025',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9, // Lebih kecil dari judul
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
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Rata kiri semua
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
                                height: 5), // Jarak antara title dan deadline
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 10, // Biar lebih jelas tapi ga kegedean
                                ),
                                SizedBox(width: 5), // Jarak icon ke teks
                                Text(
                                  'Deadline: Monday, 02 Februari 2025',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9, // Lebih kecil dari judul
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
                            color: Colors.white.withOpacity(0.7), width: 2),
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
                                CrossAxisAlignment.start, // Rata kiri semua
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
                            color: Colors.white.withOpacity(0.7), width: 2),
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
                            color: Colors.white.withOpacity(0.7), width: 2),
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
    ));
  }
}
