//
//  SignUp.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/20.
//

import SwiftUI

struct SignUp: View {

    @ObservedObject var viewModel = SignUpViewModel()

    var body: some View {
        VStack{
            Text("名刺作成アプリ(仮)")
                .font(.system(size: 25))
                .frame(width: 255, height: 23)
                .padding(.bottom, 59)

            TextField("username", text: $viewModel.username)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 0)
                )
                .background(Color(UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1).cgColor).cornerRadius(15))
                .padding(.horizontal, 113)
                .padding(.bottom, 10)

            TextField("email", text: $viewModel.email)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 0)
                )
                .background(Color(UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1).cgColor).cornerRadius(15))
                .padding(.horizontal, 113)
                .padding(.bottom, 10)

            SecureField("passward", text: $viewModel.password)
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
                    Text("Appleで登録")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
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
                    Text("Googleで登録")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)

            }
            .background(Color.blue.cornerRadius(5))
            .padding(.bottom, 18)
            .frame(width: 210, height: 50)

            Button(action: {
                viewModel.signUp()
            }) {
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
