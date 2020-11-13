//
//  GameDetailsView.swift
//  basketball-frontend
//
//  Created by Jeffrey Igims on 11/9/20.
//  Copyright © 2020 Matthew Cruz. All rights reserved.
//

import SwiftUI

struct GameDetailsView: View {
  @ObservedObject var viewModel: ViewModel
	@Binding var game: Game?
//  let player: Player
//  @State var game: Game = Game(id: 4, name: "Schenley Park", date: "", time: "", description: "", priv: false, longitude: 2.0, latitude: 2.0, invited: [APIData<Users>](), maybe: [APIData<Users>](), going: [APIData<Users>]())
//  @State var showingUsers = false
//  @State var users: [Users] = [Users]()
//  @State private var selectedStatus = 0
//  var statuses = ["I'm Invited", "I'm Going", "I'm Maybe", "I'm Not Going"]
  
  var body: some View {
//    let selectedIndex = Binding<Int>(get: {
//      self.selectedStatus
//    }, set: {
//
//    })
		Text("GAME DETAILS VIEW")
			
//		if let currGame = game {
//			Text(currGame.name)
//		}
//		else{
//			Text("Couldn't find the game")
//		}
//    NavigationView {
//      VStack {
//        HStack {
//          Button(action: {
//						self.assignUsers(users: self.viewModel.going)
//          }) {
//            Text("Invited")
//              .padding()
//              .background(Color.red)
//              .foregroundColor(.black)
//              .cornerRadius(40)
//              .padding()
//          }
//          Button(action: {
//						self.assignUsers(users: self.viewModel.maybe)
//          }) {
//            Text("Going")
//              .padding()
//              .background(Color.red)
//              .foregroundColor(.black)
//              .cornerRadius(40)
//              .padding()
//          }
//          Button(action: {
//						self.assignUsers(users: self.viewModel.invited)
//          }) {
//            Text("Maybe")
//              .padding()
//              .background(Color.red)
//              .foregroundColor(.black)
//              .cornerRadius(40)
//              .padding()
//          }
//        }
//        Picker(selection: $selectedStatus.onChange(statusChange), label: Text("Status")) {
//          ForEach(0 ..< statuses.count) {
//            Text(self.statuses[$0])
//          }
//
//        }.pickerStyle(SegmentedPickerStyle())
//        .padding()
//
//        HStack {
//          Text("Name:")
//            .padding(.leading)
//          Spacer()
//          Text(game.name)
//            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//        }.padding()
//
//        HStack {
//          Text("Date:")
//            .padding(.leading)
//          Spacer()
//          Text(game.date)
//            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//        }.padding()
//
//        HStack {
//          Text("Time:")
//            .padding(.leading)
//          Spacer()
////          Text(game.displayTime())
//          Text(game.time)
//            .fontWeight(.bold)
//        }.padding()
//
//        Button(action: {
//        }) {
//          Text("Invite Friends")
//            .padding()
//            .frame(maxWidth: .infinity)
//            .background(Color.red)
//            .foregroundColor(.black)
//            .cornerRadius(40)
//            .padding()
//        }
//
//      }.navigationBarTitle("Game Details")
//				.onAppear { self.viewModel.getGame(id: self.game.id) }
//      .sheet(isPresented: $showingUsers) {
//				UsersListView(users: self.$users)
//      }
//    }
  }
//
//  func assignUsers(users: [Users]) {
//    self.users = users
//    self.showingUsers = true
//  }
//
//  func statusChange(selectedStatus: Int) {
//    viewModel.updateStatus(player_id: self.player.id, status: self.statuses[self.selectedStatus])
//  }
//}
//
////struct GameDetailsView_Previews: PreviewProvider {
////  static var previews: some View {
////    GameDetailsView()
////
////  }
////}
//
//extension Binding {
//    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
//        return Binding(
//            get: { self.wrappedValue },
//            set: { selection in
//                self.wrappedValue = selection
//                handler(selection)
//        })
//    }
//}
}
