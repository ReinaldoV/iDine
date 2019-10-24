//
//  ItemDetail.swift
//  iDine
//
//  Created by Reinaldo Villanueva Javierre on 23/10/2019.
//  Copyright © 2019 Reinaldo Villanueva Javierre. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    var item: MenuItem

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }

            Text(item.description).padding()

            Button("Order This") {
                self.order.add(item: self.item)
            }
                .font(.headline)
                .padding(10)
                .padding(.leading, 25)
                .padding(.trailing, 25)
                .foregroundColor(Color(.white))
                .background(Color(.purple))
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.black, lineWidth: 1))
                .shadow(radius: 5)

            Spacer()
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example)
        }
    }
}
