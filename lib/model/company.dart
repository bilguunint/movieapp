class Company {
  final int id;
  final String logo;
  final String name;
  final String country;

  Company(this.id,
        this.logo,
         this.name,
         this.country);

  Company.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        logo = json["logo_path"],
        name = json["name"],
        country = json["origin_country"];
}
