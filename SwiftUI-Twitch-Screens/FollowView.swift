//
//  FollowView.swift
//  SwiftUI-Twitch-Screens
//
//  Created by Caner Çağrı on 30.06.2023.
//

import SwiftUI

struct FollowView: View {
    var body: some View {
        ZStack {
            Color("backgroundColor")
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Text("Takip Edilenler")
                    .foregroundColor(.white)
                    .font(.system(size: 35))
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0...10, id: \.self) { _ in
                            ItemView()
                                .padding(.top, 10)
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.top, 30)
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button  {
                    
                } label: {
                    ZStack {
                        Circle()
                            .foregroundColor(Color("yellowColor"))
                            .frame(width: 40, height: 40, alignment: .center)
                        Image(systemName: "person")
                            .tint(.black)
                    }
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button  {
                    
                } label: {
                    Image(systemName: "shippingbox")
                        .tint(.white)
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button  {
                    
                } label: {
                    Image(systemName: "message")
                        .tint(.white)
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button  {
                    
                } label: {
                    Image(systemName: "square")
                        .tint(.white)
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button  {
                    
                } label: {
                    ZStack {
                        Capsule()
                            .foregroundColor(.gray)
                        HStack {
                            Image(systemName: "circle")
                                .tint(.white)
                            Text("Olustur")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                    }
                }
            }

        }
    }
}

struct FollowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("placeholder")
            Text("PUBG: BATTLEGROUNDS")
                .foregroundColor(.white)
                .bold()
            
            HStack {
                Circle()
                    .frame(width: 16, height: 16, alignment: .center)
                    .foregroundColor(.red)
                
                Text("18,3 Bin")
                    .foregroundColor(.gray)
            }
        }
        .frame(maxWidth: 200)
    }
}
