//
//  SignUp.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/20.
//

import SwiftUI

struct SignUp: View {

    @ObservedObject var viewModel = SignUpViewModel()
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack{
            Text("名刺作成アプリ(仮)")
                .font(.system(size: 25))
                .frame(width: 255, height: 23)
                .padding(.bottom, 59)

            TextField("ユーザ名", text: $viewModel.username)
                .authForms()
                .padding(.bottom, 10)
                .textInputAutocapitalization(.never)

            TextField("メールアドレス", text: $viewModel.email)
                .authForms()
                .padding(.bottom, 10)
                .textInputAutocapitalization(.never)

            SecureField("パスワード(6字以上)", text: $viewModel.password)
                .authForms()
                .padding(.bottom, 59)
                .textInputAutocapitalization(.never)

            Text(viewModel.errorMsg)
                .foregroundColor(.red)

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
                viewModel.isValidated(isSignUp: true)
                viewModel.signUp()
            }) {
                Text("登録")
            }

        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Text("← ログイン画面")
                }
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
