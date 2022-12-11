//
//  MainViewS.swift
//  jobsity challenge
//
//  Created by Frank Jansen on 1/12/22.
//

import SwiftUI

struct MainViewS: View {
    @StateObject var showViewModel = ShowViewModel()
    var body: some View {
        VStack{
            NavigationView{
                List{
                    ForEach(showViewModel.shows) { serie in
                        NavigationLink(destination: ShowDetailedView(show: serie)) {
                            ShowButtonView(show: serie)
                        }
                    }
                }
                .navigationTitle("Menu")
            }
        }
    }
    func loadData() {
        Task {
            await showViewModel.loadData()
        }
    }
}
struct MainViewS_Previews: PreviewProvider {
    static var previews: some View {
        MainViewS()
    }
}
