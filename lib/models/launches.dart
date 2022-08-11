// To parse this JSON data, do
//
//     final types = typesFromMap(jsonString);

import 'dart:convert';

List<Types> typesFromMap(String str) => List<Types>.from(json.decode(str).map((x) => Types.fromMap(x)));

String typesToMap(List<Types> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Types {
    Types({
        required this.images,
        required this.name,
        required this.fullName,
        required this.locality,
        required this.latitude,
        required this.longitude,
        required this.region,
        required this.launchAttempts,
        required this.launchSuccesses,
        required this.rockets,
        required this.timezone,
        required this.launches,
        required this.status,
        required this.details,
        required this.id,
    });

    final Images images;
    final String name;
    final String fullName;
    final String locality;
    final String region;
    final double latitude;
    final double longitude;
    final int launchAttempts;
    final int launchSuccesses;
    final List<String> rockets;
    final String timezone;
    final List<String> launches;
    final String status;
    final String details;
    final String id;

    factory Types.fromMap(Map<String, dynamic> json) => Types(
        images: Images.fromMap(json["images"]),
        name: json["name"],
        fullName: json["full_name"],
        locality: json["locality"],
        region: json["region"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        launchAttempts: json["launch_attempts"],
        launchSuccesses: json["launch_successes"],
        rockets: List<String>.from(json["rockets"].map((x) => x)),
        timezone: json["timezone"],
        launches: List<String>.from(json["launches"].map((x) => x)),
        status: json["status"],
        details: json["details"],
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "images": images.toMap(),
        "name": name,
        "full_name": fullName,
        "locality": locality,
        "region": region,
        "latitude": latitude,
        "longitude": longitude,
        "launch_attempts": launchAttempts,
        "launch_successes": launchSuccesses,
        "rockets": List<dynamic>.from(rockets.map((x) => x)),
        "timezone": timezone,
        "launches": List<dynamic>.from(launches.map((x) => x)),
        "status": status,
        "details": details,
        "id": id,
    };
}

class Images {
    Images({
        required this.large,
    });

    final List<String> large;

    factory Images.fromMap(Map<String, dynamic> json) => Images(
        large: List<String>.from(json["large"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "large": List<dynamic>.from(large.map((x) => x)),
    };
}
