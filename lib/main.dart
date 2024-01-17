import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Financial Service',
      home: MyHomePage(title: 'Mobile Financial Service'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // BottomNavBar()
  ClipRRect _getBtmNavbar() {
    return const ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color.fromARGB(255, 255, 255, 255),
        notchMargin: 0,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.home,
                color: Color(0xFF404abf),
                size: 40.0,
              ),
              Icon(
                Icons.person_outline,
                color: Color(0xFF858585),
                size: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Page
  final List<Widget> screens = [
    const History(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFebedf5),
      body: Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
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
                            "Hello Lumi,",
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFa5a6ab), fontSize: 11.0),
                          ),
                          Text(
                            "Welcome Back",
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
                  Container(
                    height: 40,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.5, color: const Color(0xFFc7cad0)),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: const Icon(
                      Icons.notifications_outlined,
                      color: Color(0xFF4953e6),
                      size: 25.0,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25.0),
              // Wallet Information Card & Fitur
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: const Color(0xFF535de5),
                ),
                height: 175.0,
                width: double.infinity,
                child: Column(
                  children: [
                    // Wallet
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Wallet Balance
                            Row(
                              children: [
                                const SizedBox(
                                  width: 8.0,
                                ),
                                const Icon(
                                  Icons.wallet,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Your Wallet Balance",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                            // Wallet Saldo
                            Row(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                Text(
                                  "24,562.00",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Icon(
                                  Icons.visibility_off,
                                  color: Color.fromARGB(71, 255, 255, 255),
                                  size: 20.0,
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.qr_code_scanner,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    // Fitur
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Balance
                        Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.attach_money,
                                color: Color(0xFF535de5),
                                size: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Balance",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        // Send
                        Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.upload,
                                color: Color(0xFF535de5),
                                size: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Send",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        // Request
                        Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.info_outline,
                                color: Color(0xFF535de5),
                                size: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Request",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        // Transfer
                        Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.transform_rounded,
                                color: Color(0xFF535de5),
                                size: 20.0,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Transfer",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const History()));
                          },
                          // History
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.white),
                                child: const Icon(
                                  Icons.history,
                                  color: Color(0xFF535de5),
                                  size: 20.0,
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "History",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // Other Services Card
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                ),
                height: 210.0,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Other Services",
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
                        Column(
                          children: [
                            // Create Invoice
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFd8d8f4)),
                                  child: const Icon(
                                    Icons.library_books,
                                    color: Color(0xFF535de5),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Create Invoice",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF77767b),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            // Electricity
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFf3e9e9)),
                                  child: const Icon(
                                    Icons.light,
                                    color: Color(0xFFb4686f),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Electricity",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF77767b),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            // Pay Bills
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFf3eed9)),
                                  child: const Icon(
                                    Icons.receipt_long_outlined,
                                    color: Color(0xFFeac77f),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Pay Bills",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF77767b),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            // Movie
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFeaeaf0)),
                                  child: const Icon(
                                    Icons.movie,
                                    color: Color(0xFF8065c4),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Movie",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF77767b),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            // Bank Transfer
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFf5e8e8)),
                                  child: const Icon(
                                    Icons.museum,
                                    color: Color(0xFFce8490),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Bank Transfer",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF77767b),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            // Add Money
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFd7daf3)),
                                  child: const Icon(
                                    Icons.wallet_outlined,
                                    color: Color(0xFF5f5de9),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Add Money",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF77767b),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            // Savings
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFece6f2)),
                                  child: const Icon(
                                    Icons.museum,
                                    color: Color(0xFF7d68b6),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Savings",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF77767b),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            // Share
                            Column(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xFFf5ead6)),
                                  child: const Icon(
                                    Icons.share,
                                    color: Color(0xFFe6bc7a),
                                    size: 20.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  "Share",
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFF77767b),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              // Recent Activity
              Row(
                children: [
                  Text(
                    "Recent Activity",
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
                            color: const Color(0xFFa0bde3), fontSize: 10.0),
                      ),
                      const Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xFFa0bde3),
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
                                  color: const Color(0xFFaacef1),
                                  fontSize: 11.0),
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
                                  color: const Color(0xFFcfcfcf),
                                  fontSize: 10.0),
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
                                  color: const Color(0xFFefa5b1),
                                  fontSize: 11.0),
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
                                  color: const Color(0xFFcfcfcf),
                                  fontSize: 10.0),
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
                                  color: const Color(0xFFaacef1),
                                  fontSize: 11.0),
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
                                  color: const Color(0xFFcfcfcf),
                                  fontSize: 10.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF404abf),
        foregroundColor: const Color(0xFF404abf),
        focusColor: const Color(0xFF404abf),
        hoverColor: const Color(0xFF404abf),
        splashColor: const Color(0xFF404abf),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: () => {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _getBtmNavbar(),
    );
  }
}
