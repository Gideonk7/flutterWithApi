// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.code,
        required this.products,
        required this.groups,
        required this.categories,
    });

    int code;
    List<Product> products;
    List<Group> groups;
    List<Category> categories;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        code: json["code"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        groups: List<Group>.from(json["groups"].map((x) => Group.fromJson(x))),
        categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "groups": List<dynamic>.from(groups.map((x) => x.toJson())),
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    };
}

class Category {
    Category({
        required this.id,
        required this.shopsId,
        required this.groupId,
        required this.name,
        required this.sequence,
        required this.image,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    int shopsId;
    int groupId;
    String name;
    int sequence;
    String image;
    DateTime createdAt;
    DateTime updatedAt;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        shopsId: json["shops_id"],
        groupId: json["group_id"] == null ? null : json["group_id"],
        name: json["name"],
        sequence: json["sequence"],
        image: json["image"] == null ? null : json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "shops_id": shopsId,
        "group_id": groupId == null ? null : groupId,
        "name": name,
        "sequence": sequence,
        "image": image == null ? null : image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class Group {
    Group({
        required this.id,
        required this.shopsId,
        required this.name,
        required this.sequence,
        required this.image,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    int shopsId;
    String name;
    String sequence;
    String image;
    DateTime createdAt;
    DateTime updatedAt;

    factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json["id"],
        shopsId: json["shops_id"],
        name: json["name"],
        sequence: json["sequence"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "shops_id": shopsId,
        "name": name,
        "sequence": sequence,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class Product {
    Product({
        required this.id,
        required this.shopsId,
        required this.categoriesId,
        required this.name,
        required this.image,
        required this.thumbnail,
        required this.googleImageNumber,
        required this.primaryVariationName,
        required this.priceType,
        required this.vegType,
        required this.price,
        required this.coinPrice,
        required this.coinReward,
        required this.flashPrice,
        required this.flashTime,
        required this.comPrice,
        required this.costPrice,
        required this.distributorPrice,
        required this.bulkPrice,
        required this.bulkQuantity,
        required this.weight,
        required this.length,
        required this.breath,
        required this.height,
        required this.description,
        required this.attribute,
        required this.quantity,
        required this.unit,
        required this.unitType,
        required this.status,
        required this.sequence,
        required this.slider,
        required this.tags,
        required this.createdAt,
        required this.homepage,
        required this.porpular,
        required this.flash,
        required this.smallDescription,
        required this.gShoppingStatus,
        required this.gShoppingStock,
        required this.facebookChannelStatus,
        required this.facebookChannelId,
        required this.facebookChannelStock,
        required this.updatedAt,
        required this.discountedPrice,
        required this.hasDiscount,
        required this.profit,
        required this.coinToBeRewarded,
    });

    int id;
    int shopsId;
    int categoriesId;
    String name;
    String image;
    String thumbnail;
    int googleImageNumber;
    PrimaryVariationName? primaryVariationName; // YOU ADD ? TO FIX ERROR HERE
    int priceType;
    int vegType;
    String price;
    String coinPrice;
    int coinReward;
    String flashPrice;
    String flashTime;
    String comPrice;
    String costPrice;
    String distributorPrice;
    int bulkPrice;
    int bulkQuantity;
    String weight;
    String length;
    String breath;
    String height;
    String description;
    dynamic attribute;
    int quantity;
    dynamic unit;
    dynamic unitType;
    int status;
    int sequence;
    int slider;
    String tags;
    DateTime createdAt;
    int homepage;
    int porpular;
    int flash;
    String smallDescription;
    int gShoppingStatus;
    int gShoppingStock;
    int facebookChannelStatus;
    dynamic facebookChannelId;
    String facebookChannelStock;
    DateTime updatedAt;
    String discountedPrice;
    bool hasDiscount;
    String profit;
    int coinToBeRewarded;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        shopsId: json["shops_id"],
        categoriesId: json["categories_id"],
        name: json["name"],
        image: json["image"],
        thumbnail: json["thumbnail"],
        googleImageNumber: json["google_image_number"],
        primaryVariationName: primaryVariationNameValues.map[json["primary_variation_name"]],
        priceType: json["price_type"],
        vegType: json["veg_type"],
        price: json["price"],
        coinPrice: json["coin_price"],
        coinReward: json["coin_reward"],
        flashPrice: json["flash_price"],
        flashTime: json["flash_time"],
        comPrice: json["com_price"],
        costPrice: json["cost_price"],
        distributorPrice: json["distributor_price"],
        bulkPrice: json["bulk_price"],
        bulkQuantity: json["bulk_quantity"],
        weight: json["weight"],
        length: json["length"],
        breath: json["breath"],
        height: json["height"],
        description: json["description"],
        attribute: json["attribute"],
        quantity: json["quantity"],
        unit: json["unit"],
        unitType: json["unit_type"],
        status: json["status"],
        sequence: json["sequence"] == null ? null : json["sequence"],
        slider: json["slider"],
        tags: json["tags"] == null ? null : json["tags"],
        createdAt: DateTime.parse(json["created_at"]),
        homepage: json["homepage"],
        porpular: json["porpular"],
        flash: json["flash"],
        smallDescription: json["small_description"] == null ? null : json["small_description"],
        gShoppingStatus: json["g_shopping_status"],
        gShoppingStock: json["g_shopping_stock"],
        facebookChannelStatus: json["facebook_channel_status"],
        facebookChannelId: json["facebook_channel_id"],
        facebookChannelStock: json["facebook_channel_stock"],
        updatedAt: DateTime.parse(json["updated_at"]),
        discountedPrice: json["discounted_price"],
        hasDiscount: json["has_discount"],
        profit: json["profit"],
        coinToBeRewarded: json["coin_to_be_rewarded"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "shops_id": shopsId,
        "categories_id": categoriesId,
        "name": name,
        "image": image,
        "thumbnail": thumbnail,
        "google_image_number": googleImageNumber,
        "primary_variation_name": primaryVariationNameValues.reverse[primaryVariationName],
        "price_type": priceType,
        "veg_type": vegType,
        "price": price,
        "coin_price": coinPrice,
        "coin_reward": coinReward,
        "flash_price": flashPrice,
        "flash_time": flashTime,
        "com_price": comPrice,
        "cost_price": costPrice,
        "distributor_price": distributorPrice,
        "bulk_price": bulkPrice,
        "bulk_quantity": bulkQuantity,
        "weight": weight,
        "length": length,
        "breath": breath,
        "height": height,
        "description": description,
        "attribute": attribute,
        "quantity": quantity,
        "unit": unit,
        "unit_type": unitType,
        "status": status,
        "sequence": sequence == null ? null : sequence,
        "slider": slider,
        "tags": tags == null ? null : tags,
        "created_at": createdAt.toIso8601String(),
        "homepage": homepage,
        "porpular": porpular,
        "flash": flash,
        "small_description": smallDescription == null ? null : smallDescription,
        "g_shopping_status": gShoppingStatus,
        "g_shopping_stock": gShoppingStock,
        "facebook_channel_status": facebookChannelStatus,
        "facebook_channel_id": facebookChannelId,
        "facebook_channel_stock": facebookChannelStock,
        "updated_at": updatedAt.toIso8601String(),
        "discounted_price": discountedPrice,
        "has_discount": hasDiscount,
        "profit": profit,
        "coin_to_be_rewarded": coinToBeRewarded,
    };
}

enum PrimaryVariationName { PRIMARY }

final primaryVariationNameValues = EnumValues({
    "primary": PrimaryVariationName.PRIMARY
});

class EnumValues<T> {
    Map<String, T> map;
    late final Map<T, String> reverseMap; //YOU ADD LATE FINAL TO THE VARIABLE reverseMap to fix error

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
