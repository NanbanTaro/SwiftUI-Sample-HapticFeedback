//
//  HapticFeedbackSampleListView.swift
//  SwiftUI-Sample-HapticFeedback
//
//  Created by NanbanTaro on 2024/09/15.
//  
//

import SwiftUI

/// サンプル一覧
struct HapticFeedbackSampleListView: View {

    @State var alignment = false
    @State var decrease = false
    @State var error = false
    @State var impact = false
    @State var increase = false
    @State var levelChange = false
    @State var pathComplete = false
    @State var selection = false
    @State var start = false
    @State var stop = false
    @State var success = false
    @State var warning = false

    var body: some View {
        List {
            Section(header: Text("iOS対応")) {
                Button("success") {
                    success.toggle()
                }
                Button("warning") {
                    warning.toggle()
                }
                Button("error") {
                    error.toggle()
                }
                Button("impact") {
                    impact.toggle()
                }
                Button("increase") {
                    increase.toggle()
                }
                Button("decrease") {
                    decrease.toggle()
                }
                Button("selection") {
                    selection.toggle()
                }
            }
            Section(header: Text("iOS未対応")) {
                Button("alignment") {
                    alignment.toggle()
                }
                Button("levelChange") {
                    levelChange.toggle()
                }
                Button("pathComplete") {
                    pathComplete.toggle()
                }
                Button("start") {
                    start.toggle()
                }
                Button("stop") {
                    stop.toggle()
                }
            }
        }
        .padding()
        .sensoryFeedback(.alignment, trigger: alignment)
        .sensoryFeedback(.decrease, trigger: decrease)
        .sensoryFeedback(.error, trigger: error)
        .sensoryFeedback(.impact, trigger: impact)
        .sensoryFeedback(.increase, trigger: increase)
        .sensoryFeedback(.levelChange, trigger: levelChange)
        .sensoryFeedback(.pathComplete, trigger: pathComplete)
        .sensoryFeedback(.selection, trigger: selection)
        .sensoryFeedback(.start, trigger: start)
        .sensoryFeedback(.stop, trigger: stop)
        .sensoryFeedback(.success, trigger: success)
        .sensoryFeedback(.warning, trigger: warning)
    }
}

#Preview {
    HapticFeedbackSampleListView()
}
