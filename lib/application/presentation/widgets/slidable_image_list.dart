import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ScreenSlidablePhotoGallery extends StatelessWidget {
  final List<String> images;
  final int initialIndex;

  const ScreenSlidablePhotoGallery(
      {super.key, required this.images, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(
        itemCount: images.length,
        controller: PageController(initialPage: initialIndex),
        itemBuilder: (context, index) {
          return PhotoView(
            imageProvider: MemoryImage(
              base64.decode(images[index].startsWith('data')
                  ? images[index].substring(22)
                  : images[index]),
            ),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
            initialScale: PhotoViewComputedScale.contained,
            backgroundDecoration: const BoxDecoration(color: Colors.black),
          );
        },
      ),
    );
  }
}
