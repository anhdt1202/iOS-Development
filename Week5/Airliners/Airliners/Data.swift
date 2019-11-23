//
//  Data.swift
//  Airliners
//
//  Created by AnhDT on 11/23/19.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation
import UIKit

enum airplanesModel {
    case a707, a717, a727, a737, a747, a757, a767, a777, a787
    
    var name: String{
        let boeing = "The Boeing "
        switch self {
        case .a707:
            return boeing + "707"
        case .a717:
            return boeing + "717"
        case .a727:
            return boeing + "727"
        case .a737:
            return boeing + "737"
        case .a747:
            return boeing + "747"
        case .a757:
            return boeing + "757"
        case .a767:
            return boeing + "767"
        case .a777:
            return boeing + "777"
        case .a787:
            return boeing + "787"
        }
    }
    var shortInfo: String{
        switch self {
        case .a707:
            return "Mid-sized, mid- to long-range, narrow-body, four-engine jet airliner"
        case .a717:
            return "Twin-engine, single-aisle"
        case .a727:
            return "Midsized, narrow-body three-engined"
        case .a737:
            return "Twin‑engine, single aisle, short- to medium-range narrow-body"
        case .a747:
            return "Heavy, four‑engine, partial double deck, twin–aisle main deck, single–aisle upper deck, medium- to long-range widebody"
        case .a757:
            return "Mid-sized, narrow-body short to medium range, twin-engine"
        case .a767:
            return "Heavy, twin-engine, twin aisle, medium- to long-range widebody"
        case .a777:
            return "Heavy, twin-engine, twin aisle, medium- to long-range, ultra long-range (200LR), widebody"
        case .a787:
            return "Heavy, twin-engine, twin aisle, long-range widebody"
        }
    }
    var longDescriptin: String {
        switch self {
        case .a707:
            return "The Boeing 707 is an American mid-sized, mid- to long-range, narrow-body, four-engine jet airliner built by Boeing Commercial Airplanes from 1958 to 1979. Versions of the aircraft have a capacity from 140 to 219 passengers and a range of 2,500 to 5,750 nautical miles (2,880 to 6,620 mi; 4,630 to 10,650 km)."
        case .a717:
            return "The Boeing 717 is a twin-engine, single-aisle jet airliner, developed for the 100-seat market. The airliner was designed and originally marketed by McDonnell Douglas as the MD-95, a derivative of the DC-9 family. Capable of seating up to 134 passengers, the 717 has a design range of 2,060 nautical miles (3,820 km). It is powered by two Rolls-Royce BR715 turbofan engines mounted at the rear of the fuselage."
        case .a727:
            return "The Boeing 727 is an American midsized, narrow-body three-engined jet aircraft built by Boeing Commercial Airplanes from the early 1960s to 1984. It can carry 149 to 189 passengers and later models can fly up to 2,700 nautical miles (5,000 km) nonstop. Intended for short and medium-length flights, the 727 can use relatively short runways at smaller airports. It has three Pratt & Whitney JT8D engines below a T-tail, one on each side of the rear fuselage with a center engine that connects through an S-duct to an inlet at the base of the fin. The 727 is the only Boeing trijet,[4] as a commercial design entering production."
        case .a737:
            return "The Boeing 737 is an American short- to medium-range twinjet narrow-body airliner developed and manufactured by Boeing Commercial Airplanes. Originally developed as a shorter, lower-cost twin-engine airliner derived from the 707 and 727, the 737 has developed into a family of several passenger models with capacities from 85 to 215 passengers. The 737 is currently Boeing's only narrow-body airliner, with the 737 Next Generation (-700, -800, and -900ER), and the re-engined and updated 737 MAX variants in production."
        case .a747:
            return "The Boeing 747 is an American wide-body commercial jet airliner and cargo aircraft. The first wide-body airplane produced, it was the first plane dubbed a \"Jumbo Jet\". Its distinctive hump upper deck along the forward part of the aircraft has made it one of the most recognizable aircraft. Manufactured by Boeing's Commercial Airplane unit in the United States, the 747 was originally planned to have 150 percent greater capacity than the Boeing 707, a common large commercial aircraft of the 1960s. First flown commercially in 1970, the 747 held the passenger capacity record for 37 years."
        case .a757:
            return "The Boeing 757 is a mid-sized, narrow-body short to medium range, twin-engine airliner that was designed and built by Boeing Commercial Airplanes. It is the manufacturer's largest single-aisle passenger aircraft and was produced from 1981 to 2004. The twinjet has a two-crew member glass cockpit, turbofan engines of sufficient power to allow takeoffs from relatively short runways and higher altitudes, a conventional tail and, for reduced aerodynamic drag, a supercritical wing design. Intended to replace the smaller three-engine 727 on short and medium routes, the 757 can carry 200 to 295 passengers for a maximum of 3,150 to 4,100 nautical miles (5,830 to 7,590 km), depending on variant. The 757 was designed concurrently with a wide-body twinjet, the 767, and, owing to shared features, pilots can obtain a common type rating that allows them to operate both aircraft."
        case .a767:
            return "The Boeing 767 is a mid- to large-size, mid- to long-range, wide-body twin-engine jet airliner developed and manufactured by Boeing Commercial Airplanes. It was Boeing's first wide-body twinjet and its first airliner with a two-crew glass cockpit. The aircraft has two turbofan engines, a conventional tail, and, for reduced aerodynamic drag, a supercritical wing design. Designed as a smaller wide-body airliner than earlier aircraft such as the 747, the 767 has a seating capacity for 181 to 375 people, and a design range of 3,850 to 6,385 nautical miles (4,431 to 7,348 mi; 7,130 to 11,825 km), depending on variant. Development of the 767 occurred in tandem with a narrow-body twinjet, the 757, resulting in shared design features which allow pilots to obtain a common type rating to operate both aircraft."
        case .a777:
            return "The Boeing 777 is a long-range wide-body twin-engine jet airliner developed and manufactured by Boeing Commercial Airplanes. It is the world's largest twinjet and has a typical seating capacity of 314 to 396 passengers, with a range of 5,240 to 8,555 nautical miles (9,704 to 15,844 km). Commonly referred to as the Triple Seven, its distinguishing features include large-diameter turbofan engines, long raked wings, six wheels on each main landing gear, fully circular fuselage cross-section, and a blade-shaped tail cone. Developed in consultation with eight major airlines, the 777 was designed to replace older wide-body airliners and bridge the capacity difference between Boeing's 767 and 747. As Boeing's first fly-by-wire airliner, it has computer-mediated controls. It was also the first commercial aircraft to be designed entirely with computer-aided design."
        case .a787:
            return "The Boeing 787 Dreamliner is an American long-haul, mid-size wide-body, twin-engine jet airliner manufactured by Boeing Commercial Airplanes. Its variants seat 242 to 330 passengers in typical two-class seating configurations. It is the first airliner with an airframe constructed primarily of composite materials. The 787 was designed to be 20% more fuel-efficient than the Boeing 767, which it was intended to replace. The 787 Dreamliner's distinguishing features include mostly electrical flight systems, raked wingtips, and noise-reducing chevrons on its engine nacelles."
        }
    }
    var detail: [String: String]{
        switch self {
        case .a707:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        case .a717:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        case .a727:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        case .a737:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        case .a747:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        case .a757:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        case .a767:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        case .a777:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        case .a787:
            return [
                Key.nationalOrigin.title: "United States",
                Key.manufacturer.title: "Boeing Commercial Airplanes",
                Key.firstFlight.title: "December 20, 1957",
                Key.produced.title: "1957–1978",
                Key.numberBuilt.title: "865 (excludes Boeing 720s)",
                Key.status.title: "In limited military service"
            ]
        }
    }
    
    var image: UIImage? {
        switch self {
        case .a707:
            return UIImage(named: "B707")
        case .a717:
            return UIImage(named: "B717")
        case .a727:
            return UIImage(named: "B727")
        case .a737:
            return UIImage(named: "B737")
        case .a747:
            return UIImage(named: "B747")
        case .a757:
            return UIImage(named: "B757")
        case .a767:
            return UIImage(named: "B767")
        case .a777:
            return UIImage(named: "B777")
        case .a787:
            return UIImage(named: "B787")
        }
    }
}
enum Key {
    case nationalOrigin, manufacturer, firstFlight, produced, numberBuilt, status
    var title: String {
        switch self {
        case .nationalOrigin:
            return "National Origin"
        case .manufacturer:
            return "Manufacturer"
        case .firstFlight:
            return "First Flight"
        case .produced:
            return "Produced"
        case .numberBuilt:
            return "Number Built"
        case .status:
            return "Status"
        }
    }
}
