class HomeModel {
  final int id;
  final String name, Guj, Eng, shloka, gshloka, Eshloka, image;

  HomeModel(
      {required this.id,
      required this.name,
      required this.Guj,
      required this.Eng,
      required this.shloka,
      required this.gshloka,
      required this.Eshloka,
      required this.image});

  factory HomeModel.mapToModel(Map m1) {
    return HomeModel(
        id: m1['id'],
        name: m1['name'],
        Guj: m1['Guj'],
        Eng: m1['Eng'],
        shloka: m1['shloka'],
        gshloka: m1['gshloka'],
        Eshloka: m1['Eshloka'],
        image: m1['image']);
  }
}
