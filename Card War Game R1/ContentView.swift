//
//  ContentView.swift
//  Card War Game R1
//
//  Created by Tafadzwa Alexander Razaro on 2024/11/10.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerScore = 0
    @State var computerScore = 0
    @State var playerCard = "back"
    @State var computerCard = "back"
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.all)
                        Text("\(playerScore)")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.all)
                        Text("\(computerScore)")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    func deal(){
        
        //Randomise the player cards
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomise the computer cards
        let computerCardValue = Int.random(in: 2...14)
        computerCard = "card" + String(computerCardValue)
        
        //Increase the scores
        if playerCard > computerCard{
            playerScore += 5
        }
        else if playerCard < computerCard{
            computerScore += 5
        }
        else if playerCard == computerCard{
            playerScore += 1
            computerScore += 1
        }
    }
}

#Preview {
    ContentView()
}
