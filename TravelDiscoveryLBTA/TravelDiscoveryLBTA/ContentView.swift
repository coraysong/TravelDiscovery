//
//  ContentView.swift
//  TravelDiscoveryLBTA
//
//  Created by Coray on 17/2/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                DiscoverCategoriesView()
                PopularDestinationsView()
                PopularRestaurantsView()
                TreadingCreatorsView()
            }.navigationTitle("Discover")
            
        }
        
    }
}

struct PopularDestinationsView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Popular Destinations")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal){
                HStack(spacing: 8.0){
                    ForEach(0..<5, id: \.self) { num in
                        Spacer()
                            .frame(width: 125, height: 150)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct PopularRestaurantsView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Popular places to eat")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal){
                HStack(spacing: 8.0){
                    ForEach(0..<5, id: \.self) { num in
                        Spacer()
                            .frame(width: 200, height: 64)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct TreadingCreatorsView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Trending Creators")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal){
                HStack(spacing: 8.0){
                    ForEach(0..<5, id: \.self) { num in
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct Category: Hashable {
    let name, imageName: String
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiscoverCategoriesView: View {
    
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "music.mic"),
        .init(name: "History", imageName: "music.mic")
    ]
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators:false){
            HStack(alignment: .top, spacing: 14){
                ForEach(categories, id: \.self) { category in
                    VStack(spacing: 8){
                        Image(systemName: category.imageName)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .frame(width: 64, height: 64)
                            .background(Color.gray)
                            .cornerRadius(32)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                        Text(category.name)
                            .font(.system(size: 12, weight: .semibold))
                            .multilineTextAlignment(.center)
                    }.frame(width: 68)
                    
                }
                
            }
            .padding(.horizontal)
        }
    }
}
