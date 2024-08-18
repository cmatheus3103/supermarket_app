import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FadeImageWidget extends StatelessWidget {
  final String networkImageUrl;

  final double? borderRadius;
  final bool isNetworkImage;
  const FadeImageWidget({
    super.key,
    required this.networkImageUrl,
    this.borderRadius,
    required this.isNetworkImage,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: Hero(
        tag: networkImageUrl,
        child: isNetworkImage
            ? Image(
                image: CachedNetworkImageProvider(
                  networkImageUrl,
                  maxHeight: 200,
                  maxWidth: 200,
                ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.grey[300],
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              )
            : Image.asset(networkImageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
