import 'package:flutter/material.dart';
import 'package:wave_drawer/Wave/drawer_wave_clipper.dart';
import 'package:wave_drawer/Wave/wave_path_painter.dart';

class WaveDrawer extends StatelessWidget {
  /// Creates a wave design drawer.
  ///
  /// Typically used in the [Scaffold.drawer] property.
  ///
  /// The [elevation] and [backgroundColorOpacity] must be non-negative.
  const WaveDrawer({
    Key key,
    this.width,
    this.backgroundColorOpacity = 0.5,
    this.elevation = 16.0,
    this.child,
    @required this.backgroundColor,
    @required this.boundaryColor,
    @required this.boundaryWidth,
    this.semanticLabel,
  })  : assert(elevation != null &&
            elevation >= 0.0 &&
            backgroundColorOpacity != null &&
            backgroundColorOpacity >= 0.0),
        super(key: key);

  /// Width of the drawer. Defaults to 90% of screen width.
  final double width;

  /// Color of the drawer.
  final Color backgroundColor;

  /// Opacity of the background Color.
  ///
  /// Defaults to 0.5. The value is always non-negative.
  final double backgroundColorOpacity;

  /// Color of the paint around the curves of the drawer.
  final Color boundaryColor;

  /// Width of the paint around the curves of the drawer.
  final double boundaryWidth;

  /// The z-coordinate at which to place this drawer relative to its parent.
  ///
  /// This controls the size of the shadow below the drawer.
  ///
  /// Defaults to 16, the appropriate elevation for drawers. The value is
  /// always non-negative.
  final double elevation;

  /// The widget below this widget in the tree.
  ///
  /// Typically a [SliverList].
  ///
  /// {@macro flutter.widgets.child}
  final Widget child;

  /// The semantic label of the dialog used by accessibility frameworks to
  /// announce screen transitions when the drawer is opened and closed.
  ///
  /// If this label is not provided, it will default to
  /// [MaterialLocalizations.drawerLabel].
  ///
  /// See also:
  ///
  ///  * [SemanticsConfiguration.namesRoute], for a description of how this
  ///    value is used.
  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    String label = semanticLabel;
    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
        label = semanticLabel;
        break;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        label = semanticLabel ?? MaterialLocalizations.of(context)?.drawerLabel;
    }

    return CustomPaint(
      painter: WavePathPainter(boundaryColor, boundaryWidth),
      child: ClipPath(
        child: Semantics(
          scopesRoute: true,
          namesRoute: true,
          explicitChildNodes: true,
          label: label,
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(
                width: width ?? MediaQuery.of(context).size.width * 0.9),
            child: Material(
              color: backgroundColor.withOpacity(backgroundColorOpacity),
              elevation: elevation,
              child: child,
            ),
          ),
        ),
        clipper: DrawerWaveClipper(boundaryWidth),
      ),
    );
  }
}
