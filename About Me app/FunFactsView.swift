//
//  FunFactsView.swift
//  About Me app
//
//  Created by Yago Rodi on 21/08/2022.
//

import SwiftUI

struct FunFactsView: View {
    @State private var funFact = ""

    var body: some View {
        VStack{
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            Button("Show random fact") {
                funFact = information.funFacts.randomElement()!
            }
            .padding()
        }
        .padding()
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
