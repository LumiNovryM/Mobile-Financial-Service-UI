import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                              "Hello Lumi,",
                              style: GoogleFonts.poppins(
                                  color: const Color(0xFFa5a6ab),
                                  fontSize: 11.0),
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
                      width: 50,
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
                // Card
                const SizedBox(height: 25.0),
                // Wallet Information
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
                          // History
                          Column(
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
                        ],
                      )
                    ],
                  ),
                ),
                // Other Services
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: const Color(0xFFf5f5f5),
                  ),
                  height: 175.0,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Other Services",
                        style:
                            GoogleFonts.poppins(color: const Color(0xFF77767b)),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
