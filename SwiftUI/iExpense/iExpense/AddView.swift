//
//  AddView.swift
//  iExpense
//
//  Created by Bryan Angelo on 6/23/20.
//  Copyright © 2020 Bryan Angelo. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
        @State private var type = "Personal"
        @State private var amount = ""

        static let types = ["Business", "Personal"]

        var body: some View {
            NavigationView {
                Form {
                    TextField("Name", text: $name)
                    Picker("Type", selection: $type) {
                        ForEach(Self.types, id: \.self) {
                            Text($0)
                        }
                    }
                    TextField("Amount", text: $amount)
                        .keyboardType(.numberPad)
                }
                .navigationBarTitle("Add new expense")
            }
        }
    }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
