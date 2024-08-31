//
//  SegmentControl.swift
//  story
//
//  Created by Ramandeep Singh on 30/08/24.
//

import SwiftUI

struct SegmentControl: View {
    @Binding var selectedTab: Tab
    var body: some View {
        ScrollViewReader{ proxy in
            ScrollView(.horizontal,showsIndicators: false){
                HStack (spacing: 10){
                    ForEach(Tab.allCases, id: \.self){ tab in
                        Text(tab.rawValue.capitalized)
                            .id(tab.rawValue)
                            .font(.callout)
                            .padding()
                            .background( selectedTab == tab  ? .gray.opacity(0.2) : .clear )
                            .foregroundColor(selectedTab == tab ? .primary : .secondary)
                            .clipShape(Capsule())
                            .onTapGesture {
                                withAnimation{
                                    selectedTab = tab
                                    proxy.scrollTo(tab.rawValue,anchor:.center)
                                }
                            }
                    }
                }
                .padding()
            }
        }

    }
}

#Preview {
    SegmentControl(selectedTab: .constant(.all) )
}


enum Tab: String, CaseIterable{
    case all = "all"
    case fiction = "fiction"
    case mystery = "mystery"
    case romance = "romance"
    case action = "action"
    case comedy = "comedy"
}
