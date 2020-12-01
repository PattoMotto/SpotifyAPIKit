//
//  Country.swift
//  Created by PattoMotto on 01/12/2020.
//  

import Foundation

// Source https://github.com/skelpo/Countries/blob/master/Sources/Countries/Countries.swift
public enum Country: String, Equatable, Hashable, Codable, CaseIterable {

    // MARK: - Cases
    case germany = "DE"
    case unitedKingdom = "GB"
    case unitedStates = "US"
    case afghanistan = "AF"
    case albania = "AL"
    case algeria = "DZ"
    case americanSamoa = "AS"
    case andorra = "AD"
    case angola = "AO"
    case anguilla = "AI"
    case antarctica = "AQ"
    case antiguaAndBarbuda = "AG"
    case argentina = "AR"
    case armenia = "AM"
    case aruba = "AW"
    case australia = "AU"
    case austria = "AT"
    case azerbaijan = "AZ"
    case bahamas = "BS"
    case bahrain = "BH"
    case bangladesh = "BD"
    case barbados = "BB"
    case belarus = "BY"
    case belgium = "BE"
    case belize = "BZ"
    case benin = "BJ"
    case bermuda = "BM"
    case bhutan = "BT"
    case bolivia = "BO"
    case bosniaAndHerzegovina = "BA"
    case botswana = "BW"
    case bouvetIsland = "BV"
    case brazil = "BR"
    case britishIndianOceanTerritory = "IO"
    case bruneiDarussalam = "BN"
    case bulgaria = "BG"
    case burkinaFaso = "BF"
    case burundi = "BI"
    case cambodia = "KH"
    case cameroon = "CM"
    case canada = "CA"
    case capeVerde = "CV"
    case caymanIslands = "KY"
    case centralAfricanRepublic = "CF"
    case chad = "TD"
    case chile = "CL"
    case china = "CN"
    case christmasIsland = "CX"
    case cocosKeelingIslands = "CC"
    case colombia = "CO"
    case comoros = "KM"
    case congo = "CG"
    case democraticRepublicOfTheCongo = "CD"
    case cookIslands = "CK"
    case costaRica = "CR"
    case coteDivoire = "CI"
    case croatia = "HR"
    case cuba = "CU"
    case cyprus = "CY"
    case czechRepublic = "CZ"
    case denmark = "DK"
    case djibouti = "DJ"
    case dominica = "DM"
    case dominicanRepublic = "DO"
    case ecuador = "EC"
    case egypt = "EG"
    case elSalvador = "SV"
    case equatorialGuinea = "GQ"
    case eritrea = "ER"
    case estonia = "EE"
    case ethiopia = "ET"
    case falklandIslandsMalvinas = "FK"
    case faroeIslands = "FO"
    case fiji = "FJ"
    case finland = "FI"
    case france = "FR"
    case frenchGuiana = "GF"
    case frenchPolynesia = "PF"
    case frenchSouthernTerritories = "TF"
    case gabon = "GA"
    case gambia = "GM"
    case georgia = "GE"
    case ghana = "GH"
    case gibraltar = "GI"
    case greece = "GR"
    case greenland = "GL"
    case grenada = "GD"
    case guadeloupe = "GP"
    case guam = "GU"
    case guatemala = "GT"
    case guernsey = "GG"
    case guinea = "GN"
    case guineabissau = "GW"
    case guyana = "GY"
    case haiti = "HT"
    case heardIslandAndMcdonaldIslands = "HM"
    case holySeeVaticanCityState = "VA"
    case honduras = "HN"
    case hongKong = "HK"
    case hungary = "HU"
    case iceland = "IS"
    case india = "IN"
    case indonesia = "ID"
    case iran = "IR"
    case iraq = "IQ"
    case ireland = "IE"
    case isleOfMan = "IM"
    case israel = "IL"
    case italy = "IT"
    case jamaica = "JM"
    case japan = "JP"
    case jersey = "JE"
    case jordan = "JO"
    case kazakhstan = "KZ"
    case kenya = "KE"
    case kiribati = "KI"
    case kosovo = "XK"
    case northKorea = "KP"
    case southKorea = "KR"
    case kuwait = "KW"
    case kyrgyzstan = "KG"
    case laoPeoplesDemocraticRepublic = "LA"
    case latvia = "LV"
    case lebanon = "LB"
    case lesotho = "LS"
    case liberia = "LR"
    case libyanArabJamahiriya = "LY"
    case liechtenstein = "LI"
    case lithuania = "LT"
    case luxembourg = "LU"
    case macao = "MO"
    case macedonia = "MK"
    case madagascar = "MG"
    case malawi = "MW"
    case malaysia = "MY"
    case maldives = "MV"
    case mali = "ML"
    case malta = "MT"
    case marshallIslands = "MH"
    case martinique = "MQ"
    case mauritania = "MR"
    case mauritius = "MU"
    case mayotte = "YT"
    case mexico = "MX"
    case micronesia = "FM"
    case moldova = "MD"
    case monaco = "MC"
    case mongolia = "MN"
    case montenegro = "ME"
    case montserrat = "MS"
    case morocco = "MA"
    case mozambique = "MZ"
    case myanmar = "MM"
    case namibia = "NA"
    case nauru = "NR"
    case nepal = "NP"
    case netherlands = "NL"
    case netherlandsAntilles = "AN"
    case newCaledonia = "NC"
    case newZealand = "NZ"
    case nicaragua = "NI"
    case niger = "NE"
    case nigeria = "NG"
    case niue = "NU"
    case norfolkIsland = "NF"
    case northernMarianaIslands = "MP"
    case norway = "NO"
    case oman = "OM"
    case pakistan = "PK"
    case palau = "PW"
    case palestine = "PS"
    case panama = "PA"
    case papuaNewGuinea = "PG"
    case paraguay = "PY"
    case peru = "PE"
    case philippines = "PH"
    case pitcairn = "PN"
    case poland = "PL"
    case portugal = "PT"
    case puertoRico = "PR"
    case qatar = "QA"
    case reunion = "RE"
    case romania = "RO"
    case russianFederation = "RU"
    case rwanda = "RW"
    case saintHelena = "SH"
    case saintKittsAndNevis = "KN"
    case saintLucia = "LC"
    case saintPierreAndMiquelon = "PM"
    case saintVincentAndTheGrenadines = "VC"
    case samoa = "WS"
    case sanMarino = "SM"
    case saoTomeAndPrincipe = "ST"
    case saudiArabia = "SA"
    case senegal = "SN"
    case serbia = "RS"
    case seychelles = "SC"
    case sierraLeone = "SL"
    case singapore = "SG"
    case slovakia = "SK"
    case slovenia = "SI"
    case solomonIslands = "SB"
    case somalia = "SO"
    case southAfrica = "ZA"
    case southGeorgiaAndTheSouthSandwichIslands = "GS"
    case spain = "ES"
    case sriLanka = "LK"
    case sudan = "SD"
    case suriname = "SR"
    case svalbardAndJanMayen = "SJ"
    case swaziland = "SZ"
    case sweden = "SE"
    case switzerland = "CH"
    case syrianArabRepublic = "SY"
    case taiwan = "TW"
    case tajikistan = "TJ"
    case tanzania = "TZ"
    case thailand = "TH"
    case timorleste = "TL"
    case togo = "TG"
    case tokelau = "TK"
    case tonga = "TO"
    case trinidadAndTobago = "TT"
    case tunisia = "TN"
    case turkey = "TR"
    case turkmenistan = "TM"
    case turksAndCaicosIslands = "TC"
    case tuvalu = "TV"
    case uganda = "UG"
    case ukraine = "UA"
    case unitedArabEmirates = "AE"
    case unitedStatesMinorOutlyingIslands = "UM"
    case uruguay = "UY"
    case uzbekistan = "UZ"
    case vanuatu = "VU"
    case venezuela = "VE"
    case vietNam = "VN"
    case virginIslandsUK = "VG"
    case virginIslandsUS = "VI"
    case wallisAndFutuna = "WF"
    case westernSahara = "EH"
    case yemen = "YE"
    case zambia = "ZM"
    case zimbabwe = "ZW"

    case allCountries = "ALL"

    public init(from decoder: Decoder)throws {
        let container = try decoder.singleValueContainer()
        let code = try container.decode(String.self)
        if let country = Country.init(rawValue: code.uppercased()) {
            self = country
        } else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Cannot create `Country` instance from code or name `\(code)`")
        }
    }


    // MARK: - Properties

    public var abbreviation: String? {
        if self.rawValue.count != 2 {
            return nil
        } else {
            return self.rawValue
        }
    }

    public var name: String {
        switch self {
        case .germany: return "Germany"
        case .unitedKingdom: return "United Kingdom"
        case .unitedStates: return "United States"
        case .afghanistan: return "Afghanistan"
        case .albania: return "Albania"
        case .algeria: return "Algeria"
        case .americanSamoa: return "American Samoa"
        case .andorra: return "Andorra"
        case .angola: return "Angola"
        case .anguilla: return "Anguilla"
        case .antarctica: return "Antarctica"
        case .antiguaAndBarbuda: return "Antigua and Barbuda"
        case .argentina: return "Argentina"
        case .armenia: return "Armenia"
        case .aruba: return "Aruba"
        case .australia: return "Australia"
        case .austria: return "Austria"
        case .azerbaijan: return "Azerbaijan"
        case .bahamas: return "Bahamas"
        case .bahrain: return "Bahrain"
        case .bangladesh: return "Bangladesh"
        case .barbados: return "Barbados"
        case .belarus: return "Belarus"
        case .belgium: return "Belgium"
        case .belize: return "Belize"
        case .benin: return "Benin"
        case .bermuda: return "Bermuda"
        case .bhutan: return "Bhutan"
        case .bolivia: return "Bolivia"
        case .bosniaAndHerzegovina: return "Bosnia and Herzegovina"
        case .botswana: return "Botswana"
        case .bouvetIsland: return "Bouvet Island"
        case .brazil: return "Brazil"
        case .britishIndianOceanTerritory: return "British Indian Ocean Territory"
        case .bruneiDarussalam: return "Brunei Darussalam"
        case .bulgaria: return "Bulgaria"
        case .burkinaFaso: return "Burkina Faso"
        case .burundi: return "Burundi"
        case .cambodia: return "Cambodia"
        case .cameroon: return "Cameroon"
        case .canada: return "Canada"
        case .capeVerde: return "Cape Verde"
        case .caymanIslands: return "Cayman Islands"
        case .centralAfricanRepublic: return "Central African Republic"
        case .chad: return "Chad"
        case .chile: return "Chile"
        case .china: return "China"
        case .christmasIsland: return "Christmas Island"
        case .cocosKeelingIslands: return "Cocos (Keeling) Islands"
        case .colombia: return "Colombia"
        case .comoros: return "Comoros"
        case .congo: return "Congo"
        case .democraticRepublicOfTheCongo: return "Democratic Republic Of The Congo"
        case .cookIslands: return "Cook Islands"
        case .costaRica: return "Costa Rica"
        case .coteDivoire: return "Cote D'ivoire"
        case .croatia: return "Croatia"
        case .cuba: return "Cuba"
        case .cyprus: return "Cyprus"
        case .czechRepublic: return "Czech Republic"
        case .denmark: return "Denmark"
        case .djibouti: return "Djibouti"
        case .dominica: return "Dominica"
        case .dominicanRepublic: return "Dominican Republic"
        case .ecuador: return "Ecuador"
        case .egypt: return "Egypt"
        case .elSalvador: return "El Salvador"
        case .equatorialGuinea: return "Equatorial Guinea"
        case .eritrea: return "Eritrea"
        case .estonia: return "Estonia"
        case .ethiopia: return "Ethiopia"
        case .falklandIslandsMalvinas: return "Falkland Islands (Malvinas"
        case .faroeIslands: return "Faroe Islands"
        case .fiji: return "Fiji"
        case .finland: return "Finland"
        case .france: return "France"
        case .frenchGuiana: return "French Guiana"
        case .frenchPolynesia: return "French Polynesia"
        case .frenchSouthernTerritories: return "French Southern Territories"
        case .gabon: return "Gabon"
        case .gambia: return "Gambia"
        case .georgia: return "Georgia"
        case .ghana: return "Ghana"
        case .gibraltar: return "Gibraltar"
        case .greece: return "Greece"
        case .greenland: return "Greenland"
        case .grenada: return "Grenada"
        case .guadeloupe: return "Guadeloupe"
        case .guam: return "Guam"
        case .guatemala: return "Guatemala"
        case .guernsey: return "Guernsey"
        case .guinea: return "Guinea"
        case .guineabissau: return "Guineabissau"
        case .guyana: return "Guyana"
        case .haiti: return "Haiti"
        case .heardIslandAndMcdonaldIslands: return "Heard Island and Mcdonald Islands"
        case .holySeeVaticanCityState: return "Holy See (Vatican City State"
        case .honduras: return "Honduras"
        case .hongKong: return "Hong Kong"
        case .hungary: return "Hungary"
        case .iceland: return "Iceland"
        case .india: return "India"
        case .indonesia: return "Indonesia"
        case .iran: return "Iran"
        case .iraq: return "Iraq"
        case .ireland: return "Ireland"
        case .isleOfMan: return "Isle of Man"
        case .israel: return "Israel"
        case .italy: return "Italy"
        case .jamaica: return "Jamaica"
        case .japan: return "Japan"
        case .jersey: return "Jersey"
        case .jordan: return "Jordan"
        case .kazakhstan: return "Kazakhstan"
        case .kenya: return "Kenya"
        case .kiribati: return "Kiribati"
        case .kosovo: return "Kosovo"
        case .northKorea: return "North Korea"
        case .southKorea: return "South Korea"
        case .kuwait: return "Kuwait"
        case .kyrgyzstan: return "Kyrgyzstan"
        case .laoPeoplesDemocraticRepublic: return "Lao People's Democratic Republic"
        case .latvia: return "Latvia"
        case .lebanon: return "Lebanon"
        case .lesotho: return "Lesotho"
        case .liberia: return "Liberia"
        case .libyanArabJamahiriya: return "Libyan Arab Jamahiriya"
        case .liechtenstein: return "Liechtenstein"
        case .lithuania: return "Lithuania"
        case .luxembourg: return "Luxembourg"
        case .macao: return "Macao"
        case .macedonia: return "Macedonia"
        case .madagascar: return "Madagascar"
        case .malawi: return "Malawi"
        case .malaysia: return "Malaysia"
        case .maldives: return "Maldives"
        case .mali: return "Mali"
        case .malta: return "Malta"
        case .marshallIslands: return "Marshall Islands"
        case .martinique: return "Martinique"
        case .mauritania: return "Mauritania"
        case .mauritius: return "Mauritius"
        case .mayotte: return "Mayotte"
        case .mexico: return "Mexico"
        case .micronesia: return "Micronesia"
        case .moldova: return "Moldova"
        case .monaco: return "Monaco"
        case .mongolia: return "Mongolia"
        case .montenegro: return "Montenegro"
        case .montserrat: return "Montserrat"
        case .morocco: return "Morocco"
        case .mozambique: return "Mozambique"
        case .myanmar: return "Myanmar"
        case .namibia: return "Namibia"
        case .nauru: return "Nauru"
        case .nepal: return "Nepal"
        case .netherlands: return "Netherlands"
        case .netherlandsAntilles: return "Netherlands Antilles"
        case .newCaledonia: return "New Caledonia"
        case .newZealand: return "New Zealand"
        case .nicaragua: return "Nicaragua"
        case .niger: return "Niger"
        case .nigeria: return "Nigeria"
        case .niue: return "Niue"
        case .norfolkIsland: return "Norfolk Island"
        case .northernMarianaIslands: return "Northern Mariana Islands"
        case .norway: return "Norway"
        case .oman: return "Oman"
        case .pakistan: return "Pakistan"
        case .palau: return "Palau"
        case .palestine: return "Palestine"
        case .panama: return "Panama"
        case .papuaNewGuinea: return "Papua New Guinea"
        case .paraguay: return "Paraguay"
        case .peru: return "Peru"
        case .philippines: return "Philippines"
        case .pitcairn: return "Pitcairn"
        case .poland: return "Poland"
        case .portugal: return "Portugal"
        case .puertoRico: return "Puerto Rico"
        case .qatar: return "Qatar"
        case .reunion: return "Reunion"
        case .romania: return "Romania"
        case .russianFederation: return "Russian Federation"
        case .rwanda: return "Rwanda"
        case .saintHelena: return "Saint Helena"
        case .saintKittsAndNevis: return "Saint Kitts and Nevis"
        case .saintLucia: return "Saint Lucia"
        case .saintPierreAndMiquelon: return "Saint Pierre and Miquelon"
        case .saintVincentAndTheGrenadines: return "Saint Vincent and The Grenadines"
        case .samoa: return "Samoa"
        case .sanMarino: return "San Marino"
        case .saoTomeAndPrincipe: return "Sao Tome and Principe"
        case .saudiArabia: return "Saudi Arabia"
        case .senegal: return "Senegal"
        case .serbia: return "Serbia"
        case .seychelles: return "Seychelles"
        case .sierraLeone: return "Sierra Leone"
        case .singapore: return "Singapore"
        case .slovakia: return "Slovakia"
        case .slovenia: return "Slovenia"
        case .solomonIslands: return "Solomon Islands"
        case .somalia: return "Somalia"
        case .southAfrica: return "South Africa"
        case .southGeorgiaAndTheSouthSandwichIslands: return "South Georgia and The South Sandwich Islands"
        case .spain: return "Spain"
        case .sriLanka: return "Sri Lanka"
        case .sudan: return "Sudan"
        case .suriname: return "Suriname"
        case .svalbardAndJanMayen: return "Svalbard and Jan Mayen"
        case .swaziland: return "Swaziland"
        case .sweden: return "Sweden"
        case .switzerland: return "Switzerland"
        case .syrianArabRepublic: return "Syrian Arab Republic"
        case .taiwan: return "Taiwan"
        case .tajikistan: return "Tajikistan"
        case .tanzania: return "Tanzania"
        case .thailand: return "Thailand"
        case .timorleste: return "Timorleste"
        case .togo: return "Togo"
        case .tokelau: return "Tokelau"
        case .tonga: return "Tonga"
        case .trinidadAndTobago: return "Trinidad and Tobago"
        case .tunisia: return "Tunisia"
        case .turkey: return "Turkey"
        case .turkmenistan: return "Turkmenistan"
        case .turksAndCaicosIslands: return "Turks and Caicos Islands"
        case .tuvalu: return "Tuvalu"
        case .uganda: return "Uganda"
        case .ukraine: return "Ukraine"
        case .unitedArabEmirates: return "United Arab Emirates"
        case .unitedStatesMinorOutlyingIslands: return "United States Minor Outlying Islands"
        case .uruguay: return "Uruguay"
        case .uzbekistan: return "Uzbekistan"
        case .vanuatu: return "Vanuatu"
        case .venezuela: return "Venezuela"
        case .vietNam: return "Viet Nam"
        case .virginIslandsUK: return "British Virgin Islands"
        case .virginIslandsUS: return "United States Virgin Islands"
        case .wallisAndFutuna: return "Wallis and Futuna"
        case .westernSahara: return "Western Sahara"
        case .yemen: return "Yemen"
        case .zambia: return "Zambia"
        case .zimbabwe: return "Zimbabwe"
        case .allCountries: return "All Countries"
        }
    }
}
