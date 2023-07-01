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
            
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Text("Takip Edilenler")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0...10, id: \.self) { _ in
                                HorizontalItemView()
                                    .padding(.top, 10)
                            }
                        }
                    }
                    
                    Text("Takip Edilenler")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                    
                    ScrollView(.vertical) {
                        VStack {
                            ForEach(0...10, id: \.self) { _ in
                                VerticalItemView()
                            }
                        }
                    }
                    
                    Spacer()
                }
                .padding(.top, 30)
            }

            
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

struct HorizontalItemView: View {
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

struct VerticalItemView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 30) {
            ZStack {
                Image("placeholder2")
                    .resizable()
                    .frame(width: 170, height: 100, alignment: .center)
                
                VStack {
                    
                    Spacer()
                    
                    HStack {
                       
                        Circle()
                            .frame(width: 16, height: 16, alignment: .leading)
                            .foregroundColor(.red)
                        
                        Text("18,3 Bin")
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 55)
                }
          
                
                
            }
            
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Image("placeholder")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .clipShape(Circle())
                    
                    Text("shroud")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .bold()
                }
                
                Text("CS:2 LETS GO !announcements")
                    .foregroundColor(.gray)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0...3, id: \.self) { _ in
                            ZStack {
                                Capsule()
                                    .foregroundColor(.gray)
                                Text("English")
                                    .foregroundColor(.white)
                            }
                            .frame(width: 90, height: 30, alignment: .center)
                        }
                    }
                }
                
            }
        }
    }
}
