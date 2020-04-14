//
//  liverDetail.swift
//  hw2.SanBaka
//
//  Created by WeiMing on 2020/4/11.
//  Copyright © 2020 WeiMing. All rights reserved.
//

import SwiftUI

struct liverDetail: View {
    
    let liver: Liver
    @State private var backgroundOffsetY = 500
    @State private var liverOffsetY = -50
    @State private var liverOpacity = 0
    @State private var introductionOffsetY = 300
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("customWhite"),Color(liver.color)]), startPoint: .center, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.bottom)
                .offset(x: 0, y: CGFloat(backgroundOffsetY))
                .animation(.easeInOut(duration: 2))
            Image(liver.tachie)
                .resizable()
                .scaledToFit()
                .frame(height:750.0)
                .offset(x: 0, y: CGFloat(liverOffsetY))
                .opacity(Double(liverOpacity))
                .animation(.easeInOut(duration:3))
            ScrollView(showsIndicators: false){
                VStack {
                    Spacer()
                        .frame(height: 600.0)
                    ZStack {
                        Color("customWhite").opacity(0.7)
                        VStack (alignment:.leading){
                            HStack(alignment: .top){
                                Text("中文譯名：")
                                    .fontWeight(.bold)
                                Text(liver.ch_name)
                            }
                            HStack(alignment: .top){
                                Text("官方介紹：")
                                    .fontWeight(.bold)
                                Text(liver.official_introduction)
                            }
                            HStack(alignment: .top){
                                Text("人物性格：")
                                    .fontWeight(.bold)
                                Text(liver.character)
                            }
                        }
                    }
                    .frame(width: 380)
                    Spacer()
                        .frame(height:100)
                }
                .navigationBarTitle(Text("\(liver.name)"))
            }
            .offset(x: 0, y: CGFloat(introductionOffsetY))
            .animation(.easeInOut(duration:4))
        }
        .onAppear {
            self.backgroundOffsetY = 0
            self.liverOffsetY = 0
            self.liverOpacity = 1
            self.introductionOffsetY = 0
        }
    }
}

struct liverDetail_Previews: PreviewProvider {
    static var previews: some View {
        liverDetail(liver: Liver(name:"戌亥 とこ", color: "toko_color", tachie: "toko_tachie", visual: "toko_visual", ch_name: "戌亥 床", official_introduction: "在冷清的和風茶店打工的女孩子。因為店長的喜好而穿著女僕服裝。\n在腳下若隱若現的尾巴是真的假的，ˇ只有摸過的人才知道。\n在滿月夜晚似乎會發生什麼不可思議之事的樣子。", character: "不是狼人，而是地域犬的化身。頭髮兩側的動物分別叫做\"番\"與\"犬\"。\n經常被認為和同期的兩人一樣住在ヘルエスタ王國，實際上只是普通的住在虛擬世界。\n可愛的外表下卻有著沉穩而獨特的聲線，在直播中淡定的與觀眾聊天互動，偶而奘傻賣乖的情境卻也十分逗趣，對於看不順眼的留言卻也有著一刀兩斷的豪氣，是個集許多反差於一身的人。\n而說到戌亥とこ就不得不提她超一流水準的歌唱實力，請務必欣賞她所演唱的歌曲。"))
    }
}
