class Meta {
  int totalItems;
  int totalPages;
  int perPageItem;
  int currentPage;
  int pageSize;
  bool hasMorePage;

  Meta({
    required this.totalItems,
    required this.totalPages,
    required this.perPageItem,
    required this.currentPage,
    required this.pageSize,
    required this.hasMorePage,
  });

  factory Meta.fromJson(Map<String, Object?> json) {
    int totalItems = json["total_items"] as int;
    int totalPages = json["total_pages"] as int;
    int perPageItem = json["per_page_item"] as int;
    int currentPage = json["current_page"] as int;
    int pageSize = json["page_size"] as int;
    bool hasMorePage = json["has_more_page"] as bool;

    return Meta(
        totalItems: totalItems,
        totalPages: totalPages,
        perPageItem: perPageItem,
        currentPage: currentPage,
        pageSize: pageSize,
        hasMorePage: hasMorePage);
  }
}

const example = {
  "total_items": 15,
  "total_pages": 2,
  "per_page_item": 10,
  "current_page": 1,
  "page_size": 10,
  "has_more_page": true
};
