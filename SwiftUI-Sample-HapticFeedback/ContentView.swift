//
//  ContentView.swift
//  SwiftUI-Sample-HapticFeedback
//
//  Created by NanbanTaro on 2024/09/15.
//  
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            List {
                NavigationLink("HapticFeedback サンプル一覧") {
                    HapticFeedbackSampleListView()
                }
                NavigationLink("いいねボタンサンプル") {
                    GoodButtonSampleView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
