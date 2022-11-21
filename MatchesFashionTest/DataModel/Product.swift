//
//  Product.swift
//  MatchesFashionTest
//
//  Created by yawmoo_ext on 21/11/22.
//

import Foundation

struct ProductsResponseObject : Decodable {
    let results: [Product]
    let result: String
    let reason: String
    let location: String
}

struct Product : Decodable {
    {
      "code": "1499031",
      "name": "Modern Chess Openings book chess set",
      "url": "/products/Olympia-Le-Tan-Modern-Chess-Openings-book-chess-set-1499031",
      "description": "",
      "purchasable": "",
      "stock": "",
      "futureStocks": "",
      "availableForPickup": "",
      "averageRating": "",
      "numberOfReviews": "",
      "summary": "",
      "manufacturer": "",
      "variantType": "",
      "price": {
        "currencyIso": "EUR",
        "value": 2134,
        "priceType": "BUY",
        "formattedValue": "€2,134.00",
        "minQuantity": "",
        "maxQuantity": "",
        "wasPrice": 0,
        "formattedWasPrice": "€0.00",
        "percentageDiscount": 0,
        "taxIncluded": "",
        "formattedPriceWithoutDecimals": "€2,134",
        "formattedWasPriceWithoutDecimals": "€0"
      },
      "baseProduct": "",
      "images": "",
      "categories": "",
      "reviews": "",
      "classifications": "",
      "potentialPromotions": "",
      "variantOptions": "",
      "baseOptions": "",
      "volumePricesFlag": "",
      "volumePrices": "",
      "productReferences": "",
      "variantMatrix": "",
      "priceRange": "",
      "firstCategoryNameList": "",
      "multidimensional": "",
      "configurable": "",
      "addToCartDisabled": "",
      "addToCartDisabledMessage": "",
      "keywords": "",
      "baseCode": "",
      "genders": [
        {
          "code": "Womens",
          "name": ""
        }
      ],
      "indicativePrice": "",
      "globalID": "",
      "designer": {
        "code": "",
        "name": "Olympia Le-Tan",
        "url": "",
        "designerCategoryCode": ""
      },
      "styleNotes": "",
      "detailBullets": "",
      "cites": "",
      "siteProperties": "",
      "fulfillFromStore": "",
      "hasVideo": "",
      "videoUrl": "",
      "videoIs360": false,
      "videoHasModel": false,
      "titleOverride": "",
      "garmentType": "",
      "colourProducts": "",
      "styleItWithProducts": "",
      "sizeAndFitInfo": [
        "ONE SIZE"
      ],
      "sizeList": [
        {
          "code": "20156",
          "baseCode": "10000",
          "value": "ONE SIZE",
          "sortOrder": "",
          "taxonomyName": "",
          "available": true,
          "oneSize": ""
        }
      ],
      "outfits": "",
      "hasZoomImages": "",
      "primaryImageMap": {
        "thumbnail": {
          "imageType": "PRIMARY",
          "format": "thumbnail",
          "url": "//assetsprx.matchesfashion.com/img/product/1499031_1_thumbnail.jpg",
          "altText": "Olympia Le-Tan Modern Chess Openings book chess set",
          "galleryIndex": "",
          "width": ""
        },
        "large": {
          "imageType": "PRIMARY",
          "format": "large",
          "url": "//assetsprx.matchesfashion.com/img/product/1499031_1_large.jpg",
          "altText": "Olympia Le-Tan Modern Chess Openings book chess set",
          "galleryIndex": "",
          "width": ""
        },
        "medium": {
          "imageType": "PRIMARY",
          "format": "medium",
          "url": "//assetsprx.matchesfashion.com/img/product/1499031_1_medium.jpg",
          "altText": "Olympia Le-Tan Modern Chess Openings book chess set",
          "galleryIndex": "",
          "width": ""
        }
      },
      "galleryImageMaps": [
        {
          "thumbnail": {
            "imageType": "GALLERY",
            "format": "thumbnail",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_1_thumbnail.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 1,
            "width": ""
          },
          "large": {
            "imageType": "GALLERY",
            "format": "large",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_1_large.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 1,
            "width": ""
          },
          "medium": {
            "imageType": "GALLERY",
            "format": "medium",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_1_medium.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 1,
            "width": ""
          }
        },
        {
          "thumbnail": {
            "imageType": "GALLERY",
            "format": "thumbnail",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_2_thumbnail.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 2,
            "width": ""
          },
          "large": {
            "imageType": "GALLERY",
            "format": "large",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_2_large.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 2,
            "width": ""
          },
          "medium": {
            "imageType": "GALLERY",
            "format": "medium",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_2_medium.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 2,
            "width": ""
          }
        },
        {
          "thumbnail": {
            "imageType": "GALLERY",
            "format": "thumbnail",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_3_thumbnail.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 3,
            "width": ""
          },
          "large": {
            "imageType": "GALLERY",
            "format": "large",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_3_large.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 3,
            "width": ""
          },
          "medium": {
            "imageType": "GALLERY",
            "format": "medium",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_3_medium.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 3,
            "width": ""
          }
        },
        {
          "thumbnail": {
            "imageType": "GALLERY",
            "format": "thumbnail",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_4_thumbnail.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 4,
            "width": ""
          },
          "large": {
            "imageType": "GALLERY",
            "format": "large",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_4_large.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 4,
            "width": ""
          },
          "medium": {
            "imageType": "GALLERY",
            "format": "medium",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_4_medium.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 4,
            "width": ""
          }
        },
        {
          "thumbnail": {
            "imageType": "GALLERY",
            "format": "thumbnail",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_5_thumbnail.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 5,
            "width": ""
          },
          "large": {
            "imageType": "GALLERY",
            "format": "large",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_5_large.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 5,
            "width": ""
          },
          "medium": {
            "imageType": "GALLERY",
            "format": "medium",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_5_medium.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 5,
            "width": ""
          }
        },
        {
          "thumbnail": {
            "imageType": "GALLERY",
            "format": "thumbnail",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_6_thumbnail.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 6,
            "width": ""
          },
          "large": {
            "imageType": "GALLERY",
            "format": "large",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_6_large.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 6,
            "width": ""
          },
          "medium": {
            "imageType": "GALLERY",
            "format": "medium",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_6_medium.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 6,
            "width": ""
          }
        },
        {
          "thumbnail": {
            "imageType": "GALLERY",
            "format": "thumbnail",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_7_thumbnail.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 7,
            "width": ""
          },
          "large": {
            "imageType": "GALLERY",
            "format": "large",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_7_large.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 7,
            "width": ""
          },
          "medium": {
            "imageType": "GALLERY",
            "format": "medium",
            "url": "//assetsprx.matchesfashion.com/img/product/1499031_7_medium.jpg",
            "altText": "Modern Chess Openings book chess set",
            "galleryIndex": 7,
            "width": ""
          }
        }
      ],
      "galleryImageMapSize": "",
      "sellableInCurrentCountry": "",
      "refinementColour": "Blue",
      "slug": "Exclusive",
      "slugVisibleOnPDP": false,
      "carouselImages": "",
      "navDepartment": "",
      "nonRootSuperCategories": "",
      "freshnessDate": 1668573034000,
      "myStylistOnly": false,
      "hasCitesRestriction": "",
      "isOneSize": "",
      "lookbookDescription": "",
      "lookbookId": "",
      "markDown": "",
      "viewable": false,
      "designerUrl": "",
      "formattedFreshnessDate": "16-11-2022",
      "season": "Continuity",
      "leafCategories": "",
      "genderShortName": "W",
      "catLevel2": "WomensHomewareHomeAccessories",
      "catLevel2Name": "Home Accessories",
      "stockValue": "£null",
      "stockFragment": "100.0",
      "comingSoon": false,
      "approvalStatus": "APPROVED",
      "stockCount": "17",
      "countryOfOrigin": "",
      "taxAndDutyMessage": "",
      "isVisibleAfterLastSold": false,
      "curated": false,
      "navDivision": "",
      "isBatchGiftProduct": false,
      "approvedDate": ""
    }
}
