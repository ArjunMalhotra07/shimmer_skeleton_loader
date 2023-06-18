library shimmer_skeleton_loader;

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonLoaderWidget extends StatelessWidget {
  final int numberOfLoadingWidgets;
  const SkeletonLoaderWidget({super.key, required this.numberOfLoadingWidgets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: numberOfLoadingWidgets,
        itemBuilder: ((context, index) => const ShimmerLoadingListTile()));
  }
}

class ShimmerLoadingListTile extends StatelessWidget {
  const ShimmerLoadingListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const IndividualShimmerContainer.circular(height: 60, width: 60),
      title: Align(
        alignment: Alignment.centerLeft,
        child: IndividualShimmerContainer.fromRectangle(
          height: 15,
          width: MediaQuery.of(context).size.width * .3,
        ),
      ),
      subtitle: Align(
        alignment: Alignment.centerLeft,
        child: IndividualShimmerContainer.fromRectangle(
          height: 15,
          width: MediaQuery.of(context).size.width * .9,
        ),
      ),
    );
  }
}

class IndividualShimmerContainer extends StatelessWidget {
  final double height;
  final double width;
  final ShapeBorder? shape;
  const IndividualShimmerContainer.fromRectangle(
      {super.key, required this.height, this.width = double.infinity})
      : shape = const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)));
  const IndividualShimmerContainer.circular(
      {super.key,
      required this.height,
      required this.width,
      this.shape = const CircleBorder()});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 1),
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[600]!,
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
            shape: shape ?? const CircleBorder(), color: Colors.grey),
      ),
    );
  }
}
