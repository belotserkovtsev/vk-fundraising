//
//  GoalDonationView.swift
//  vk-11-09
//
//  Created by milkyway on 11.09.2020.
//  Copyright © 2020 belotserkovtsev. All rights reserved.
//

import SwiftUI

struct GoalDonationView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        GoalDonationContentView()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image("arrow")
        }, trailing: NavigationBarButtonsView())
    }
}

struct GoalDonationContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                AddImageView()
                    .padding(.bottom, 26)
                    .padding(.top, 12)
                FieldAddInfoView(topText: "Название сбора", insideText: "Название сбора")
                .padding(.bottom, 26)
                FieldAddInfoView(topText: "Сумма, ₽", insideText: "Сколько нужно собрать?")
                .padding(.bottom, 26)
                FieldAddInfoView(topText: "Цель", insideText: "Например, лечение человека")
                .padding(.bottom, 26)
                FieldAddInfoBiggerView(topText: "Описание", insideText: "На что пойдут деньги и как они кому-то помогут")
                .padding(.bottom, 26)
                FieldAddInfoView(topText: "Куда получать деньги", insideText: "Счет VK Pay • 1234", colorOfTextInside: .black, addArrow: true)
                .padding(.bottom, 24)
    //                        Spacer()
                NavigationLink(destination: AdditionalSettingsView()
                    .navigationBarTitle(Text("Оформление")), label: {
                    NextButtonView()
                })
                    .padding(.bottom, 22)
            }.padding()
        }
    }
}

struct AddImageView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
            .stroke(lineWidth: 1)
            .frame(width: 351, height: 140)
            HStack(spacing: 11) {
                Image("image_icon")
                Text("Загрузить обложку")
                    .font(.system(size: 16, weight: .medium))
                    
            }
        }.foregroundColor(Color("IconsColor"))
    }
}

struct GoalDonationView_Previews: PreviewProvider {
    static var previews: some View {
        GoalDonationView()
    }
}
