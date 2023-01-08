//
//  CreateView.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2022/12/29.
//

import SwiftUI

struct CreateView: View {

    @ObservedObject private var viewModel = CreateViewModel()
    @Binding var tabSelection: Int
    @State var showingImagePicker = false
    @State private var isChecked = false
    @State private var showPreview = false
    @Environment(\.dismiss) var dismiss

    // TODO: データ保存時・別タブに移動したときにデータの内容を初期化する
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        showPreview.toggle()
                    }) {
                        Image(systemName: "eye")
                            .resizable()
                            .frame(width: 40, height: 25)
                    }
                    .sheet(isPresented: $showPreview) {
                        PreviewModal(cardInfo: viewModel.createdCardInfo())
                            .presentationDetents([.medium])
                    }
                    .padding(.trailing, 30)

                }
                VStack {
                    if let uiImage = viewModel.image {
                        Image(uiImage: uiImage)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    } else {
                        Circle()
                            .foregroundColor(Color(UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1).cgColor))
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
                    ImagePicker(sourceType: .photoLibrary, selectedImage: $viewModel.image)
                }
                Spacer()
                    .frame(height: 75)


                Group {
                    // 必須項目
                    HStack(spacing: 10) {
                        Text("名前")
                        Text("※")
                            .foregroundColor(.red)
                    }
                    .frame(width: 327, alignment: .leading)

                    VStack {
                        TextField("", text: $viewModel.name)
                            .textField()
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    HStack(spacing: 10) {
                        Text("ふりがな")
                        Text("※")
                            .foregroundColor(.red)
                    }
                    .frame(width: 327, alignment: .leading)

                    VStack {
                        TextField("", text: $viewModel.furigana)
                            .textField()
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    HStack(spacing: 10) {
                        Text("学校/会社名")
                        Text("※")
                            .foregroundColor(.red)
                    }
                    .frame(width: 327, alignment: .leading)

                    VStack {
                        TextField("", text: $viewModel.organizationName)
                            .textField()
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
                        TextField("", text: $viewModel.mailaddress)
                            .textField()
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("電話番号")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.phoneNumber)
                            .textField()
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("住所")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.address)
                            .textField()
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("Twitter")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.twitter)
                            .textField()
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("Instagram")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.instagram)
                            .textField()
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)
                }

                Button(action: {
                    if viewModel.isvalidatedButton() {
                        viewModel.createCard()
                        tabSelection = 1
                    }

                }) {
                    Text("確認")
                        .frame(width: 291, height: 46, alignment: .center)
                        .background(viewModel.isvalidatedButton()
                                    ? Color(UIColor(red: 0.075, green: 0.775, blue: 0.996, alpha: 1).cgColor)
                                    : Color(UIColor(red: 0.075, green: 0.775, blue: 0.996, alpha: 0.5).cgColor)
                        )
                        .foregroundColor(.white)
                        .cornerRadius(50.0)
                }
            }
        }
    }
}

struct CreateView_Previews: PreviewProvider {

    @State static var selection: Int = 2
    static var previews: some View {
        CreateView(tabSelection: $selection)
    }
}
