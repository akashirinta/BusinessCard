//
//  CreateView.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2022/12/29.
//

import SwiftUI

struct CreateView: View {

    @State private var image: UIImage?
    @State var showingImagePicker = false
    @State var name: String = ""
    @State var furigana: String = ""
    @State var organizationName: String = ""
    @State var mailaddress: String = ""
    @State var phoneNumber: String = ""
    @State var address: String = ""
    @State var twitter: String = ""
    @State var Instagram: String = ""

    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    if let uiImage = image {
                        Image(uiImage: uiImage)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    } else {
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    }
                    Spacer().frame(height: 32)
                    Button(action: {
                        showingImagePicker = true
                    }) {
                        Text("フォトライブラリから選択")
                    }
                }
                .sheet(isPresented: $showingImagePicker) {
                    ImagePicker(sourceType: .photoLibrary, selectedImage: $image)
                }
                Spacer()
                    .frame(height: 75)


                Group {
                    // 必須項目
                    Text("名前")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $name)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("ふりがな")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $furigana)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("学校/会社名")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $organizationName)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)
                }

                Group {
                    // 任意項目
                    Text("メールアドレス")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $mailaddress)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("電話番号")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $phoneNumber)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("住所")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $address)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("Twitter")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $twitter)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("Instagram")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $Instagram)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)
                }

                Button(action: {}, label: {
                    Text("確認")
                        .frame(width: 291, height: 46, alignment: .center)
                        .background(Color(UIColor(red: 0.075, green: 0.775, blue: 0.996, alpha: 1).cgColor))
                        .foregroundColor(.white)
                        .cornerRadius(50.0)

                })


            }
        }

    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
