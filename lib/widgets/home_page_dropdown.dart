import 'package:flutter/material.dart';
import 'package:trivial_rush/screens/login_page_screen.dart';

Widget dropdownListView(context) {
  return ListView(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 220),
        child: ListTile(
          title: const Icon(
            Icons.close,
            color: Color.fromRGBO(204, 0, 1, 1),
            size: 30,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      ListTile(
        title: Image.asset('assets/images/hp_scores.png'),
        onTap: () {},
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListTile(
          title: Image.asset('assets/images/hp_prize_payout.png'),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListTile(
          title: Image.asset('assets/images/hp_rules.png'),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListTile(
          title: Image.asset('assets/images/hp_support.png'),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListTile(
          title: Image.asset('assets/images/hp_abouts.png'),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListTile(
          title: Row(
            children: [
              Image.asset('assets/images/hp_buy.png'),
              const SizedBox(
                width: 30,
              ),
              Image.asset(
                'assets/images/hp_our_book.png',
                width: 150,
              ),
            ],
          ),
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListTile(
          title: Image.asset('assets/images/hp_sign_out.png'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
        ),
      ),
    ],
  );
}
