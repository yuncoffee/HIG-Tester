//
//  AccessibilityView.swift
//  HIG-Tester
//
//  Created by Yun Dongbeom on 2023/07/04.
//

import SwiftUI

struct AccessibilityView: View {
    var staticHapic = StaticHaptic()
    
    var body: some View {
        Text("hello")
            .onAppear {
                print(StaticHaptic.myValue )
                StaticHaptic.myValue = 10
                print(StaticHaptic.myValue)
                print("============")
                print(SingletoneHaptic.shared.myValue)
                SingletoneHaptic.shared.myValue = 20
                print(SingletoneHaptic.shared.myValue)
                print(staticHapic.myInstacneValue)
                print(StaticHaptic().myInstacneValue)
                print("============")
                print(SingletoneHaptic.shared.myInstacneValue)
                print(staticHapic.myInstacneValue)
                staticHapic.myInstacneValue = StaticHaptic.myValue
                print(staticHapic.myInstacneValue)
                print("============")
                print(ClassInHaptic.myValue)
                print(ClassInHaptic.shared.myInstanceValue)
                ClassInHaptic.myValue = 30
                print(ClassInHaptic.shared.myInstanceValue)
                ClassInHaptic.shared.myInstanceValue = 50
                print(ClassInHaptic.shared.myInstanceValue)
            }
    }
}

struct AccessibilityView_Previews: PreviewProvider {
    static var previews: some View {
        AccessibilityView()
    }
}
