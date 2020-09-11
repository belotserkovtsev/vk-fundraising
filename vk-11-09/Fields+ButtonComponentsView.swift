import SwiftUI

struct FieldAddInfoView: View {
    var topText: String
    var insideText: String
    var colorOfTextInside: Color
    var addArrow: Bool
    
    @State var nullText = ""
    
    init(topText: String, insideText: String, colorOfTextInside: Color = Color("GrayText"), addArrow: Bool = false) {
        self.topText = topText
        self.insideText = insideText
        self.colorOfTextInside = colorOfTextInside
        self.addArrow = addArrow
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Text(topText)
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color("GrayText2"))
                .padding(.bottom, 8)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.black)
                    .opacity(0.12)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("input_background"))
                    
                HStack(spacing: .zero) {
                    if self.addArrow {
                        Text(insideText)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(colorOfTextInside)
                        .padding(.leading, 12)
                        Spacer()
                        Image("arrow_down")
                            .padding(.trailing, 15)
                            .padding(.top, 19.5)
                            .padding(.bottom, 17.5)
                    } else {
                        ZStack(alignment: .leading) {
                            if nullText.isEmpty {
                                Text(insideText)
                                    .font(.system(size: 16, weight: .regular))
                                    .foregroundColor(colorOfTextInside)
                            }
                            TextField("", text: $nullText)
                            .font(.system(size: 16, weight: .regular))
                        }
//                        TextField(insideText, text: $nullText)
                        
                        .padding(.leading, 12)
                    }
                }
            }.frame(width: 351, height: 44)
        }
    }
}

struct FieldAddInfoBiggerView: View {
    var topText: String
    var insideText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(topText)
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color("GrayText2"))
                .padding(.bottom, 8)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.black)
                    .opacity(0.12)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("input_background"))
                    
                Text(insideText)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(Color("GrayText"))
                    .padding(.leading, 12)
            }.frame(width: 351, height: 64)
        }
    }
}

struct NextButtonView: View {
    var text: String
    
    init(text: String = "Далее") {
        self.text = text
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("IconsColor"))
                .frame(width: 351, height: 44)
            Text(text)
                .foregroundColor(.white)
                .font(.system(size: 17, weight: .medium))
        }
    }
}
