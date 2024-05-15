import 'package:flutter/material.dart';

import '../utils/book_slider.dart';

// Import the Book model
import '../models/books.dart';
import '../utils/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(
          onTabChange: (index) {},
        ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: TabBarView(
                  children: [
                    // Content for Tab 1
                    BookImageSlider(
                      imagePaths: Book.getBooks()
                          .where((book) => book.tag == "New")
                          .map((book) => book.imagePath)
                          .toList(), // Extract image paths from Book objects with tag "New"
                    ),
                    // Content for Tab 2
                    BookImageSlider(
                      imagePaths: Book.getBooks()
                          .where((book) => book.tag == "Trending")
                          .map((book) => book.imagePath)
                          .toList(), // Extract image paths from Book objects with tag "Trending"
                    ),
                    // Content for Tab 3
                    BookImageSlider(
                      imagePaths: Book.getBooks()
                          .where((book) => book.tag == "Best Seller")
                          .map((book) => book.imagePath)
                          .toList(), // Extract image paths from Book objects with tag "Best Seller"
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Popular tag

              const Padding(
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

              //BOOK TILES
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: Book.getBooks().take(4).map((book) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Book Image with border radius
                        Container(
                          height: 120,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              book.imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Book Title
                              Text(
                                book.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),
                              // Book Author
                              Text(
                                'by ${book.author}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 5),
                              // Book Price
                              Text(
                                '\$${book.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
