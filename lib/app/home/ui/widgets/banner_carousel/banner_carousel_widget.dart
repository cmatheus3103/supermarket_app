import 'package:flutter/material.dart';
import 'package:supermarket_app/app/home/domain/entities/banner_entity.dart';

import 'banner_widget.dart';
import 'index_indicator_widget.dart';

class BannersCarouselWidget extends StatefulWidget {
  final List<BannerEntity> banners;
  final bool isSquare;
  const BannersCarouselWidget({
    super.key,
    required this.banners,
    required this.isSquare,
  });

  @override
  State<BannersCarouselWidget> createState() => _BannersCarouselWidgetState();
}

class _BannersCarouselWidgetState extends State<BannersCarouselWidget> {
  final _controller = PageController(viewportFraction: 1);
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: size.width,
            maxHeight: widget.isSquare ? size.height * .40 : size.height * .20,
          ),
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                activeIndex = value;
              });
            },
            itemCount: widget.banners.length,
            padEnds: true,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BannerWidget(
                banner: widget.banners[index],
                isLastBanner: widget.banners.length - 1 == index,
                isNetworkImage: widget.isSquare,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.banners.map((b) {
            final itemIndex = widget.banners.indexOf(b);
            final isCurrent = itemIndex == activeIndex;
            return IndexIndicator(
              isCurrent: isCurrent,
              isLast: itemIndex == widget.banners.length - 1,
            );
          }).toList(),
        ),
      ],
    );
  }
}
