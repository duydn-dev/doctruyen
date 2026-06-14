import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'stories.g.dart';

@riverpod
class StoriesController extends _$StoriesController {
  @override
  void build() {}
}

@RoutePage()
class StoriesScreen extends ConsumerWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Stories')),
      body: Center(child: Text('Stories')),
    );
  }
}
