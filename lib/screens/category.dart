import 'package:flutter/material.dart';

import '../widgets/buttom_navbar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Discover",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: [
                    for (int i = 1; i < 8; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/$i.png",
                              height: 70,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: const Text(
                            "Category",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
