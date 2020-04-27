class Video {
  final String id;
  final String key;
  final String name;
  final String site;
  final String type;

  Video(this.id,
         this.key,
         this.name,
         this.site,
         this.type);

  Video.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        key = json["key"],
        name = json["name"],
        site = json["site"],
        type = json["type"];
}