import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SimpleImage extends StatelessWidget {
  const SimpleImage(
      {Key? key, required this.imageUrl, this.shape, this.borderRadius})
      : super(key: key);

  final String? imageUrl;
  final BoxShape? shape;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      '$imageUrl',
      fit: BoxFit.cover,
      cache: true,
      shape: shape,
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            // _controller.reset();
            return Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                height: 50,
                width: 50,
              ),
            );

          case LoadState.completed:
            // _controller.forward();
            return null;
          case LoadState.failed:
            // _controller.reset();
            return GestureDetector(
              child: Icon(Icons.refresh),
              onTap: () {
                state.reLoadImage();
              },
            );
        }
      },
      borderRadius: borderRadius,
    );
  }
}
