//
//  SwiftUIView.swift
//  FMovie
//
//  Created by Fahreddin Hepdonduran on 7.08.2023.
//

import SwiftUI

struct TabbedView: View {
    
    @State var selectedTabIndex: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTabIndex) {
                HomeView()
                    .tag(0)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .edgesIgnoringSafeArea(.all)
            
            ZStack {
                HStack(spacing: 0.0) {
                    ForEach(TabItems.allCases, id: \.self) { item in
                        Button {
                            selectedTabIndex = item.itemIndex
                        } label: {
                            VStack {
                                Image(
                                    item.itemIndex == selectedTabIndex ?
                                    item.selectedIconName : item.unselectedIconName
                                )

                                Text(item.title)
                                    .foregroundColor(
                                        item.itemIndex == selectedTabIndex ?
                                            .red : .white
                                    )
                            }

                        }
                        .frame(
                            width: UIScreen.main.bounds.size.width / 4,
                            height: 60.0
                        )
                        .background(
                            Color("tabbar-background")
                        )
                    }
                }
                .background(Color.clear)
            }
        }
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
