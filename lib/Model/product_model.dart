class Product {
  int ?itemcount;
  Data ?data;

  Product({this.itemcount, this.data});

  Product.fromJson(Map<String, dynamic> json) {
    itemcount = json['itemcount'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemcount'] = this.itemcount;
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  String ?sId;
  String ?customerId;
  List<ProductVariants> ?productVariants;
  String ?deviceIdentifier;

  Data(
      {this.sId, this.customerId, this.productVariants, this.deviceIdentifier});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    customerId = json['customerId'];
    if (json['productVariants'] != null) {
      productVariants = <ProductVariants>[];
      json['productVariants'].forEach((v) {
        productVariants?.add(new ProductVariants.fromJson(v));
      });
    }
    deviceIdentifier = json['deviceIdentifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['customerId'] = this.customerId;
    if (this.productVariants != null) {
      data['productVariants'] =
          this.productVariants?.map((v) => v.toJson()).toList();
    }
    data['deviceIdentifier'] = this.deviceIdentifier;
    return data;
  }
}

class ProductVariants {
  String ?sId;
  ProductVariantId ?productVariantId;
  int ?quantity;

  ProductVariants({this.sId, this.productVariantId, this.quantity});

  ProductVariants.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    productVariantId = json['productVariantId'] != null
        ? new ProductVariantId.fromJson(json['productVariantId'])
        : null;
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.productVariantId != null) {
      data['productVariantId'] = this.productVariantId?.toJson();
    }
    data['quantity'] = this.quantity;
    return data;
  }
}

class ProductVariantId {
  List<ProductVariantImages> ?productVariantImages;
  List<String> ?tags;
  List<ProductVariantDetails> ?productVariantDetails;
  String ?sId;
  String ?productId;
  BrandId ?brandId;
  String ?sellerId;
  String ?productSKU;
  String ?productGrossPrice;
  String ?productNetPrice;
  String ?productTaxPercentage;
  String ?productTaxPrice;
  String ?orderQuantityMax;
  String ?orderQuantityMin;
  String ?inventoryQuantity;
  String ?inventoryReOrderLevel;
  String ?inventoryReOrderQuantity;
  Null subscriptionPrice;
  String ?subscriptionPriceWithoutTax;
  String ?subscriptionTaxAmount;
  bool ?sale;
  String ?saleTaxAmount;
  String ?salepricewithoutTax;
  Null salePrice;
  String ?salePricePercentage;
  String ?savingPercentage;
  int ?iV;
  String ?id;

  ProductVariantId(
      {this.productVariantImages,
      this.tags,
      this.productVariantDetails,
      this.sId,
      this.productId,
      this.brandId,
      this.sellerId,
      this.productSKU,
      this.productGrossPrice,
      this.productNetPrice,
      this.productTaxPercentage,
      this.productTaxPrice,
      this.orderQuantityMax,
      this.orderQuantityMin,
      this.inventoryQuantity,
      this.inventoryReOrderLevel,
      this.inventoryReOrderQuantity,
      this.subscriptionPrice,
      this.subscriptionPriceWithoutTax,
      this.subscriptionTaxAmount,
      this.sale,
      this.saleTaxAmount,
      this.salepricewithoutTax,
      this.salePrice,
      this.salePricePercentage,
      this.savingPercentage,
      this.iV,
      this.id});

  ProductVariantId.fromJson(Map<String, dynamic> json) {
    if (json['productVariantImages'] != null) {
      productVariantImages =  <ProductVariantImages>[];
      json['productVariantImages'].forEach((v) {
        productVariantImages?.add(new ProductVariantImages.fromJson(v));
      });
    }
    tags = json['tags'].cast<String>();
    if (json['productVariantDetails'] != null) {
      productVariantDetails = <ProductVariantDetails>[];
      json['productVariantDetails'].forEach((v) {
        productVariantDetails?.add(new ProductVariantDetails.fromJson(v));
      });
    }
    sId = json['_id'];
    productId = json['productId'];
    brandId =
        json['brandId'] != null ? new BrandId.fromJson(json['brandId']) : null;
    sellerId = json['sellerId'];
    productSKU = json['productSKU'];
    productGrossPrice = json['productGrossPrice'];
    productNetPrice = json['productNetPrice'];
    productTaxPercentage = json['productTaxPercentage'];
    productTaxPrice = json['productTaxPrice'];
    orderQuantityMax = json['orderQuantityMax'];
    orderQuantityMin = json['orderQuantityMin'];
    inventoryQuantity = json['inventoryQuantity'];
    inventoryReOrderLevel = json['inventoryReOrderLevel'];
    inventoryReOrderQuantity = json['inventoryReOrderQuantity'];
    subscriptionPrice = json['subscriptionPrice'];
    subscriptionPriceWithoutTax = json['subscriptionPriceWithoutTax'];
    subscriptionTaxAmount = json['subscriptionTaxAmount'];
    sale = json['sale'];
    saleTaxAmount = json['saleTaxAmount'];
    salepricewithoutTax = json['salepricewithoutTax'];
    salePrice = json['salePrice'];
    salePricePercentage = json['salePricePercentage'];
    savingPercentage = json['savingPercentage'];
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productVariantImages != null) {
      data['productVariantImages'] =
          this.productVariantImages?.map((v) => v.toJson()).toList();
    }
    data['tags'] = this.tags;
    if (this.productVariantDetails != null) {
      data['productVariantDetails'] =
          this.productVariantDetails?.map((v) => v.toJson()).toList();
    }
    data['_id'] = this.sId;
    data['productId'] = this.productId;
    if (this.brandId != null) {
      data['brandId'] = this.brandId?.toJson();
    }
    data['sellerId'] = this.sellerId;
    data['productSKU'] = this.productSKU;
    data['productGrossPrice'] = this.productGrossPrice;
    data['productNetPrice'] = this.productNetPrice;
    data['productTaxPercentage'] = this.productTaxPercentage;
    data['productTaxPrice'] = this.productTaxPrice;
    data['orderQuantityMax'] = this.orderQuantityMax;
    data['orderQuantityMin'] = this.orderQuantityMin;
    data['inventoryQuantity'] = this.inventoryQuantity;
    data['inventoryReOrderLevel'] = this.inventoryReOrderLevel;
    data['inventoryReOrderQuantity'] = this.inventoryReOrderQuantity;
    data['subscriptionPrice'] = this.subscriptionPrice;
    data['subscriptionPriceWithoutTax'] = this.subscriptionPriceWithoutTax;
    data['subscriptionTaxAmount'] = this.subscriptionTaxAmount;
    data['sale'] = this.sale;
    data['saleTaxAmount'] = this.saleTaxAmount;
    data['salepricewithoutTax'] = this.salepricewithoutTax;
    data['salePrice'] = this.salePrice;
    data['salePricePercentage'] = this.salePricePercentage;
    data['savingPercentage'] = this.savingPercentage;
    data['__v'] = this.iV;
    data['id'] = this.id;
    return data;
  }
}

class ProductVariantImages {
  bool ?active;
  int ?photoOrder;
  String ?path;

  ProductVariantImages({this.active, this.photoOrder, this.path});

  ProductVariantImages.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    photoOrder = json['photoOrder'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['active'] = this.active;
    data['photoOrder'] = this.photoOrder;
    data['path'] = this.path;
    return data;
  }
}

class ProductVariantDetails {
  String ?pvLanguage;
  String ?productVariantName;
  String ?productVariantDescription;
  String ?productShortDescription;
  ProductSpecification ?productSpecification;

  ProductVariantDetails(
      {this.pvLanguage,
      this.productVariantName,
      this.productVariantDescription,
      this.productShortDescription,
      this.productSpecification});

  ProductVariantDetails.fromJson(Map<String, dynamic> json) {
    pvLanguage = json['pv_language'];
    productVariantName = json['productVariantName'];
    productVariantDescription = json['productVariantDescription'];
    productShortDescription = json['productShortDescription'];
    productSpecification = json['productSpecification'] != null
        ? new ProductSpecification.fromJson(json['productSpecification'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pv_language'] = this.pvLanguage;
    data['productVariantName'] = this.productVariantName;
    data['productVariantDescription'] = this.productVariantDescription;
    data['productShortDescription'] = this.productShortDescription;
    if (this.productSpecification != null) {
      data['productSpecification'] = this.productSpecification?.toJson();
    }
    return data;
  }
}

class ProductSpecification {
  String ?productSize;
  String ?productColour;
  String ?productColourHex;
  String ?productWarranty;
  String ?productBatchNo;

  ProductSpecification(
      {this.productSize,
      this.productColour,
      this.productColourHex,
      this.productWarranty,
      this.productBatchNo});

  ProductSpecification.fromJson(Map<String, dynamic> json) {
    productSize = json['productSize'];
    productColour = json['productColour'];
    productColourHex = json['productColourHex'];
    productWarranty = json['productWarranty'];
    productBatchNo = json['productBatchNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productSize'] = this.productSize;
    data['productColour'] = this.productColour;
    data['productColourHex'] = this.productColourHex;
    data['productWarranty'] = this.productWarranty;
    data['productBatchNo'] = this.productBatchNo;
    return data;
  }
}

class BrandId {
  List<BrandDetails> ?brandDetails;
  String ?sId;

  BrandId({this.brandDetails, this.sId});

  BrandId.fromJson(Map<String, dynamic> json) {
    if (json['brandDetails'] != null) {
      brandDetails = <BrandDetails>[];
      json['brandDetails'].forEach((v) {
        brandDetails?.add(new BrandDetails.fromJson(v));
      });
    }
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.brandDetails != null) {
      data['brandDetails'] = this.brandDetails?.map((v) => v.toJson()).toList();
    }
    data['_id'] = this.sId;
    return data;
  }
}

class BrandDetails {
  String ?bLanguage;
  String ?brandName;
  String ?brandDescription;

  BrandDetails({this.bLanguage, this.brandName, this.brandDescription});

  BrandDetails.fromJson(Map<String, dynamic> json) {
    bLanguage = json['b_language'];
    brandName = json['brandName'];
    brandDescription = json['brandDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['b_language'] = this.bLanguage;
    data['brandName'] = this.brandName;
    data['brandDescription'] = this.brandDescription;
    return data;
  }
}
