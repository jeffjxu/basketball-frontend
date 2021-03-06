//
//  HomeView.swift
//  basketball-frontend
//
//  Created by Matthew Cruz on 11/6/20.
//  Copyright © 2020 Matthew Cruz. All rights reserved.
//

import SwiftUI

struct HomeView: View {
  @ObservedObject var viewModel: ViewModel
  @State var isOpen: Bool = false
  
  var body: some View {
    GeometryReader { geometry in
      ZStack(alignment: .topTrailing){
        
        MapView(viewModel: self.viewModel, gameAnnotations: $viewModel.gameAnnotations)
        ZStack{
          Spacer()
          Circle()
            .foregroundColor(Color.white)
            .frame(width: geometry.size.width/2, height: 75)
          Image(systemName: "envelope.circle.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: geometry.size.width/2, height: 75)
            .foregroundColor(Color("tabBarIconColor"))
          ZStack{
            Circle()
              .foregroundColor(Color("tabBarColor"))
              .frame(width: 20, height: 20)
            Text("\(viewModel.getPlayerWithStatus(status: "invited").count)")
              .foregroundColor(.white)
          }.offset(x: 20, y: -18)
        }
        .onTapGesture {
          self.viewModel.currentTab = "invites"
        }
        .offset(x: 50, y: 50)
        .shadow(color: .gray, radius: 2, x:1, y:1)
      }
      // Content is passed as a closure to the bottom view
      BottomView(isOpen: self.$isOpen, maxHeight: geometry.size.height * 0.84) {
        GamesTableView(viewModel: self.viewModel)
      }
    }
    .edgesIgnoringSafeArea(.all)
  }
}


struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView(viewModel: ViewModel())
  }
}
