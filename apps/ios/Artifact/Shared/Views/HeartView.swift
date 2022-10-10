//
//  HeartView.swift
//

import SwiftUI

struct HeartView: View {
    @EnvironmentObject private var heartProvider: HeartProvider
    
    var body: some View {
        VStack {
            Text("\(heartProvider.state.bpm)")
            ForEach(heartProvider.state.rr, id: \.self) {rr in
                    Text("\(rr)")
            }
            Text("\(heartProvider.state.df)")
        }
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        HeartView()
    }
}
