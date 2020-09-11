//
//  Additional.swift
//  vk-11-09
//
//  Created by milkyway on 11.09.2020.
//  Copyright © 2020 belotserkovtsev. All rights reserved.
//

import SwiftUI

struct AdditionalSettingsView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        AdditionalSettingsContentView()
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image("arrow")
        }, trailing: NavigationBarButtonsView())
    }
}

struct AdditionalSettingsContentView: View {
    
    var body: some View {
        VStack(spacing: .zero) {
            FieldAddInfoView(topText: "Автор", insideText: "Матвей правосудов", colorOfTextInside: .black, addArrow: true)
            .padding(.bottom, 24)
            
            VStack(alignment: .leading, spacing: .zero) {
                Text("Сбор завершится")
                    .foregroundColor(Color("GrayText2"))
                    .font(.system(size: 14, weight: .regular))
                    .padding(.bottom, 19)
                
                CheckBoxView()
                    .padding(.bottom, 37)
            }
            .frame(width: 351, alignment: .leading)
            .padding(.leading, 13)
            
            FieldAddInfoView(topText: "Дата окончания", insideText: "20 сентября", colorOfTextInside: .black, addArrow: true)
            .padding(.bottom, 24)
            
             Spacer()
            
            NavigationLink(destination: SnippetView()
                .navigationBarTitle(Text("Сниппет")), label: {
                NextButtonView(text: "Создать сбор")
                .padding(.bottom, 22)
            })
        }
        
    }
}

struct CheckBoxView: View {
    @State var first = true {
        willSet {
            if newValue {
                second = false
            }
        }
    }
    @State var second = false {
        willSet {
            if newValue {
                first = false
            }
        }
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 22) {
            HStack(spacing: 13) {
                ZStack {
                    Circle()
                    .stroke(lineWidth: 1)
                    .foregroundColor(self.first ? Color("IconsColor"): Color("GrayText3"))
                    .frame(width: 22, height: 22)
                    .onTapGesture {
                        self.first = true
                    }
                    if self.first {
                        Circle()
                        .foregroundColor(self.first ? Color("IconsColor") : Color("GrayText3"))
                        .frame(width: 16, height: 16)
                        .onTapGesture {
                            self.first = true
                        }
                    }
                }
                Text("Когда соберем сумму")
            }
            
            HStack(spacing: 13) {
                ZStack {
                    Circle()
                    .stroke()
                    .foregroundColor(self.second ? Color("IconsColor") : Color("GrayText3"))
                    .frame(width: 22, height: 22)
                    .onTapGesture {
                        self.second = true
                    }
                    if self.second {
                        Circle()
                        .foregroundColor(self.second ? Color("IconsColor") : Color("GrayText3"))
                        .frame(width: 16, height: 16)
                        .onTapGesture {
                            self.first = true
                        }
                    }
                }
                Text("В определенную дату")
            }
        }
    }
}

struct Additional_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalSettingsView()
    }
}
