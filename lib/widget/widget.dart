import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class IconPackFlutterWidget extends StatelessWidget {
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final String assetPath;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final double? size;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final EdgeInsetsGeometry margin;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final BlendMode blendMode;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  final Color? color;
/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  const IconPackFlutterWidget({
    super.key,
    required this.assetPath,
    this.size,
    this.color,
    this.margin = EdgeInsetsGeometry.zero,
    this.blendMode = BlendMode.srcIn,
  });

  @override
  Widget build(BuildContext context) {
    final child = SvgPicture.asset(
      assetPath,
      // package: "icon_pack_flutter",
      colorFilter: ColorFilter.mode(
        color ?? Theme.of(context).iconTheme.color ?? Colors.black,
        blendMode,
      ),
      height: size,
      width: size,
    );
    if (margin != EdgeInsetsGeometry.zero) {
      return Padding(
        padding: margin,
        child: child,
      );
    }
    return child;
  }
}
