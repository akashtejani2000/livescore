part of '../widgets.dart';

class SquareImageFromAsset extends StatelessWidget {
  final String image;
  final double size;
  final BoxFit fit;
  final Color? color;
  final bool matchTextDirection;

  const SquareImageFromAsset(this.image,
      {this.size = 24,
      this.fit = BoxFit.none,
      this.color,
      this.matchTextDirection = true});

  @override
  Widget build(BuildContext context) {
    return Image.asset(image,
        fit: fit,
        color: color,
        width: size,
        height: size,
        matchTextDirection: matchTextDirection);
  }
}

class CircleImageFromAsset extends StatelessWidget {
  final String image;
  final double size;
  final BoxFit fit;
  final Color? color;
  final bool matchTextDirection;

  const CircleImageFromAsset(this.image,
      {this.size = 24,
      this.fit = BoxFit.none,
      this.color,
      this.matchTextDirection = true});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.asset(image,
            fit: fit,
            color: color,
            width: size,
            height: size,
            matchTextDirection: matchTextDirection));
  }
}

class CircleSvgImageFromAsset extends StatelessWidget {
  final String image;
  final double size;
  final BoxFit fit;
  final Color? color;
  final bool matchTextDirection;

  const CircleSvgImageFromAsset(this.image,
      {this.size = 24,
      this.fit = BoxFit.none,
      this.color,
      this.matchTextDirection = true});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: SvgPicture.asset(image,
            fit: fit,
            color: color,
            width: size,
            height: size,
            matchTextDirection: matchTextDirection));
  }
}

class SquareSvgImageFromAsset extends StatelessWidget {
  final String image;
  final double size;
  final BoxFit fit;
  final Color? color;
  final bool matchTextDirection;

  const SquareSvgImageFromAsset(this.image,
      {this.size = 24,
      this.fit = BoxFit.contain,
      this.color,
      this.matchTextDirection = true});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image,
        fit: fit,
        color: color,
        width: size,
        height: size,
        matchTextDirection: matchTextDirection);
  }
}
