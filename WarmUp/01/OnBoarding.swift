//
//  OnBoarding.swift
//  WarmUp
//
//  Created by 한상선 on 2/27/24.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        VStack{
            Text("What's New in Photos")
                .font(.system(size:35))
                .bold()
                .padding()
                .padding(.top, 50)
            
            HStack{
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width:35)
                    .padding(.horizontal, 7)
                    .foregroundStyle(.blue)
                
                VStack(alignment: .leading){
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the people closet to you and automatically share new photos from camera")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            HStack{
                Image(systemName: "slider.horizontal.2.square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width:35)
                    .padding(.horizontal, 7)
                    .foregroundStyle(.blue)
                
                VStack(alignment: .leading){
                    Text("Copy & Paste Edits")
                        .font(.headline)
                    Text("Save time by making edits to one photo, then applying the changes to other photos with a tap.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            HStack{
                Image(systemName: "square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width:35)
                    .padding(.horizontal, 7)
                    .foregroundStyle(.blue)
                
                VStack(alignment: .leading){
                    Text("Merge Duplicates")
                        .font(.headline)
                    Text("Quickly find and merge all your duplicate photos and videos from one central place in the Albums tab.")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            
            Spacer()
        }
        
        Button{
            
        } label: {
            Text("Continue")
                .padding()
                .frame(width: 350)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .bold()
        }
        
    }
}

#Preview {
    OnBoarding()
}
