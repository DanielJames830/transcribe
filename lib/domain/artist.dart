import 'album.dart';

class Artist {
  const Artist({
    required this.name,
    required this.albums,
  });

  final String name;
  final List<Album> albums;
}
