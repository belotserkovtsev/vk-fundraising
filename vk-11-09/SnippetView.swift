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
        ZStack{
            RoundedRectangle(cornerRadius: 10)
            .stroke()
            .opacity(0.08)
            
            
            
            
            VStack(spacing: .zero){
                Image("cat")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 359)
                    .cornerRadius(10, corners: [.topLeft, .topRight])
                    .padding(.bottom, 8)
//                Spacer()
                HStack(spacing: .zero) {
                    Text("Добряши помогают котикам")
                        .padding(.leading, 12)
                    .font(.system(size: 15, weight: .semibold))
                    Spacer()
                }
                HStack(spacing: .zero) {
                    Text("Матвей Правосудов • Закончится через 5 дней")
                    .foregroundColor(Color("GrayText2"))
                        .font(.system(size: 13, weight: .regular))
                        .padding(.leading, 12)
                        .padding(.bottom, 8)
                    Spacer()
                }
                Divider()
                    .frame(width: 335)
                    .padding(.bottom, 11.5)
                
                DonationInfoView()
//                Spacer()
            }

            
            
            
        }.frame(width: 359, height: 140+106, alignment: .leading)
            
    }
    
}

struct DonationInfoView: View {
    var body: some View {
        HStack(spacing: .zero) {
            VStack(spacing: .zero) {
                HStack(spacing: .zero) {
                    Text("Собрано 8 750 ₽ из 10 000 ₽").font(.system(size: 13, weight: .regular))
                        .padding(.leading, 12)
                        .padding(.bottom, 8)
                    Spacer()
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                    .opacity(0.3)
                    .foregroundColor(Color("LightButton2"))
                    .frame(width: 237, height: 4)
                    .padding(.leading, 12)
                    
                    HStack(spacing: .zero) {
                        RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color("LightButton2"))
                        .frame(width: 190, height: 4)
                        .padding(.leading, 12)
                            
                        
                        Spacer()
                    }
                }.padding(.bottom, 14)
            }
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                .stroke()
                Text("Помочь")  
                    .font(.system(size: 14, weight: .medium))
            }
            .foregroundColor(Color("LightButton2"))
            .frame(width: 86, height: 30)
            .padding(.trailing, 12)
            .padding(.bottom, 12)
        }
    }
}


struct SnippetView_Previews: PreviewProvider {
    static var previews: some View {
        SnippetView()
    }
}
