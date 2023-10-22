import 'package:cached_network_image/cached_network_image.dart';
import 'package:character_viewer/constants/theme_constants.dart';
import 'package:character_viewer/domain_models/character_domain_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final CharacterDomainModel? character;

  const DetailsScreen({super.key, this.character});

  @override
  Widget build(BuildContext context) {
    if (character == null) {
      return const Scaffold();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(character?.name ?? ''),
      ),
      body: ListView(
        padding: const EdgeInsets.all(ThemeConstants.padding),
        children: [
          character?.imageUrl != null
              ? CachedNetworkImage(
                  imageUrl: character!.imageUrl!,
                  height: 200,
                  width: 200,
                  fit: BoxFit.contain,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Center(
                    child: Icon(Icons.error),
                  ),
                )
              : const Icon(
                  Icons.error,
                  size: 200,
                ),
          const SizedBox(height: ThemeConstants.padding),
          Text(character?.details ?? ''),
        ],
      ),
    );
  }
}
