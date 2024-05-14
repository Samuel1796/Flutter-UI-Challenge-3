import 'package:flutter/material.dart';

import '../utils/book_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 160,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi Rizki, ",
                style: TextStyle(color: Colors.grey),
              ),
              const Text(
                "Discover Latest Book",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search book...",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 15),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                ],
              ),
            ],
          ),
          bottom: const TabBar(
            isScrollable: true,
            labelStyle: TextStyle(
              fontSize: 18, // Increase font size for selected tab
              fontWeight: FontWeight.bold, // Add bold style for selected tab
            ),
            unselectedLabelStyle:
                TextStyle(fontSize: 14), // Font size for unselected tabs
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 4, // Thicker indicator
                  color:
                      Colors.black, // Shorter and thicker underline indicator
                ),
              ),
            ),
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New',
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Trending',
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Best Seller',
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: TabBarView(
                  children: [
                    // Content for Tab 1
                    BookImageSlider(
                      imagePaths: [
                        "lib/assets/book1.jpg",
                        "lib/assets/book2.jpeg",
                        "lib/assets/book3.jpeg",
                      ],
                    ),
                    // Content for Tab 2
                    BookImageSlider(
                      imagePaths: [
                        "lib/assets/book4.jpeg",
                        "lib/assets/book5.jpeg",
                        "lib/assets/book1.jpg",
                      ],
                    ),
                    // Content for Tab 3
                    BookImageSlider(
                      imagePaths: [
                        "lib/assets/book6.jpeg",
                        "lib/assets/book2.jpeg",
                        "lib/assets/book4.jpeg",
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //Popular tag

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Popular ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
