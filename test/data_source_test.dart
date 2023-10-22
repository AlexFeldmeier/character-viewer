import 'package:character_viewer/remote_models/page_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:character_viewer/data_sources/character_data_source.dart';

void main() {
  late CharacterDataSource dataSource;

  setUp(() {
    dataSource = CharacterDataSource();
  });

  test('PageModel can be created from data fetched by CharacterDataSource', () async {
    try {
      final data = await dataSource.getCharacters('simpsons+characters');
      final model = PageModel.fromJson(data);

      expect(model.relatedTopics, isNotEmpty);
      expect(model.relatedTopics?.first.text, isNotEmpty);
      expect(model.relatedTopics?.first.result, isNotEmpty);
    } catch (e) {
      fail('Failed to create PageModel from fetched data. Error: $e');
    }
  });
}
