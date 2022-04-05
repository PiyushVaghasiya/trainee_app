class RecipeModel {
  int? status;
  String? msg;
  Recipelist? recipelist;

  RecipeModel({this.status, this.msg, this.recipelist});

  RecipeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    recipelist = json['recipelist'] != null
        ? new Recipelist.fromJson(json['recipelist'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.recipelist != null) {
      data['recipelist'] = this.recipelist!.toJson();
    }
    return data;
  }
}

class Recipelist {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  Null? prevPageUrl;
  int? to;
  int? total;

  Recipelist(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  Recipelist.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? chefId;
  String? categoryId;
  String? image;
  String? userId;
  String? totalTime;
  String? prepTime;
  String? cookTime;
  String? isApprove;
  String? views;
  String? likes;
  String? share;
  String? createdAt;
  String? updatedAt;
  String? notify;
  String? description;
  String? serving;
  String? video;
  String? userName;
  int? totalRecipe;
  int? totalFollowers;
  String? userProfile;

  Data(
      {this.id,
        this.name,
        this.chefId,
        this.categoryId,
        this.image,
        this.userId,
        this.totalTime,
        this.prepTime,
        this.cookTime,
        this.isApprove,
        this.views,
        this.likes,
        this.share,
        this.createdAt,
        this.updatedAt,
        this.notify,
        this.description,
        this.serving,
        this.video,
        this.userName,
        this.totalRecipe,
        this.totalFollowers,
        this.userProfile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    chefId = json['chef_id'];
    categoryId = json['category_id'];
    image = json['image'];
    userId = json['user_id'];
    totalTime = json['total_time'];
    prepTime = json['prep_time'];
    cookTime = json['cook_time'];
    isApprove = json['is_approve'];
    views = json['views'];
    likes = json['likes'];
    share = json['share'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    notify = json['notify'];
    description = json['description'];
    serving = json['serving'];
    video = json['video'];
    userName = json['user_name'];
    totalRecipe = json['total_recipe'];
    totalFollowers = json['total_followers'];
    userProfile = json['user_profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['chef_id'] = this.chefId;
    data['category_id'] = this.categoryId;
    data['image'] = this.image;
    data['user_id'] = this.userId;
    data['total_time'] = this.totalTime;
    data['prep_time'] = this.prepTime;
    data['cook_time'] = this.cookTime;
    data['is_approve'] = this.isApprove;
    data['views'] = this.views;
    data['likes'] = this.likes;
    data['share'] = this.share;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['notify'] = this.notify;
    data['description'] = this.description;
    data['serving'] = this.serving;
    data['video'] = this.video;
    data['user_name'] = this.userName;
    data['total_recipe'] = this.totalRecipe;
    data['total_followers'] = this.totalFollowers;
    data['user_profile'] = this.userProfile;
    return data;
  }
}