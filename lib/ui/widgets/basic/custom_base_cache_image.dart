import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freelance_app/app/app.locator.dart';
import 'package:freelance_app/shared/size_config.dart';

import 'loading_widget.dart';

class CustomBaseCacheImage extends StatelessWidget {
  final String? imageUrl;
  final Widget Function(BuildContext context, ImageProvider imageProvider)? imageBuilder;

  CustomBaseCacheImage({Key? key, this.imageUrl, this.imageBuilder}) : super(key: key);

  final _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "$imageUrl",
      errorWidget: (context, url, error) => Center(
        child: Icon(Icons.error, size: 35 * _sizeConfig.getScaleDiagonal(), color: Theme.of(context).colorScheme.error),
      ),
      imageBuilder: imageBuilder,
      useOldImageOnUrlChange: true,
      filterQuality: FilterQuality.high,
      placeholder: (context, url) => UnconstrainedBox(
        child: Center(child: LoadingWidget()),
      ),
    );
  }
}
