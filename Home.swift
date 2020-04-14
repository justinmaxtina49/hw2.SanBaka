//
//  Home.swift
//  hw2.SanBaka
//
//  Created by WeiMing on 2020/4/11.
//  Copyright © 2020 WeiMing. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView{
            introView()
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("簡介")
                }
            liversIntro()
                .tabItem{
                    Image(systemName: "person.crop.square.fill")
                    Text("成員介紹")
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
