//
//  DonationTypeView.swift
//  vk-11-09
//
//  Created by milkyway on 11.09.2020.
//  Copyright © 2020 belotserkovtsev. All rights reserved.
//

import SwiftUI

struct DonationTypeView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        DonationTypeContentView()
        .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:Button(action : {
                self.mode.wrappedValue.dismiss()
            }){
                Image("arrow")
            }, trailing: NavigationBarButtonsView())
    }
}

struct DonationTypeContentView: View {
    var body: some View {
        VStack(spacing: 12) {
            ZStack {
                OptionOfDonationRectangleView()
                NavigationLink(destination: GoalDonationView()
                    .navigationBarTitle(Text("Целевой сбор")), label: {
                    HStack(spacing: 14) {
                        Image("8627_Icon")
                            .foregroundColor(Color("IconsColor"))
                            .padding(.top, 14)
                            .frame(width: 24, height: 62, alignment: .top)
                        
                        HStack(spacing: .zero) {
                            VStack (alignment: .leading, spacing: 2){
                                Text("Целевой сбор")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundColor(.black)
                                Text("Когда есть определенная цель")
                                    .font(.system(size: 13, weight: .regular))
                                    .foregroundColor(Color("GrayText2"))
                            }
                            Spacer()
                            Image("right_arrow")
                                .foregroundColor(Color("GrayText3"))
                                .padding(.trailing, 13)
                        }
                    }
                        .padding(.leading, 14)
                        .frame(width: 351, height: 62, alignment: .leading)
                })
            }
            
            ZStack {
                OptionOfDonationRectangleView()
                NavigationLink(destination: RegularDonationView()
                    .navigationBarTitle(Text("Целевой сбор")), label: {
                    HStack(spacing: 14) {
                        Image("calendar_outline_28__event")
                            .foregroundColor(Color("IconsColor"))
                            .padding(.top, 14)
                            .frame(width: 24, height: 62, alignment: .top)
                        
                        HStack(spacing: .zero) {
                            VStack (alignment: .leading, spacing: 2){
                                Text("Регулярный сбор")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundColor(.black)
                                Text("Если помощь нужна ежемесячно")
                                    .font(.system(size: 13, weight: .regular))
                                    .foregroundColor(Color("GrayText2"))
                            }
                            Spacer()
                            Image("right_arrow")
                                .foregroundColor(Color("GrayText3"))
                                .padding(.trailing, 13)
                        }
                    }
                        .padding(.leading, 14)
                        .frame(width: 351, height: 62, alignment: .leading)
                })
            }
        }
    }
}

struct OptionOfDonationRectangleView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 0.33)
                .foregroundColor(.black)
                .opacity(0.08)
            RoundedRectangle(cornerRadius: 10)
            .foregroundColor(Color("GrayButton"))
        }
        .frame(width: 351, height: 62)
    }
}

struct DonationTypeView_Previews: PreviewProvider {
    static var previews: some View {
        DonationTypeView()
    }
}
