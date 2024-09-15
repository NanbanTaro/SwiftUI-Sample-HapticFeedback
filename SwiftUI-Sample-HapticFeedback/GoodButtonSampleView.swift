//
//  GoodButtonSampleView.swift
//  SwiftUI-Sample-HapticFeedback
//
//  Created by NanbanTaro on 2024/09/15.
//  
//

import SwiftUI

struct GoodButtonSampleView: View {

    @State var isGood = false

    var body: some View {
        Button {
            isGood.toggle()
        } label: {
            Image(systemName: isGood ? "hand.thumbsup" : "hand.thumbsup.fill")
                .renderingMode(.template)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(.yellow)
                .symbolEffect(.bounce, options: .repeat(1), value: isGood)
        }
        .sensoryFeedback(.impact, trigger: isGood)
    }
}

#Preview {
    GoodButtonSampleView()
}
