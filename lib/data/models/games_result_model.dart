import 'game_model.dart';

class GamesResultModel {
  GamesResultModel({
    this.count,
    this.next,
    this.previous,
    required this.results,
    this.seoTitle,
    this.seoDescription,
    this.seoKeywords,
    this.seoH1,
    this.noindex,
    this.nofollow,
    this.description,
    this.filters,
    this.nofollowCollections,
  });

  int? count;
  String? next;
  String? previous;
  List<GameModel> results;
  String? seoTitle;
  String? seoDescription;
  String? seoKeywords;
  String? seoH1;
  bool? noindex;
  bool? nofollow;
  String? description;
  Filters? filters;
  List<String>? nofollowCollections;

  factory GamesResultModel.fromJson(Map<String, dynamic> json) =>
      GamesResultModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<GameModel>.from(
            json["results"].map((x) => GameModel.fromJson(x))),
        seoTitle: json["seo_title"],
        seoDescription: json["seo_description"],
        seoKeywords: json["seo_keywords"],
        seoH1: json["seo_h1"],
        noindex: json["noindex"],
        nofollow: json["nofollow"],
        description: json["description"],
        filters: Filters.fromJson(json["filters"]),
        nofollowCollections:
            List<String>.from(json["nofollow_collections"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "seo_title": seoTitle,
        "seo_description": seoDescription,
        "seo_keywords": seoKeywords,
        "seo_h1": seoH1,
        "noindex": noindex,
        "nofollow": nofollow,
        "description": description,
        "filters": filters!.toJson(),
        "nofollow_collections":
            List<dynamic>.from(nofollowCollections!.map((x) => x)),
      };
}

class Filters {
  Filters({
    this.years,
  });

  List<FiltersYear>? years;

  factory Filters.fromJson(Map<String, dynamic> json) => Filters(
        years: List<FiltersYear>.from(
            json["years"].map((x) => FiltersYear.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "years": List<dynamic>.from(years!.map((x) => x.toJson())),
      };
}

class FiltersYear {
  FiltersYear({
    this.from,
    this.to,
    this.filter,
    this.decade,
    this.years,
    this.nofollow,
    this.count,
  });

  int? from;
  int? to;
  String? filter;
  int? decade;
  List<YearYear>? years;
  bool? nofollow;
  int? count;

  factory FiltersYear.fromJson(Map<String, dynamic> json) => FiltersYear(
        from: json["from"],
        to: json["to"],
        filter: json["filter"],
        decade: json["decade"],
        years:
            List<YearYear>.from(json["years"].map((x) => YearYear.fromJson(x))),
        nofollow: json["nofollow"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "from": from,
        "to": to,
        "filter": filter,
        "decade": decade,
        "years": List<dynamic>.from(years!.map((x) => x.toJson())),
        "nofollow": nofollow,
        "count": count,
      };
}
