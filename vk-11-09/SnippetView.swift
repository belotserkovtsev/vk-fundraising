//
//  SnippetView.swift
//  vk-11-09
//
//  Created by milkyway on 12.09.2020.
//  Copyright © 2020 belotserkovtsev. All rights reserved.
//

import SwiftUI

struct SnippetView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        SnippetContentView()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image("arrow")
        }, trailing: NavigationBarButtonsView())
    }
}

struct SnippetContentView: View {
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 10)
            .stroke()
            VStack() {
                Image("cat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                HStack {
                    Text("Добряши помогают котикам")
                        .padding(.leading, 12)
                    .font(.system(size: 15, weight: .semibold))
                    Spacer()
                }
                HStack {
                    Text("Матвей Правосудов • Закончится через 5 дней")
                    .foregroundColor(Color("GrayText2"))
                        .font(.system(size: 13, weight: .regular))
                        .padding(.leading, 12)
                        .padding(.bottom, 8)
                    Spacer()
                }
                Divider().frame(width: 270)
            }
        }.frame(width: 359, height: 140+106, alignment: .leading)
            
    }
    
}

struct SnippetView_Previews: PreviewProvider {
    static var previews: some View {
        SnippetView()
    }
}
