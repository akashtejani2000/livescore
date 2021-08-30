import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_score/res/images.dart';

Widget _separatorBuilder(BuildContext context, int index) => SizedBox.shrink();

class LoadMoreList extends StatefulWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder separatorBuilder;
  final ScrollPhysics? physics;
  final ScrollBehavior? scrollBehavior;
  final ScrollController? controller;
  final Clip clipBehavior;
  final EdgeInsets? padding;
  final bool shrinkWrap;
  final Future<void> Function()? onRefresh;
  final Future<void> Function() onLoadMore;
  final bool reachAtEnd;
  final WidgetBuilder? loadMoreBuilder;
  final WidgetBuilder? reachAtEndBuilder;

  LoadMoreList({
    required this.itemCount,
    required this.itemBuilder,
    required this.onLoadMore,
    this.separatorBuilder = _separatorBuilder,
    this.physics,
    this.scrollBehavior,
    this.controller,
    this.clipBehavior = Clip.hardEdge,
    this.padding,
    this.shrinkWrap = false,
    this.onRefresh,
    this.reachAtEnd = false,
    this.loadMoreBuilder,
    this.reachAtEndBuilder,
  });

  @override
  _LoadMoreListState createState() => _LoadMoreListState();
}

class _LoadMoreListState extends State<LoadMoreList> {
  ValueNotifier<bool> isLoading = ValueNotifier(false);
  ValueNotifier<bool> isRefreshing = ValueNotifier(false);

  Future<void> onRefresh() async {
    isRefreshing.value = true;
    await widget.onRefresh
        ?.call()
        .whenComplete(() => isRefreshing.value = false);
  }

  bool onScrollEnd(ScrollNotification notification) {
    if (notification.metrics.pixels >= notification.metrics.maxScrollExtent &&
        !isLoading.value &&
        !isRefreshing.value &&
        widget.itemCount > 0 &&
        !widget.reachAtEnd) {
      isLoading.value = true;
      widget.onLoadMore.call().whenComplete(() => isLoading.value = false);
    }
    return isLoading.value;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return RefreshIndicator(
          onRefresh: onRefresh,
          notificationPredicate: (notification) {
            onScrollEnd(notification);
            return !isLoading.value;
          },
          child: ListView(
            controller: widget.controller,
            physics: widget.physics,
            clipBehavior: Clip.none,
            padding: (widget.padding ?? MediaQuery.of(context).padding),
            children: [
              widget.itemCount == 0
                  ? Container(
                      height: constraints.maxHeight,
                      alignment: Alignment.center,
                      child: SvgPicture.asset(AppImage.noDataView,
                          width: 120, height: 120),
                    )
                  : ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      clipBehavior: Clip.none,
                      padding: EdgeInsets.zero,
                      itemBuilder: widget.itemBuilder,
                      separatorBuilder: widget.separatorBuilder,
                      itemCount: widget.itemCount,
                    ),
              ValueListenableBuilder<bool>(
                valueListenable: isLoading,
                builder: (context, value, _) {
                  return value
                      ? Container(
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(),
                          padding: EdgeInsets.all(16),
                        )
                      : SizedBox.shrink();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
