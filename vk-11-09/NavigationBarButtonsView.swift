//
//  NavigationBarButtonsView.swift
//  vk-11-09
//
//  Created by milkyway on 11.09.2020.
//  Copyright © 2020 belotserkovtsev. All rights reserved.
//

import SwiftUI

struct NavigationBarButtonsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color("NavigationButtonGray"))
            .frame(width: 88, height: 32)
            HStack(spacing: .zero) {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                        .padding(14)
                })
                RoundedRectangle(cornerRadius: 0.5)
                    .foregroundColor(.white)
                    .opacity(0.12)
                    .frame(width: 1, height: 24)
                Button(action: {
                    
                }, label: {
                    Image(systemName: "multiply")
                        .foregroundColor(.white)
                        .padding(15.5)
                })
                
            
    
            }
        }
    }
}
