//
//  ContentView.swift
//  HIG-Tester
//
//  Created by Yun Dongbeom on 2023/06/18.
//

import SwiftUI

struct ContentView: View {
    @ScaledMetric(relativeTo: .largeTitle) private var spacing: CGFloat = 20.0
    
    var body: some View {
//        HigImageView()
        //        TypographyView()
        AccessibilityView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
