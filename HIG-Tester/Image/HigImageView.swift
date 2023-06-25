//
//  HigImageView.swift
//  HIG-Tester
//
//  Created by Yun Dongbeom on 2023/06/25.
//

import SwiftUI

struct HigImageView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("cat", label: Text("myCat"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .border(.red)
//                Image("Landscape_4")
//                    .frame(width: 300, height: 400, alignment: .topLeading)
//                    .border(.blue)
                Image("Landscape_4")
                    .resizable(capInsets: .init(top: 90, leading: 123, bottom: 80, trailing: 30), resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .imageScale(.small)
                    .frame(width: 300, height: 400)
                    .clipped()
                    .border(.blue)
                Image("tester")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.medium)
                    .frame(width: 300, height: 400)
                    .clipped()
                    .border(.blue)
                Image("tester_2")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.medium)
                    .frame(width: 300, height: 400)
                    .clipped()
                    .border(.blue)
                Image("tester_3")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.medium)
                    .frame(width: 300, height: 400)
                    .clipped()
                    .border(.blue)
                Image("Landscape_4")
                    .resizable(capInsets: .init(top: 90, leading: 123, bottom: 80, trailing: 30), resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .imageScale(.large)
                    .frame(width: 300, height: 400)
                    .clipped()
                    .border(.blue)
                Image("tester_5")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.medium)
                    .frame(width: 300, height: 400)
                    .clipped()
                    .border(.blue)
                Image("tester_5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.medium)
                    .frame(width: 300, height: 400)
                    .clipped()
                    .border(.blue)
                Image("tester_6")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.medium)
                    .frame(width: 300, height: 400)
                    .clipped()
                    .border(.blue)
            }
            .foregroundColor(.green)
        }
    }
}

struct HigImageView_Previews: PreviewProvider {
    static var previews: some View {
        HigImageView()
    }
}
