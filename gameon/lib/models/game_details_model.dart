class GameDetails {
  GameDetails({
    required this.id,
    required this.slug,
    required this.name,
    required this.nameOriginal,
    required this.description,
    required this.metacritic,
    required this.metacriticPlatforms,
    required this.released,
    required this.tba,
    required this.updated,
    required this.backgroundImage,
    required this.backgroundImageAdditional,
    required this.website,
    required this.rating,
    required this.ratingTop,
    required this.ratings,
    // required this.reactions,
    required this.added,
    required this.addedByStatus,
    required this.playtime,
    required this.screenshotsCount,
    required this.moviesCount,
    required this.creatorsCount,
    required this.achievementsCount,
    required this.parentAchievementsCount,
    required this.redditUrl,
    required this.redditName,
    required this.redditDescription,
    required this.redditLogo,
    required this.redditCount,
    required this.twitchCount,
    required this.youtubeCount,
    required this.reviewsTextCount,
    required this.ratingsCount,
    required this.suggestionsCount,
    required this.alternativeNames,
    required this.metacriticUrl,
    required this.parentsCount,
    required this.additionsCount,
    required this.gameSeriesCount,
    required this.reviewsCount,
    required this.saturatedColor,
    required this.dominantColor,
    required this.parentPlatforms,
    required this.platforms,
    required this.stores,
    required this.developers,
    required this.genres,
    required this.tags,
    required this.publishers,
    required this.esrbRating,
    required this.descriptionRaw,
  });
  late final int id;
  late final String slug;
  late final String name;
  late final String nameOriginal;
  late final String description;
  late final int? metacritic;
  late final List<MetacriticPlatforms> metacriticPlatforms;
  late final String released;
  late final bool tba;
  late final String updated;
  late final String? backgroundImage;
  late final String? backgroundImageAdditional;
  late final String website;
  late final double rating;
  late final int ratingTop;
  late final List<Ratings> ratings;
  // late final Reactions reactions;
  late final int added;
  late final AddedByStatus? addedByStatus;
  late final int playtime;
  late final int screenshotsCount;
  late final int moviesCount;
  late final int creatorsCount;
  late final int achievementsCount;
  late final int parentAchievementsCount;
  late final String redditUrl;
  late final String redditName;
  late final String redditDescription;
  late final String redditLogo;
  late final int redditCount;
  late final int twitchCount;
  late final int youtubeCount;
  late final int reviewsTextCount;
  late final int ratingsCount;
  late final int suggestionsCount;
  late final List<dynamic> alternativeNames;
  late final String metacriticUrl;
  late final int parentsCount;
  late final int additionsCount;
  late final int gameSeriesCount;
  late final int reviewsCount;
  late final String saturatedColor;
  late final String dominantColor;
  late final List<ParentPlatforms> parentPlatforms;
  late final List<Platforms> platforms;
  late final List<Stores> stores;
  late final List<Developers> developers;
  late final List<Genres> genres;
  late final List<Tags> tags;
  late final List<Publishers> publishers;
  late final EsrbRating? esrbRating;
  late final String descriptionRaw;

  GameDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    nameOriginal = json['name_original'];
    description = json['description'];
    metacritic = json['metacritic'];
    metacriticPlatforms = List.from(json['metacritic_platforms'])
        .map((e) => MetacriticPlatforms.fromJson(e))
        .toList();
    released = json['released'];
    tba = json['tba'];
    updated = json['updated'];
    backgroundImage = json['background_image'];
    backgroundImageAdditional = json['background_image_additional'];
    website = json['website'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    ratings =
        List.from(json['ratings']).map((e) => Ratings.fromJson(e)).toList();
    // reactions = Reactions.fromJson(json['reactions']);
    added = json['added'];
    addedByStatus = json['added_by_status'] != null ? AddedByStatus.fromJson(json['added_by_status']) : null;
    playtime = json['playtime'];
    screenshotsCount = json['screenshots_count'];
    moviesCount = json['movies_count'];
    creatorsCount = json['creators_count'];
    achievementsCount = json['achievements_count'];
    parentAchievementsCount = json['parent_achievements_count'];
    redditUrl = json['reddit_url'];
    redditName = json['reddit_name'];
    redditDescription = json['reddit_description'];
    redditLogo = json['reddit_logo'];
    redditCount = json['reddit_count'];
    twitchCount = json['twitch_count'];
    youtubeCount = json['youtube_count'];
    reviewsTextCount = json['reviews_text_count'];
    ratingsCount = json['ratings_count'];
    suggestionsCount = json['suggestions_count'];
    alternativeNames =
        List.castFrom<dynamic, dynamic>(json['alternative_names']);
    metacriticUrl = json['metacritic_url'];
    parentsCount = json['parents_count'];
    additionsCount = json['additions_count'];
    gameSeriesCount = json['game_series_count'];
    reviewsCount = json['reviews_count'];
    saturatedColor = json['saturated_color'];
    dominantColor = json['dominant_color'];
    parentPlatforms = List.from(json['parent_platforms'])
        .map((e) => ParentPlatforms.fromJson(e))
        .toList();
    platforms =
        List.from(json['platforms']).map((e) => Platforms.fromJson(e)).toList();
    stores = List.from(json['stores']).map((e) => Stores.fromJson(e)).toList();
    developers = List.from(json['developers'])
        .map((e) => Developers.fromJson(e))
        .toList();
    genres = List.from(json['genres']).map((e) => Genres.fromJson(e)).toList();
    tags = List.from(json['tags']).map((e) => Tags.fromJson(e)).toList();
    publishers = List.from(json['publishers'])
        .map((e) => Publishers.fromJson(e))
        .toList();
    esrbRating = json['esrb_rating'] != null ? EsrbRating.fromJson(json['esrb_rating']) : null;
    descriptionRaw = json['description_raw'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['slug'] = slug;
    _data['name'] = name;
    _data['name_original'] = nameOriginal;
    _data['description'] = description;
    _data['metacritic'] = metacritic;
    _data['metacritic_platforms'] =
        metacriticPlatforms.map((e) => e.toJson()).toList();
    _data['released'] = released;
    _data['tba'] = tba;
    _data['updated'] = updated;
    _data['background_image'] = backgroundImage;
    _data['background_image_additional'] = backgroundImageAdditional;
    _data['website'] = website;
    _data['rating'] = rating;
    _data['rating_top'] = ratingTop;
    _data['ratings'] = ratings.map((e) => e.toJson()).toList();
    // _data['reactions'] = reactions.toJson();
    _data['added'] = added;
    _data['added_by_status'] = addedByStatus?.toJson();
    _data['playtime'] = playtime;
    _data['screenshots_count'] = screenshotsCount;
    _data['movies_count'] = moviesCount;
    _data['creators_count'] = creatorsCount;
    _data['achievements_count'] = achievementsCount;
    _data['parent_achievements_count'] = parentAchievementsCount;
    _data['reddit_url'] = redditUrl;
    _data['reddit_name'] = redditName;
    _data['reddit_description'] = redditDescription;
    _data['reddit_logo'] = redditLogo;
    _data['reddit_count'] = redditCount;
    _data['twitch_count'] = twitchCount;
    _data['youtube_count'] = youtubeCount;
    _data['reviews_text_count'] = reviewsTextCount;
    _data['ratings_count'] = ratingsCount;
    _data['suggestions_count'] = suggestionsCount;
    _data['alternative_names'] = alternativeNames;
    _data['metacritic_url'] = metacriticUrl;
    _data['parents_count'] = parentsCount;
    _data['additions_count'] = additionsCount;
    _data['game_series_count'] = gameSeriesCount;
    _data['reviews_count'] = reviewsCount;
    _data['saturated_color'] = saturatedColor;
    _data['dominant_color'] = dominantColor;
    _data['parent_platforms'] = parentPlatforms.map((e) => e.toJson()).toList();
    _data['platforms'] = platforms.map((e) => e.toJson()).toList();
    _data['stores'] = stores.map((e) => e.toJson()).toList();
    _data['developers'] = developers.map((e) => e.toJson()).toList();
    _data['genres'] = genres.map((e) => e.toJson()).toList();
    _data['tags'] = tags.map((e) => e.toJson()).toList();
    _data['publishers'] = publishers.map((e) => e.toJson()).toList();
    _data['esrb_rating'] = esrbRating?.toJson();
    _data['description_raw'] = descriptionRaw;
    return _data;
  }
}

class MetacriticPlatforms {
  MetacriticPlatforms({
    required this.metascore,
    required this.url,
    required this.platform,
  });
  late final int metascore;
  late final String url;
  late final Platform platform;

  MetacriticPlatforms.fromJson(Map<String, dynamic> json) {
    metascore = json['metascore'];
    url = json['url'];
    platform = Platform.fromJson(json['platform']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['metascore'] = metascore;
    _data['url'] = url;
    _data['platform'] = platform.toJson();
    return _data;
  }
}

class Platform {
  Platform({
    required this.platform,
    required this.name,
    required this.slug,
  });
  late final int? platform;
  late final String name;
  late final String slug;

  Platform.fromJson(Map<String, dynamic> json) {
    platform = json['platform'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['platform'] = platform;
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
  late final double? percent;

  Ratings.fromJson(Map<String, dynamic> json) {
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
    required this.beaten,
    required this.toplay,
    required this.dropped,
    required this.playing,
  });
  late final int? yet;
  late final int? owned;
  late final int? beaten;
  late final int? toplay;
  late final int? dropped;
  late final int? playing;

  AddedByStatus.fromJson(Map<String, dynamic> json) {
    yet = json['yet'];
    owned = json['owned'];
    beaten = json['beaten'];
    toplay = json['toplay'];
    dropped = json['dropped'];
    playing = json['playing'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['yet'] = yet;
    _data['owned'] = owned;
    _data['beaten'] = beaten;
    _data['toplay'] = toplay;
    _data['dropped'] = dropped;
    _data['playing'] = playing;
    return _data;
  }
}

class ParentPlatforms {
  ParentPlatforms({
    required this.platform,
  });
  late final Platform platform;

  ParentPlatforms.fromJson(Map<String, dynamic> json) {
    platform = Platform.fromJson(json['platform']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['platform'] = platform.toJson();
    return _data;
  }
}

class Platforms {
  Platforms({
    required this.platform,
    required this.releasedAt,
    // required this.requirements,
  });
  late final Platform platform;
  late final String releasedAt;
  // late final Requirements requirements;

  Platforms.fromJson(Map<String, dynamic> json) {
    platform = Platform.fromJson(json['platform']);
    releasedAt = json['released_at'];
    // requirements = Requirements.fromJson(json['requirements']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['platform'] = platform.toJson();
    _data['released_at'] = releasedAt;
    // _data['requirements'] = requirements.toJson();
    return _data;
  }
}

class Stores {
  Stores({
    required this.id,
    required this.url,
    required this.store,
  });
  late final int id;
  late final String url;
  late final Store store;

  Stores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    store = Store.fromJson(json['store']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['url'] = url;
    _data['store'] = store.toJson();
    return _data;
  }
}

class Store {
  Store({
    required this.id,
    required this.name,
    required this.slug,
    required this.domain,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final String domain;
  late final int gamesCount;
  late final String imageBackground;

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    domain = json['domain'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['domain'] = domain;
    _data['games_count'] = gamesCount;
    _data['image_background'] = imageBackground;
    return _data;
  }
}

class Developers {
  Developers({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final int gamesCount;
  late final String imageBackground;

  Developers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['games_count'] = gamesCount;
    _data['image_background'] = imageBackground;
    return _data;
  }
}

class Genres {
  Genres({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final int gamesCount;
  late final String imageBackground;

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['games_count'] = gamesCount;
    _data['image_background'] = imageBackground;
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

  Tags.fromJson(Map<String, dynamic> json) {
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

class Publishers {
  Publishers({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final int gamesCount;
  late final String imageBackground;

  Publishers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
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
  });
  late final int id;
  late final String name;
  late final String slug;

  EsrbRating.fromJson(Map<String, dynamic> json) {
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
