//
//  SignUp.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/20.
//

import SwiftUI

struct SignUp: View {

    @State var email: String = ""
    @State var passward: String = ""

    var body: some View {
        VStack{
            Text("名刺作成アプリ(仮)")
                .font(.system(size: 25))
                .frame(width: 255, height: 23)
                .padding(.bottom, 59)

            TextField("email", text: $email)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 0)
                )
                .background(Color(UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1).cgColor).cornerRadius(15))
                .padding(.horizontal, 113)
                .padding(.bottom, 29)

            SecureField("passward", text: $passward)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 0)
                )
                .background(Color(UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1).cgColor).cornerRadius(15))
                .padding(.horizontal, 113)
                .padding(.bottom, 59)

            HStack {
                Group {
                    Image(systemName: "apple.logo")
                        .foregroundColor(.white)
                    Text("Appleでログイン")
                        .foregroundColor(.white)
                        .font(.system(size: 10))
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)

            }
            .background(Color.black.cornerRadius(5))
            .padding(.bottom, 18)
            .frame(width: 200, height: 25)


            HStack {
                Group {
                    Image("googlelogo")
                        .resizable()
                        .frame(width: 18, height: 18)
                    Text("Googleでログイン")
                        .foregroundColor(.white)
                        .font(.system(size: 10))
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)

            }
            .background(Color.blue.cornerRadius(5))
            .padding(.bottom, 18)
            .frame(width: 210, height: 50)

            Button(action: {}) {
                Text("登録")
            }

        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
