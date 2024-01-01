class HomeModel {
  final int id;
  final String name, Guj, Eng, shloka;

  HomeModel({required this.id,required this.name,required this.Guj,required this.Eng,required this.shloka});

  factory HomeModel.mapToModel(Map m1){
    return HomeModel(
        id:m1['id'],
        name:m1['name'],
        Guj:m1['Guj'],
        Eng:m1['Eng'],
        shloka:m1['shloka'],
    );
  }
}