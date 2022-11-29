//
//  MarketDataModel.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 29.11.2022.
//

import Foundation


//JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 13158,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 608,
     "total_market_cap": {
       "btc": 52902936.9042451,
       "eth": 716703997.279679,
       "ltc": 11379834402.34041,
       "bch": 7826593401.699472,
       "bnb": 2881381192.732041,
       "eos": 948622954933.8187,
       "xrp": 2212423957064.545,
       "xlm": 9792800677414.16,
       "link": 118264396124.05394,
       "dot": 164798246381.86914,
       "yfi": 134589888.46016523,
       "usd": 872977395756.7054,
       "aed": 3206445974614.3877,
       "ars": 145447724182160.2,
       "aud": 1294917052357.3813,
       "bdt": 93232845758337.75,
       "bhd": 329131683702.9857,
       "bmd": 872977395756.7054,
       "brl": 4637668844567.825,
       "cad": 1174126662016.1067,
       "chf": 828923464457.2393,
       "clp": 788909672545335.6,
       "cny": 6255406827034.265,
       "czk": 20462415561058.1,
       "dkk": 6253460087441.746,
       "eur": 840873652027.7571,
       "gbp": 726251719964.9,
       "hkd": 6818403044218.699,
       "huf": 341717125575685,
       "idr": 13728417833504340,
       "ils": 2995130447265.3296,
       "inr": 71294363351483.19,
       "jpy": 120462587329165.77,
       "krw": 1157583083887517,
       "kwd": 268440549195.18768,
       "lkr": 321973600789191,
       "mmk": 1834859645809622.8,
       "mxn": 16641016373595.988,
       "myr": 3935818588769.1167,
       "ngn": 387488476654530,
       "nok": 8686000252011.669,
       "nzd": 1397937987808.0254,
       "php": 49392186328563.97,
       "pkr": 195946612763579.16,
       "pln": 3935348926930.1997,
       "rub": 53116308771839.56,
       "sar": 3281426876113.327,
       "sek": 9161595718287.713,
       "sgd": 1197546899589.4705,
       "thb": 30865425293072.023,
       "try": 16270028915676.047,
       "twd": 27035672584909.957,
       "uah": 32269958625105.01,
       "vef": 87411226637.11916,
       "vnd": 21616380245302790,
       "zar": 14786206538696.078,
       "xdr": 674172507466.2393,
       "xag": 40868768513.76068,
       "xau": 497029680.27408147,
       "bits": 52902936904245.1,
       "sats": 5290293690424510
     },
     "total_volume": {
       "btc": 3353734.758803627,
       "eth": 45434814.173000745,
       "ltc": 721414507.7358806,
       "bch": 496159946.31474584,
       "bnb": 182662604.8553663,
       "eos": 60137110775.51285,
       "xrp": 140254654282.1866,
       "xlm": 620805912483.1724,
       "link": 7497266488.778508,
       "dot": 10447238649.172405,
       "yfi": 8532206.594302313,
       "usd": 55341627651.00102,
       "aed": 203269798362.12732,
       "ars": 9220529458723.707,
       "aud": 82090117910.07022,
       "bdt": 5910413556961.227,
       "bhd": 20865011140.23578,
       "bmd": 55341627651.00102,
       "brl": 294000902671.99713,
       "cad": 74432718258.51167,
       "chf": 52548867753.22092,
       "clp": 50012228908209.68,
       "cny": 396555967096.014,
       "czk": 1297196683813.9385,
       "dkk": 396432555266.3534,
       "eur": 53306439294.13574,
       "gbp": 46040083583.559204,
       "hkd": 432246612892.5592,
       "huf": 21662854064150.785,
       "idr": 870300871101705.8,
       "ils": 189873637948.04285,
       "inr": 4519642924766.589,
       "jpy": 7636618870375.463,
       "krw": 73383952797621.31,
       "kwd": 17017550502.682861,
       "lkr": 20411230823316.07,
       "mmk": 116319299679259.52,
       "mxn": 1054942472002.359,
       "myr": 249507728264.53873,
       "ngn": 24564488265449.895,
       "nok": 550641281274.7087,
       "nzd": 88621038730.79248,
       "php": 3131173840182.7393,
       "pkr": 12421861706553.342,
       "pln": 249477954468.86252,
       "rub": 3367261279083.543,
       "sar": 208023146102.69946,
       "sek": 580791233994.0898,
       "sgd": 75917423445.1329,
       "thb": 1956686258042.6218,
       "try": 1031424051182.7681,
       "twd": 1713902482196.0522,
       "uah": 2045725402770.319,
       "vef": 5541357176.694747,
       "vnd": 1370351251375814.8,
       "zar": 937358447782.0422,
       "xdr": 42738568102.78325,
       "xag": 2590839328.300128,
       "xau": 31508755.703097507,
       "bits": 3353734758803.627,
       "sats": 335373475880362.7
     },
     "market_cap_percentage": {
       "btc": 36.3302605242486,
       "eth": 16.81599544917435,
       "usdt": 7.48931809094307,
       "bnb": 5.667145033296876,
       "usdc": 5.032928029487944,
       "busd": 2.563066423430551,
       "xrp": 2.2734672930556417,
       "doge": 1.6422839499696342,
       "ada": 1.2510198057361699,
       "matic": 0.8550250917973636
     },
     "market_cap_change_percentage_24h_usd": 2.2012630596344462,
     "updated_at": 1669723857
   }
 }
 

 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {

    let totalMarketCap: [String: Double]
    let totalVolume: [String: Double]
    let marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
