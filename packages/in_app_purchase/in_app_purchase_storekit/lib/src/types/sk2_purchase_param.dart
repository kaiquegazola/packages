// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:in_app_purchase_platform_interface/in_app_purchase_platform_interface.dart';

import 'sk2_promotional_offer.dart';

/// Apple StoreKit2's AppStore specific parameter object for generating a purchase.
class Sk2PurchaseParam extends PurchaseParam {
  /// Creates a new [Sk2PurchaseParam] object with the given data.
  Sk2PurchaseParam({
    required super.productDetails,
    super.applicationUserName,
    this.quantity = 1,
    this.winBackOfferId,
    this.promotionalOffer,
  });

  /// Quantity of the product user requested to buy.
  final int quantity;

  /// The win back offer identifier to apply to the purchase.
  final String? winBackOfferId;

  /// The promotional offer identifier to apply to the purchase.
  final SK2PromotionalOffer? promotionalOffer;
}
