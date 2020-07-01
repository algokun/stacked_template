import 'package:flutter/widgets.dart';

class MultiScreenView extends StatefulWidget {
  final int index;

  final int screens;

  final IndexedWidgetBuilder screenBuilder;

  final bool reuse;

  MultiScreenView({
    Key key,
    this.index,
    this.reuse = true,
    @required this.screenBuilder,
    this.screens = 0,
  }) : super(key: key);

  @override
  _MultiScreenViewState createState() => _MultiScreenViewState();
}

class _MultiScreenViewState extends State<MultiScreenView> {
  List<Widget> _children;
  List<bool> _loaded;

  @override
  void initState() {
    _loaded = [];
    _children = [];
    for (int i = 0; i < widget.screens; ++i) {
      if (i == widget.index) {
        _children.add(widget.screenBuilder(context, i));
        _loaded.add(true);
      } else {
        _children.add(Container());
        _loaded.add(false);
      }
    }
    super.initState();
  }

  @override
  void didUpdateWidget(MultiScreenView oldWidget) {
    for (int i = 0; i < widget.screens; ++i) {
      if (i == widget.index) {
        if (!_loaded[i]) {
          _children[i] = widget.screenBuilder(context, i);
          _loaded[i] = true;
        } else {
          if (widget.reuse) {
            return;
          }
          _children[i] = widget.screenBuilder(context, i);
        }
      }
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.index,
      sizing: StackFit.expand,
      children: _children,
    );
  }
}
