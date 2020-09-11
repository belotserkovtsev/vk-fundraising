//
//  ContentView.swift
//  vk-11-09
//
//  Created by milkyway on 11.09.2020.
//  Copyright © 2020 belotserkovtsev. All rights reserved.
//

import SwiftUI

struct CreateDonationView: View {
    var body: some View {
        NavigationView {
            CreateDonationContentView()
                .navigationBarTitle(Text("Пожертвования"), displayMode: .inline)
                .navigationBarItems(trailing: NavigationBarButtonsView())
        }
    }
}

struct CreateDonationContentView: View {
    var body: some View {
        VStack(spacing: .zero) {
            
            Text("У Вас пока нет сборов.\nНачните доброе дело.")
                .foregroundColor(Color("GrayText"))
                .font(.system(size: 16))
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("LightButton"))
                NavigationLink(destination: DonationTypeView()
                    .navigationBarTitle(Text("Тип сбора")), label: {
                        Text("Создать сбор")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    })
            }
            .frame(width: 133 ,height: 36)
            .padding(24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CreateDonationView()
    }
}
