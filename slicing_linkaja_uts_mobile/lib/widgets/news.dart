import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  _News createState() => _News();
}

class _News extends State<News> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // List of image URLs for the slider
  final List<String> _promoImages = [
    "assets/img/N1.png",
    "assets/img/N2.png",
    "assets/img/N3.png",
    "assets/img/N4.png",
    "assets/img/N5.png",
  ];

  // List of titles for each image
  final List<String> _promoTitles = [
    'Isi Saldo LinkAja via Himbara',
    'Palestina Masih Butuh Bantuan Kita.',
    'Fitur PAYLATER! yang baru dari LinkAja',
    'Tarik Tunai dengan LinkAja di ATM',
    'Cuma Rp1.000, Transfer ke Rekening Bank',
  ];

  // List of descriptions for each image
  final List<String> _promoDescriptions = [
    'BNI, Bank Mandiri, BNI, BTN, Admin Rp1.000',
    'Mari sebarkan cahaya harapan untuk saudara kita di palestina',
    'Aktifkan & Transaksi fitur PayLater di LinkAja',
    'Mudah dan Praktis tanpa Kartu loh!',
    'Pakai LinkAja lebih murah',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
              left: 14.0, right: 14.0, top: 50.0), // Added top margin of 20
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Info Terbaru',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        // Slider section with a fixed height
        SizedBox(
          height: 250, // Adjust height to accommodate text below the image
          child: PageView.builder(
            controller: _pageController,
            itemCount: _promoImages.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align content to the start
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(_promoImages[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 150, // Set fixed height for images
                  ),
                  const SizedBox(
                      height: 4), // Reduce space between image and title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      _promoTitles[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 2), // Reduce space between title and description
                  Expanded(
                    // Use Expanded to prevent overflow
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SingleChildScrollView(
                        child: Text(
                          _promoDescriptions[index],
                          style: const TextStyle(
                            fontSize: 14,
                            color:
                                Colors.grey, // Use grey color for description
                          ),
                          maxLines: 2, // Limit to 2 lines, adjust as necessary
                          overflow: TextOverflow
                              .ellipsis, // Add ellipsis if text is too long
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
