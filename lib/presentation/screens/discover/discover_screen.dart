import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscorverScreen extends StatelessWidget {
  const DiscorverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.inicialLoading
      ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
      : VideoScrollableView(videos: discoverProvider.videos)
    );
  }
}
