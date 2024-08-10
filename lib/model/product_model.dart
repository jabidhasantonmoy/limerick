class ProductListModel {
  List<ProductModel> data;
  ProductListModel({required this.data});
}

class ProductModel {
  ProductModel({
    this.id,
    this.code,
    this.name,
    this.unitId,
    this.price,
    this.secondaryPrice,
    this.sku,
    this.packSize,
    this.stock,
    this.type,
    this.categoryId,
    this.notes,
    this.vat,
    this.status,
    this.stdPriceAccounts,
    this.vatValueAccounts,
    this.sdvInv,
    this.sdInv,
    this.vatInv,
    this.unitSupply,
    this.unitSupplyQty,
    this.mushok64Show,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.tradeOfferInputQty,
    this.tradeOfferQty,
    this.unitName,
    this.unitQty,
    this.categoryName,
    this.stockQty,
  });

  ProductModel.fromJson(dynamic json) {
    id = json['id'];
    code = json['code'];
    name = json['name'];
    unitId = json['unit_id'];
    price = json['price'];
    secondaryPrice = json['secondary_price'];
    sku = json['sku'];
    packSize = json['pack_size'];
    stock = json['stock'];
    type = json['type'];
    categoryId = json['category_id'];
    notes = json['notes'];
    vat = json['vat'];
    status = json['status'];
    stdPriceAccounts = json['std_price_accounts'];
    vatValueAccounts = json['vat_value_accounts'];
    sdvInv = json['sdv_inv'];
    sdInv = json['sd_inv'];
    vatInv = json['vat_inv'];
    unitSupply = json['unit_supply'];
    unitSupplyQty = json['unit_supply_qty'];
    mushok64Show = json['mushok_6_4_show'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    tradeOfferInputQty = json['tradeOfferInputQty'];
    tradeOfferQty = json['tradeOfferQty'];
    unitName = json['unit_name'];
    unitQty = json['unit_qty'];
    categoryName = json['category_name'];
    stockQty = json['stockQty'];
  }
  num? id;
  String? code;
  String? name;
  num? unitId;
  String? price;
  String? secondaryPrice;
  dynamic sku;
  String? packSize;
  String? stock;
  String? type;
  num? categoryId;
  String? notes;
  String? vat;
  String? status;
  dynamic stdPriceAccounts;
  dynamic vatValueAccounts;
  dynamic sdvInv;
  String? sdInv;
  String? vatInv;
  num? unitSupply;
  String? unitSupplyQty;
  num? mushok64Show;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;
  dynamic tradeOfferInputQty;
  dynamic tradeOfferQty;
  String? unitName;
  String? unitQty;
  String? categoryName;
  String? stockQty;
  ProductModel copyWith({
    num? id,
    String? code,
    String? name,
    num? unitId,
    String? price,
    String? secondaryPrice,
    dynamic sku,
    String? packSize,
    String? stock,
    String? type,
    num? categoryId,
    String? notes,
    String? vat,
    String? status,
    dynamic stdPriceAccounts,
    dynamic vatValueAccounts,
    dynamic sdvInv,
    String? sdInv,
    String? vatInv,
    num? unitSupply,
    String? unitSupplyQty,
    num? mushok64Show,
    dynamic createdAt,
    dynamic updatedAt,
    dynamic deletedAt,
    dynamic tradeOfferInputQty,
    dynamic tradeOfferQty,
    String? unitName,
    String? unitQty,
    String? categoryName,
    String? stockQty,
  }) =>
      ProductModel(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        unitId: unitId ?? this.unitId,
        price: price ?? this.price,
        secondaryPrice: secondaryPrice ?? this.secondaryPrice,
        sku: sku ?? this.sku,
        packSize: packSize ?? this.packSize,
        stock: stock ?? this.stock,
        type: type ?? this.type,
        categoryId: categoryId ?? this.categoryId,
        notes: notes ?? this.notes,
        vat: vat ?? this.vat,
        status: status ?? this.status,
        stdPriceAccounts: stdPriceAccounts ?? this.stdPriceAccounts,
        vatValueAccounts: vatValueAccounts ?? this.vatValueAccounts,
        sdvInv: sdvInv ?? this.sdvInv,
        sdInv: sdInv ?? this.sdInv,
        vatInv: vatInv ?? this.vatInv,
        unitSupply: unitSupply ?? this.unitSupply,
        unitSupplyQty: unitSupplyQty ?? this.unitSupplyQty,
        mushok64Show: mushok64Show ?? this.mushok64Show,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
        tradeOfferInputQty: tradeOfferInputQty ?? this.tradeOfferInputQty,
        tradeOfferQty: tradeOfferQty ?? this.tradeOfferQty,
        unitName: unitName ?? this.unitName,
        unitQty: unitQty ?? this.unitQty,
        categoryName: categoryName ?? this.categoryName,
        stockQty: stockQty ?? this.stockQty,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['code'] = code;
    map['name'] = name;
    map['unit_id'] = unitId;
    map['price'] = price;
    map['secondary_price'] = secondaryPrice;
    map['sku'] = sku;
    map['pack_size'] = packSize;
    map['stock'] = stock;
    map['type'] = type;
    map['category_id'] = categoryId;
    map['notes'] = notes;
    map['vat'] = vat;
    map['status'] = status;
    map['std_price_accounts'] = stdPriceAccounts;
    map['vat_value_accounts'] = vatValueAccounts;
    map['sdv_inv'] = sdvInv;
    map['sd_inv'] = sdInv;
    map['vat_inv'] = vatInv;
    map['unit_supply'] = unitSupply;
    map['unit_supply_qty'] = unitSupplyQty;
    map['mushok_6_4_show'] = mushok64Show;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    map['tradeOfferInputQty'] = tradeOfferInputQty;
    map['tradeOfferQty'] = tradeOfferQty;
    map['unit_name'] = unitName;
    map['unit_qty'] = unitQty;
    map['category_name'] = categoryName;
    map['stockQty'] = stockQty;
    return map;
  }
}
