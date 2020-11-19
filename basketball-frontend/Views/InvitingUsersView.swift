//
//  InvitingUsersView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 11/11/20.
//  Copyright © 2020 Matthew Cruz. All rights reserved.
//

import SwiftUI

struct InvitingUsersView: View {
  @ObservedObject var viewModel: ViewModel
  
  var body: some View {
    VStack {
      List {
        ForEach(viewModel.favoritesNotInvited(), id: \.favorite.id) { arg in
          InvitingUsersRowView(viewModel: viewModel, favorite: arg.favorite, invited: arg.invited)
        }
      }.navigationBarTitle("Invite Favorites")
    }
  }
}

struct InvitingUsersRowView: View {
  @ObservedObject var viewModel: ViewModel
  let favorite: Favorite
  @State var invited: Bool
  
  var body: some View {
    HStack {
      Text(favorite.user.data.firstName)
      Text(favorite.user.data.lastName)
      Spacer()
      Button(action: {
        inviteFavorite()
      }) {
        Text(invited ? "Invited" : "Invite")
          .padding()
          .background(invited ? Color.gray : Color.red)
          .foregroundColor(.black)
          .cornerRadius(40)
          .padding(.leading)
      }
    }
  }
  
  
  func inviteFavorite() {
    viewModel.inviteToGame(userID: favorite.user.data.id, gameID: viewModel.game!.id)
    invited = true
  }
}


struct InvitingUsersView_Previews: PreviewProvider {
  static var previews: some View {
    InvitingUsersView(viewModel: ViewModel())
  }
}
