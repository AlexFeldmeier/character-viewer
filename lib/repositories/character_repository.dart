import 'package:character_viewer/constants/networking_constants.dart';
import 'package:character_viewer/data_sources/character_data_source.dart';
import 'package:character_viewer/domain_models/character_domain_model.dart';
import 'package:character_viewer/remote_models/page_model.dart';
import 'package:flutter/foundation.dart';

class CharacterRepository {
  final CharacterDataSource _characterDataSource;

  CharacterRepository(this._characterDataSource);

  Future<List<CharacterDomainModel>?> getCharacters(String query) async {
    try {
      final rawData = await _characterDataSource.getCharacters(query);
      final pageModel = PageModel.fromJson(rawData);

      return _mapRemoteModelToDomainModel(pageModel);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  List<CharacterDomainModel> _mapRemoteModelToDomainModel(PageModel pageModel) {
    return pageModel.relatedTopics?.map((remoteModel) {
          final imageUrl =
              remoteModel.icon?.url != null ? NetworkingConstants.baseImageUrl + (remoteModel.icon?.url ?? '') : null;
          final name = _parseNameFromHtml(remoteModel.result ?? '');
          final description = remoteModel.text;

          return CharacterDomainModel(
            imageUrl: imageUrl,
            name: name,
            details: description,
          );
        }).toList() ??
        [];
  }

  String _parseNameFromHtml(String htmlString) {
    final regex = RegExp(r'<a href="[^>]+">(.*?)<\/a>');
    final match = regex.firstMatch(htmlString);
    return match?.group(1) ?? 'Unknown';
  }
}
