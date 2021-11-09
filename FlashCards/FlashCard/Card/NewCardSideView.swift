//
//  NewCardSideView.swift
//  FlashCards
//
//  Created by Lucca Molon on 03/11/21.
//

import SwiftUI

struct NewCardSideView: View {
    
    let screenSize: CGSize = UIScreen.main.bounds.size
    @State private var title: String = ""
    @State private var text: String = ""
    @State private var sliderValue: Double = 0
    var side: Side
    
    var body: some View {
        VStack {
            if side == .front {
                Text("Front Side")
            } else {
                Text("Back Side")
            }
            HStack {
                Text("Title")
                    .padding(.leading, screenSize.width * 0.03)
                Spacer()
            }
            RoundedRectangle(cornerRadius: 5)
                .stroke(.gray, lineWidth: 1)
                .opacity(0.5)
                .frame(width: screenSize.width * 0.8, height: screenSize.height * 0.03)
                .overlay(
                TextField("Placeholder", text: $title)
                    .padding(.leading, screenSize.width * 0.01)
            )
            HStack {
                Text("Image")
                    .padding(.leading, screenSize.width * 0.03)
                Spacer()
            }
            Button() {
                print("aaaa")
            } label: {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: screenSize.width * 0.8, height: screenSize.height * 0.1)
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .overlay(
                        Text("\(Image(systemName: "photo")) Add Image")
                            .foregroundColor(.black)
                    )
            }
            HStack {
                Text("Description or Question")
                    .padding(.leading, screenSize.width * 0.03)
                Spacer()
            }
            RoundedRectangle(cornerRadius: 5)
                .stroke(.gray, lineWidth: 1)
                .opacity(0.5)
                .frame(width: screenSize.width * 0.8, height: screenSize.height * 0.14)
                .overlay(
                    VStack {
                        TextEditor(text: $text)
                            .lineLimit(nil)
                            .padding([.leading, .top], screenSize.width * 0.01)
                        Spacer()
                    }
                )
            HStack {
                Text("Audio")
                    .padding(.leading, screenSize.width * 0.03)
                Spacer()
            }
            HStack {
                    Button {
                        print("a")
                    } label: {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: screenSize.width * 0.09, height: screenSize.width * 0.09)
                            .foregroundColor(.gray)
                            .opacity(0.5)
                            .overlay(
                                Image(systemName: "mic")
                                    .foregroundColor(.black)
                            )
                    }
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: screenSize.width * 0.68, height: screenSize.width * 0.09)
                        .foregroundColor(.gray)
                        .opacity(0.5)
                    HStack {
                        Button() {
                            print("play")
                        } label: {
                            Image(systemName: "play")
                                .resizable()
                                .frame(width: screenSize.width * 0.05, height: screenSize.width * 0.05)
                                .foregroundColor(.black)
                        }
                        HStack {
                            Slider(value: $sliderValue)
                                .frame(width: screenSize.width * 0.45, height: screenSize.width * 0.09)
                            Text("00:03")
                                .font(.caption)
                        }
                        .frame(width: screenSize.width * 0.57, height: screenSize.height * 0.02)
                    }
                }
                    Button() {
                        print("aa")
                    } label: {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: screenSize.width * 0.09, height: screenSize.width * 0.09)
                            .foregroundColor(.gray)
                            .opacity(0.5)
                            .overlay(
                                Image(systemName: "trash")
                                    .foregroundColor(.black)
                            )
                            //.padding(.trailing, screenSize.width * 0.02)
                }
                
            }
            .padding(.horizontal, screenSize.width * 0.02)
        }
        //.background(color)
    }
}

struct NewCardSideView_Previews: PreviewProvider {
    static var previews: some View {
        NewCardSideView(side: .front)
    }
}
