class Book {
  final String imagePath;
  final String title;
  final String author;
  final double price;
  final String description;
  final String tag; // New attribute for tags

  Book({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.price,
    required this.description,
    required this.tag,
  });

  // Static method to initialize list of books
  static List<Book> getBooks() {
    return [
      Book(
        imagePath: "lib/assets/book1.jpg",
        title: "Harry Potter and the Sorcerer's Stone",
        author: "J.K. Rowling",
        price: 19.99,
        description:
            "Harry Potter's life changes forever when he receives a letter inviting him to attend Hogwarts School of Witchcraft and Wizardry. Join him on his journey as he discovers the truth about his past, battles dark forces, and forms lifelong friendships.",
        tag: "Best Selling",
      ),
      Book(
        imagePath: "lib/assets/book2.jpeg",
        title: "The Girl With All the Gifts",
        author: "M.R. Carey",
        price: 24.99,
        description:
            "In a dystopian world overrun by zombies, a group of children, including Melanie, who is unlike any other child, embark on a journey to find hope and salvation. As they navigate through dangers, they uncover shocking truths about themselves and the world around them.",
        tag: "Trending",
      ),
      Book(
        imagePath: "lib/assets/book3.jpeg",
        title: "The Tomb of the Unknown Racist",
        author: "Blanche McCrary Boyd",
        price: 29.99,
        description:
            "Set in the American South, this novel follows the story of a woman named Ellen Burns, who grapples with her family's history of racism while navigating her own personal struggles. As she confronts her past and present, she embarks on a journey of self-discovery and redemption.",
        tag: "Best Seller",
      ),
      Book(
        imagePath: "lib/assets/book4.jpeg",
        title: "The Smoke is Rising",
        author: "Mahesh Rao",
        price: 29.99,
        description:
            "In the bustling city of Bangalore, amidst the chaos of urban life, a diverse cast of characters grapple with their hopes, dreams, and disappointments. Through interconnected stories, this novel explores themes of love, identity, and the pursuit of happiness.",
        tag: "Best Seller",
      ),
      Book(
        imagePath: "lib/assets/book5.jpeg",
        title: "Cold Hands Warm Heart",
        author: "Jeffrey Archer",
        price: 29.99,
        description:
            "In this collection of short stories, Jeffrey Archer takes readers on a journey across continents and through different walks of life. From gripping thrillers to heartwarming tales, each story is a testament to the power of human resilience and compassion.",
        tag: "Trending",
      ),
      Book(
        imagePath: "lib/assets/book6.jpeg",
        title: "The Silent Patient",
        author: "Alex Michaelides",
        price: 29.99,
        description:
            "Alicia Berenson, a famous painter, is accused of murdering her husband and then retreats into silence. Theo Faber, a criminal psychotherapist, is determined to uncover the truth behind her mysterious silence. As he delves deeper into Alicia's past, he unravels shocking secrets that will leave readers stunned.",
        tag: "New",
      ),
      Book(
        imagePath: "lib/assets/book7.jpeg",
        title: "The Ninth Life",
        author: "Emily Giffin",
        price: 29.99,
        description:
            "In this gripping psychological thriller, Janie is haunted by disturbing memories from her past that threaten to unravel her present. As she grapples with the truth, she discovers that some secrets refuse to stay buried and that the past is never truly forgotten.",
        tag: "Trending",
      ),
      Book(
        imagePath: "lib/assets/book8.jpeg",
        title: "The Night Circus",
        author: "Erin Morgenstern",
        price: 29.99,
        description:
            "Enter the enchanting world of the Night Circus, a mysterious circus that appears only at night and is filled with wonders beyond imagination. As two young illusionists, Celia and Marco, engage in a magical competition, their destinies become intertwined in ways they never imagined.",
        tag: "New",
      ),
      Book(
        imagePath: "lib/assets/book9.jpeg",
        title: "The Song of Achilles",
        author: "Madeline Miller",
        price: 29.99,
        description:
            "In this captivating retelling of Greek mythology, Madeline Miller brings to life the story of Achilles, the greatest warrior of his generation, and his companion Patroclus. Through their epic journey, filled with love, honor, and tragedy, Miller explores themes of heroism, friendship, and destiny.",
        tag: "New",
      ),
      // Add more books with different tags
    ];
  }
}
