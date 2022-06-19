class GamesList {
  GamesList({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
    required this.userPlatforms,
  });
  late final int count;
  late final String? next;
  late final String? previous;
  late final List<Results> results;
  late final bool userPlatforms;
  
  GamesList.fromJson(Map<String, dynamic> json){
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = List.from(json['results']).map((e)=>Results.fromJson(e)).toList();
    userPlatforms = json['user_platforms'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['next'] = next;
    _data['previous'] = previous;
    _data['results'] = results.map((e)=>e.toJson()).toList();
    _data['user_platforms'] = userPlatforms;
    return _data;
  }
}

class Results {
  Results({
    required this.slug,
    required this.name,
    required this.playtime,
    required this.platforms,
    required this.stores,
    required this.released,
    required this.tba,
    required this.backgroundImage,
    required this.rating,
    required this.ratingTop,
    required this.ratings,
    required this.ratingsCount,
    required this.reviewsTextCount,
    required this.added,
    required this.addedByStatus,
    required this.metacritic,
    required this.suggestionsCount,
    required this.updated,
    required this.id,
    required this.tags,
    required this.esrbRating,
     this.userGame,
    required this.reviewsCount,
    required this.communityRating,
    required this.saturatedColor,
    required this.dominantColor,
    required this.shortScreenshots,
    required this.parentPlatforms,
    required this.genres,
  });
  late final String slug;
  late final String name;
  late final int playtime;
  late final List<Platforms> platforms;
  late final List<Stores>? stores;
  late final String released;
  late final bool tba;
  late final String? backgroundImage;
  late final double rating;
  late final int ratingTop;
  late final List<Ratings> ratings;
  late final int ratingsCount;
  late final int reviewsTextCount;
  late final int added;
  late final AddedByStatus? addedByStatus;
  late final int? metacritic;
  late final int suggestionsCount;
  late final String updated;
  late final int id;
  late final List<Tags>? tags;
  late final EsrbRating? esrbRating;
  late final Null userGame;
  late final int reviewsCount;
  late final int? communityRating;
  late final String saturatedColor;
  late final String dominantColor;
  late final List<ShortScreenshots> shortScreenshots;
  late final List<ParentPlatforms> parentPlatforms;
  late final List<Genres> genres;
  
  Results.fromJson(Map<String, dynamic> json){
    slug = json['slug'];
    name = json['name'];
    playtime = json['playtime'];
    platforms = List.from(json['platforms']).map((e)=>Platforms.fromJson(e)).toList();
    stores = json['stores']  != null ? List.from(json['stores']).map((e)=>Stores.fromJson(e)).toList() : null;
    released = json['released'];
    tba = json['tba'];
    backgroundImage = json['background_image'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    ratings = List.from(json['ratings']).map((e)=>Ratings.fromJson(e)).toList();
    ratingsCount = json['ratings_count'];
    reviewsTextCount = json['reviews_text_count'];
    added = json['added'];
    addedByStatus = json['added_by_status'] != null ? AddedByStatus.fromJson(json['added_by_status']) : null;
    metacritic = json['metacritic'];
    suggestionsCount = json['suggestions_count'];
    updated = json['updated'];
    id = json['id'];
    tags = json['tags'] != null ? List.from(json['tags']).map((e)=>Tags.fromJson(e)).toList() : null;
    esrbRating =  json['esrb_rating'] != null ? EsrbRating.fromJson(json['esrb_rating']) : null;
    userGame = null;
    reviewsCount = json['reviews_count'];
    communityRating = json['community_rating'];
    saturatedColor = json['saturated_color'];
    dominantColor = json['dominant_color'];
    shortScreenshots = List.from(json['short_screenshots']).map((e)=>ShortScreenshots.fromJson(e)).toList();
    parentPlatforms = List.from(json['parent_platforms']).map((e)=>ParentPlatforms.fromJson(e)).toList();
    genres = List.from(json['genres']).map((e)=>Genres.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['slug'] = slug;
    _data['name'] = name;
    _data['playtime'] = playtime;
    _data['platforms'] = platforms.map((e)=>e.toJson()).toList();
    _data['stores'] = stores?.map((e)=>e.toJson()).toList();
    _data['released'] = released;
    _data['tba'] = tba;
    _data['background_image'] = backgroundImage;
    _data['rating'] = rating;
    _data['rating_top'] = ratingTop;
    _data['ratings'] = ratings.map((e)=>e.toJson()).toList();
    _data['ratings_count'] = ratingsCount;
    _data['reviews_text_count'] = reviewsTextCount;
    _data['added'] = added;
    _data['added_by_status'] = addedByStatus?.toJson();
    _data['metacritic'] = metacritic;
    _data['suggestions_count'] = suggestionsCount;
    _data['updated'] = updated;
    _data['id'] = id;
    _data['tags'] = tags?.map((e)=>e.toJson()).toList();
    _data['esrb_rating'] = esrbRating?.toJson();
    _data['user_game'] = userGame;
    _data['reviews_count'] = reviewsCount;
    _data['community_rating'] = communityRating;
    _data['saturated_color'] = saturatedColor;
    _data['dominant_color'] = dominantColor;
    _data['short_screenshots'] = shortScreenshots.map((e)=>e.toJson()).toList();
    _data['parent_platforms'] = parentPlatforms.map((e)=>e.toJson()).toList();
    _data['genres'] = genres.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Platforms {
  Platforms({
    required this.platform,
  });
  late final Platform platform;
  
  Platforms.fromJson(Map<String, dynamic> json){
    platform = Platform.fromJson(json['platform']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['platform'] = platform.toJson();
    return _data;
  }
}

class Platform {
  Platform({
    required this.id,
    required this.name,
    required this.slug,
  });
  late final int id;
  late final String name;
  late final String slug;
  
  Platform.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    return _data;
  }
}

class Stores {
  Stores({
    required this.store,
  });
  late final Store store;
  
  Stores.fromJson(Map<String, dynamic> json){
    store = Store.fromJson(json['store']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['store'] = store.toJson();
    return _data;
  }
}

class Store {
  Store({
    required this.id,
    required this.name,
    required this.slug,
  });
  late final int id;
  late final String name;
  late final String slug;
  
  Store.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    return _data;
  }
}

class Ratings {
  Ratings({
    required this.id,
    required this.title,
    required this.count,
    required this.percent,
  });
  late final int id;
  late final String title;
  late final int count;
  late final double percent;
  
  Ratings.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    count = json['count'];
    percent = json['percent'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['count'] = count;
    _data['percent'] = percent;
    return _data;
  }
}

class AddedByStatus {
  AddedByStatus({
    required this.yet,
    required this.owned,
    required this.toplay,
    required this.dropped,
  });
  late final int? yet;
  late final int? owned;
  late final int? toplay;
  late final int? dropped;
  
  AddedByStatus.fromJson(Map<String, dynamic> json){
    yet = json['yet'];
    owned = json['owned'];
    toplay = json['toplay'];
    dropped = json['dropped'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['yet'] = yet;
    _data['owned'] = owned;
    _data['toplay'] = toplay;
    _data['dropped'] = dropped;
    return _data;
  }
}

class Tags {
  Tags({
    required this.id,
    required this.name,
    required this.slug,
    required this.language,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final String language;
  late final int gamesCount;
  late final String imageBackground;
  
  Tags.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    language = json['language'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['language'] = language;
    _data['games_count'] = gamesCount;
    _data['image_background'] = imageBackground;
    return _data;
  }
}

class EsrbRating {
  EsrbRating({
    required this.id,
    required this.name,
    required this.slug,
    required this.nameEn,
    required this.nameRu,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final String nameEn;
  late final String nameRu;
  
  EsrbRating.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    nameEn = json['name_en'];
    nameRu = json['name_ru'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['name_en'] = nameEn;
    _data['name_ru'] = nameRu;
    return _data;
  }
}

class ShortScreenshots {
  ShortScreenshots({
    required this.id,
    required this.image,
  });
  late final int id;
  late final String image;
  
  ShortScreenshots.fromJson(Map<String, dynamic> json){
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['image'] = image;
    return _data;
  }
}

class ParentPlatforms {
  ParentPlatforms({
    required this.platform,
  });
  late final Platform platform;
  
  ParentPlatforms.fromJson(Map<String, dynamic> json){
    platform = Platform.fromJson(json['platform']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['platform'] = platform.toJson();
    return _data;
  }
}

class Genres {
  Genres({
    required this.id,
    required this.name,
    required this.slug,
  });
  late final int id;
  late final String name;
  late final String slug;
  
  Genres.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    return _data;
  }
}