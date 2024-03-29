//
//  Favorites.swift
//  iDine
//
//  Created by Reinaldo Villanueva Javierre on 24/10/2019.
//  Copyright © 2019 Reinaldo Villanueva Javierre. All rights reserved.
//

import SwiftUI

class Favorites: ObservableObject {
    @Published var items = [MenuItem]()

    var total: Int {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }

    func add(item: MenuItem) {
        items.append(item)
    }

    func remove(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }

    func contains(item: MenuItem) -> Bool {
        return items.contains(item)
    }
}
