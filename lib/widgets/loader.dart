import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AsyncLoader extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;

  const AsyncLoader({Key? key, this.height, this.width, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.withOpacity(0.11),
      highlightColor: Colors.grey.withOpacity(0.06),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(radius!),
          )),
    );
  }
}
