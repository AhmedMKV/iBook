import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
     GoRouter.of(context).push('/bookDetailsView');
      },
      child:
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio:.7,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl!,
          ),
        ),
      ),
    );
  }
}
