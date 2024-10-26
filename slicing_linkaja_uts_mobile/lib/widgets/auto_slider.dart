import 'dart:async';
import 'package:flutter/material.dart';

class AutoSlider extends StatefulWidget {
  const AutoSlider({super.key});

  @override
  _AutoSliderState createState() => _AutoSliderState();
}

class _AutoSliderState extends State<AutoSlider> {
  final PageController _pageController = PageController();
  late Timer _timer;

  // Daftar URL atau asset gambar
  final List<String> _images = [
    'assets/img/2.png',
    'assets/img/3.png',
    'assets/img/4.png',
    'assets/img/5.png',
    'assets/img/6.png',
  ];

  late List<String> _loopedImages;
  int _currentPage = 1; // Mulai dengan gambar pertama yang asli

  @override
  void initState() {
    super.initState();
    _initializeLoopedImages();
    _startAutoSlide();
  }

  void _initializeLoopedImages() {
    _loopedImages = [
      _images.last, // Tambahkan gambar terakhir di awal
      ..._images,
      _images.first, // Tambahkan gambar pertama di akhir
    ];
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _loopedImages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 1;
        _pageController
            .jumpToPage(_currentPage); // Langsung loncat ke gambar pertama
        return;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
                if (_currentPage == 0) {
                  _pageController.jumpToPage(_loopedImages.length - 2);
                } else if (_currentPage == _loopedImages.length - 1) {
                  _pageController.jumpToPage(1);
                }
              });
            },
            itemCount: _loopedImages.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  _loopedImages[index],
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(_images.length, (index) {
            // Ensure indicator only follows the actual _images list
            int indicatorIndex = (_currentPage - 1) % _images.length;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: indicatorIndex == index ? 30.0 : 9.0,
              height: 9.0,
              decoration: BoxDecoration(
                color: indicatorIndex == index ? Colors.red : Colors.grey,
                borderRadius: BorderRadius.circular(4.0),
              ),
            );
          }),
        ),
      ],
    );
  }
}
