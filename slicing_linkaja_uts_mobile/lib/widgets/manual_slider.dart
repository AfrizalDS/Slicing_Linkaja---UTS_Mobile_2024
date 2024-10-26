import 'package:flutter/material.dart';

class ManualSlider extends StatefulWidget {
  const ManualSlider({super.key});

  @override
  _ManualSlider createState() => _ManualSlider();
}

class _ManualSlider extends State<ManualSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // List of image URLs for the slider
  final List<String> _promoImages = [
    "assets/img/p1.png",
    "assets/img/p2.png",
    "assets/img/p3.png",
    "assets/img/p4.png",
    "assets/img/p5.png",
  ];

  // List of titles for each image
  final List<String> _promoTitles = [
    'Waktunya Gajian',
    'Beli Token Listrik & dapatkan Cashback 10%',
    'Untung! Beli Paket Data Telkomsel dapat cashback',
    'Bayar Tagihan Halo dapat cashback 2.000',
    'Beli Voucher Games Harga Terjangkau Disini!',
  ];

  // List of descriptions for each image
  final List<String> _promoDescriptions = [
    'Promo Payday LinkAja',
    'Cashback 1.500',
    'Cashback 2.000',
    'Cashback 2.000',
    'Bayarnya pakai LinkAja',
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
                'Promo Menarik',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Semua',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red, // Set the text color to red
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
                  const SizedBox(height: 2),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SingleChildScrollView(
                        child: Text(
                          _promoDescriptions[index],
                          style: const TextStyle(
                            fontSize: 14,
                            color:
                                Colors.grey, 
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
