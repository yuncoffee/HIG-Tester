//
//  Accessibility.swift
//  HIG-Tester
//
//  Created by Yun Dongbeom on 2023/07/02.
//

import Foundation

class StaticHaptic {
    static var myValue = 0

    var myInstacneValue = myValue
}

class SingletoneHaptic: ObservableObject {
    static var shared = SingletoneHaptic()

    private init() {

    }

    @Published
    var myValue = 0

    lazy var myInstacneValue = SingletoneHaptic.shared.myValue

}

class ClassInHaptic {
    static var myValue = 0 {
        didSet {
            ClassInHaptic.shared.myInstanceValue = myValue
        }
    }
    static var shared = InnerClass()
    private init() {}

    class InnerClass {
        var myInstanceValue = myValue
    }
}
