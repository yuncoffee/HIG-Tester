//
//  TypographyView.swift
//  HIG-Tester
//
//  Created by Yun Dongbeom on 2023/06/18.
//

import SwiftUI

struct TypographyView: View {
    @ScaledMetric(relativeTo: .largeTitle) private var spacing: CGFloat = 20.0
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                TrackingView()
                AllowTightingView()
                LeadingView()
                DesignFontView()
                StylingFontView()
                WidthFontView()
                WeightFontView()
            }
            .padding(spacing)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        
    }
}

extension TypographyView {
    // MARK: tracking
    func TrackingView() -> some View {
        VStack(alignment: .leading) {
            Text("Hello, world!")
                .font(.largeTitle)
                .border(.red)
            Text("Hello, world!")
                .font(.largeTitle)
                .tracking(-0.5)
                .border(.red)
            Text("Hello, world!")
                .font(.largeTitle)
                .tracking(1)
                .border(.red)
        }
    }
    
    // MARK: Tighting
    func AllowTightingView() -> some View {
        VStack(alignment: .leading) {
            Text("Hello, world! Hello, world! Hello, world! Hello, world! 안녕")
                .font(.largeTitle)
                .frame(width: 200, height: 50, alignment: .leading)
                .lineLimit(1)
                .border(.red)
            Text("Hello, world! Hello, world! Hello, world! Hello, world! 안녕")
                .font(.largeTitle)
                .frame(width: 200, height: 50, alignment: .leading)
                .lineLimit(1)
                .allowsTightening(true)
                .border(.red)
            Text("Hello, world! Hello, world! Hello, world! Hello, world! 안녕")
                .font(.largeTitle)
                .frame(width: 300, height: 50, alignment: .leading)
                .lineLimit(1)
                .allowsTightening(true)
                .border(.red)
            Text("Hello, world! Hello, world! Hello, world! Hello, world! 안녕")
                .font(.largeTitle)
                .frame(width: 300, height: 50, alignment: .leading)
                .lineLimit(1)
                .allowsTightening(false)
                .border(.red)
        }
    }
    
    // MARK: Leading
    func LeadingView() -> some View {
        VStack(alignment: .leading) {
            Text("Hello, world! Hello, world! Hello, world! Hello, world!")
                .font(.largeTitle.leading(.tight))
                .border(.red)
            Text("Hello, world! Hello, world! Hello, world! Hello, world!")
                .font(.largeTitle.leading(.standard))
                .border(.red)
            Text("Hello, world! Hello, world! Hello, world! Hello, world!")
                .font(.largeTitle.leading(.loose))
                .border(.red)
        }
    }
    
    // MARK: Design
    func DesignFontView() -> some View {
        let roundedLargeTitleFont = Font.system(.largeTitle, design: .rounded)
        let serifLargeTitleFont = Font.system(.largeTitle, design: .serif)
        let monospacedLargeTitleFont = Font.system(.largeTitle, design: .monospaced)
        let noneLargeTitleFont = Font.system(.largeTitle, design: .none)
        let defaultLargeTitleFont = Font.system(.largeTitle, design: .default)
        return VStack(alignment: .leading) {
            Text("Hello, world!")
                .font(defaultLargeTitleFont)
                .border(.red)
            Text("Hello, world! 안녕")
                .font(roundedLargeTitleFont)
                .border(.red)
            Text("Hello, world! 안녕")
                .font(serifLargeTitleFont)
                .border(.red)
            Text("Hello, world!")
                .font(monospacedLargeTitleFont)
                .border(.red)
            Text("Hello, world!")
                .font(noneLargeTitleFont)
                .border(.red)
        }
    }
    
    // MARK: Custom
    func CustomFontView() -> some View {
        let defaultLargeTitleFont = Font.system(.largeTitle, design: .default)
        return VStack(alignment: .leading) {
            Text("Hello, world!")
                .font(defaultLargeTitleFont)
                .border(.red)
            Text("Typography").font(.custom("Avenir-Roman", size: 34, relativeTo: .title))
            Text("Title").font(.custom("Helvetica", size: 17))
            Text("Fixed").font(.custom("Courier", fixedSize: 17))
        }
    }
    
    // MARK: Styling
    func StylingFontView() -> some View {
        let defaultLargeTitleFont = Font.system(.largeTitle, design: .default)
        return VStack(alignment: .leading) {
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont)
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.bold())
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.italic())
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.monospaced())
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.lowercaseSmallCaps())
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.monospacedDigit())
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.smallCaps())
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.uppercaseSmallCaps())
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.black))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.width(.compressed))
                .border(.red)
        }
    }
    
    // MARK: Weight
    func WeightFontView() -> some View {
        let defaultLargeTitleFont = Font.system(.largeTitle, design: .default)
        return VStack(alignment: .leading) {
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.black))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.heavy))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.bold))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.semibold))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.medium))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.regular))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.light))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.thin))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.weight(.ultraLight))
                .border(.red)
        }
    }
    
    // MARK: Width
    func WidthFontView() -> some View {
        let defaultLargeTitleFont = Font.system(.largeTitle, design: .default)
        return VStack(alignment: .leading) {
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.width(.standard))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.width(.compressed))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.width(.condensed))
                .border(.red)
            Text("Hello, world! 안녕")
                .font(defaultLargeTitleFont.width(.expanded))
                .border(.red)
        }
    }
}

struct TypographyView_Previews: PreviewProvider {
    static var previews: some View {
        TypographyView()
    }
}

