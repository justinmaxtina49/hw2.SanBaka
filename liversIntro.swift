//
//  liversIntro.swift
//  hw2.SanBaka
//
//  Created by WeiMing on 2020/4/10.
//  Copyright © 2020 WeiMing. All rights reserved.
//

import SwiftUI

struct liversIntro: View {
    
    @State private var opacity: Double = 0
    @State private var scrollOffsetX = -1200
    
    var body: some View {
        NavigationView {
            List {
                Section(){
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(){
                            ForEach(livers.indices){(item) in
                                NavigationLink(destination: liverDetail(liver: livers[item])){
                                liverRow(liver: livers[item])
                                }
                            }
                        }
                        .offset(x: CGFloat(scrollOffsetX), y: 0)
                        .animation(.easeIn(duration:2))
                    }
                }
                Section(header: Text("一些粉絲的てえてえ二創")) {
                    ForEach(1..<12){(index) in
                        Image("teetee\(index)")
                            .resizable()
                            .scaledToFit()
                            //.frame(width: 400)
                            .shadow(radius: 10)
                    }
                }
            }
            .opacity(opacity)
            .animation(.easeInOut(duration: 2))
            .onAppear {
                self.opacity = 1
                self.scrollOffsetX = 0
            }
            .navigationBarTitle("成員介紹")
        }
        .padding(.top, -7.0)
    }
}

struct liversIntro_Previews: PreviewProvider {
    static var previews: some View {
        liversIntro()
    }
}
