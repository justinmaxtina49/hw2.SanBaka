//
//  liverRow.swift
//  hw2.SanBaka
//
//  Created by WeiMing on 2020/4/11.
//  Copyright © 2020 WeiMing. All rights reserved.
//

import SwiftUI

struct liverRow: View {
    
    let liver: Liver
    var body: some View {
        ZStack {
            Color(liver.color)
            VStack {
                Image(liver.visual)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(100)
                    .frame(width: 350)
                    .shadow(radius: 10)
                Text(liver.name)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    //.padding(.top, -40.0)
            }
        }
        .frame(width:360, height:670)
    }
}

struct liverRow_Previews: PreviewProvider {
    static var previews: some View {
        liverRow(liver: Liver(name:"戌亥 とこ", color: "toko_color", tachie: "toko_tachie", visual: "toko_visual", ch_name: "", official_introduction: "", character: ""))
            .previewLayout(.sizeThatFits)
    }
}
