import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Financial Service',
      home: History(title: 'Mobile Financial Service'),
    );
  }
}

class History extends StatefulWidget {
  const History({super.key, required this.title});
  final String title;

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebedf5),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            // User Profile & Notification Icon
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: const Image(
                          image: NetworkImage(
                              'https://media.licdn.com/dms/image/D4E03AQF0-X7TvMFGTg/profile-displayphoto-shrink_800_800/0/1697602264094?e=1710979200&v=beta&t=2e2yXmGlLeQapwsm5MD3rPIbMvEsexB1G_Y7CjRignI'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lumi",
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFa5a6ab), fontSize: 11.0),
                        ),
                        Text(
                          "Novry M",
                          style: GoogleFonts.poppins(
                              color: const Color(
                                0xFF6e6f73,
                              ),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: GoogleFonts.poppins(
                          color: const Color(0xFFa5a6ab), fontSize: 11.0),
                    ),
                    Text(
                      "\$ 24,562.00",
                      style: GoogleFonts.poppins(
                          color: const Color(
                            0xFF6e6f73,
                          ),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 25.0),
            // Tap for Send Money
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white,
              ),
              height: 100.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: const Color(0xFF535de5)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Tap for Send Money",
                    style: GoogleFonts.poppins(
                        color: const Color(0xFFa5a6ab),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            // Recent Transfer
            Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                height: 100.0,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recent Transfer",
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF77767b),
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: const Image(
                              image: NetworkImage(
                                  'https://media.licdn.com/dms/image/D4E03AQF0-X7TvMFGTg/profile-displayphoto-shrink_800_800/0/1697602264094?e=1710979200&v=beta&t=2e2yXmGlLeQapwsm5MD3rPIbMvEsexB1G_Y7CjRignI'),
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: const Image(
                              image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/92445460?v=4'),
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: const Image(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoVPDJ2V9sgNh9gXZgkwN1_MSiAfR9gSslVg&usqp=CAU'),
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: const Image(
                              image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/147942124?v=4'),
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: const Image(
                              image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/112741399?v=4'),
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: const Image(
                              image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/88570226?v=4'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 10.0,
            ),
            // Recent Transactions
            Row(
              children: [
                Text(
                  "Recent Transactions",
                  style: GoogleFonts.poppins(
                      color: const Color(0xFF77767b),
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      "See all",
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF77767b), fontSize: 10.0),
                    ),
                    const Icon(
                      Icons.chevron_right_outlined,
                      color: Color(0xFF77767b),
                      size: 17.0,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            // Recent Activity History
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: const Image(
                            image: NetworkImage(
                                'https://media.licdn.com/dms/image/D4E03AQF0-X7TvMFGTg/profile-displayphoto-shrink_800_800/0/1697602264094?e=1710979200&v=beta&t=2e2yXmGlLeQapwsm5MD3rPIbMvEsexB1G_Y7CjRignI'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lumi Novry M",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFF6e6f73,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Send Money",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFaacef1), fontSize: 11.0),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "-\$66.02",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFFaacef1,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2024-17-2 04:09 PM",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFcfcfcf), fontSize: 10.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: const Image(
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/92445460?v=4'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kenshi Takahashi",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFF6e6f73,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Cashout",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFefa5b1), fontSize: 11.0),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "-\$120.02",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFFefa5b1,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2024-17-2 04:09 PM",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFcfcfcf), fontSize: 10.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: const Image(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoVPDJ2V9sgNh9gXZgkwN1_MSiAfR9gSslVg&usqp=CAU'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Toji Fushiguro",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFF6e6f73,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Send Money",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFaacef1), fontSize: 11.0),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "-\$50.00",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFFaacef1,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2024-17-2 04:09 PM",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFcfcfcf), fontSize: 10.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: const Image(
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/88570226?v=4'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fathir Akmal B",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFF6e6f73,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Send Money",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFaacef1), fontSize: 11.0),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "-\$250.00",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFFaacef1,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2024-17-2 04:09 PM",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFcfcfcf), fontSize: 10.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: const Image(
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/147942124?v=4'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Andry Bima K",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFF6e6f73,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Receive Money",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFF84c3a4), fontSize: 11.0),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "-\$250.00",
                            style: GoogleFonts.poppins(
                                color: const Color(
                                  0xFF84c3a4,
                                ),
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2024-17-2 04:09 PM",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFcfcfcf), fontSize: 10.0),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
