//
//  OrderView.swift
//  iDine
//
//  Created by Reinaldo Villanueva Javierre on 23/10/2019.
//  Copyright © 2019 Reinaldo Villanueva Javierre. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        NavigationView {
            List {

                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }

                Section {
                    NavigationLink(destination: Text("CheckOut")) {
                        Text("Place Order")
                    }
                }

            }
                .navigationBarTitle("Order")
                .listStyle(GroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()

    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
