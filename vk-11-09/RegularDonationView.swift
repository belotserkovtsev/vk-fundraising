//
//  RegularDonationView.swift
//  vk-11-09
//
//  Created by milkyway on 11.09.2020.
//  Copyright © 2020 belotserkovtsev. All rights reserved.
//

import SwiftUI

struct RegularDonationView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        RegularDonationContentView()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image("arrow")
        }, trailing: NavigationBarButtonsView())
    }
}

struct RegularDonationContentView: View {
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
                    .padding(.bottom, 26)
                FieldAddInfoView(topText: "Автор", insideText: "Матвей правосудов", colorOfTextInside: .black, addArrow: true)
                .padding(.bottom, 24)
    //                        Spacer()
                NextButtonView()
                    .padding(.bottom, 22)
            }.padding()
        }
    }
}

struct RegularDonationView_Previews: PreviewProvider {
    static var previews: some View {
        RegularDonationView()
    }
}
