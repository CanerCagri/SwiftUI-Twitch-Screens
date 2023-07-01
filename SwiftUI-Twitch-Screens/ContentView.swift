//
//  ContentView.swift
//  SwiftUI-Twitch-Screens
//
//  Created by Caner Çağrı on 30.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let tabBarApperance = UITabBarAppearance()
        tabBarApperance.backgroundColor = UIColor(named: "tabBarBackgroundColor")
        UITabBar.appearance().scrollEdgeAppearance = tabBarApperance
        UITabBar.appearance().standardAppearance = tabBarApperance
        
        UITabBar.appearance().unselectedItemTintColor = .white
        
        let navBarApperance = UINavigationBarAppearance()
        navBarApperance.backgroundColor = UIColor(named: "tabBarBackgroundColor")
        UINavigationBar.appearance().standardAppearance = navBarApperance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarApperance
    }
    
    var body: some View {
        TabView {
            NavigationView {
                FollowView()
            }
            .tabItem {
                Label("Takip Ediliyor", systemImage: "heart")
            }
            
            NavigationView {
                
            }
            .tabItem {
                Label("Takip Ediliyor", systemImage: "safari")
            }
            
            NavigationView {
                
            }
            .tabItem {
                Label("Takip Ediliyor", systemImage: "doc.on.doc")
            }
            
            NavigationView {
                
            }
            .tabItem {
                Label("Takip Ediliyor", systemImage: "magnifyingglass")
            }
        }
        .accentColor(Color("selectedTabBarColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
