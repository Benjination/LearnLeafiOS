//
//  ContentView.swift
//  LearnLeaf
//
//  Created by Ben Niccum on 11/30/24.
//

import SwiftUI

struct TaskView: View {
    var body: some View {
        VStack(spacing: 0) {
            // ImageView at the top
            Image("banner_logo")
                .resizable()
                .frame(width: 389, height: 71)
                .padding(.top, 72)

            // Navigation fragment placeholder
            NavigationView {
                Text("Navigation Fragment Placeholder")
                    .frame(maxWidth: .infinity)
                    .padding(.top, 25)
            }

            // ScrollView for tasks
            ScrollView {
                VStack {
                    // Individual task blocks will be added here programmatically
                    Text("Task 1")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)

                    Text("Task 2")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                    
                    // More tasks can be added dynamically
                }
                .padding(.top, 16)
            }
            .frame(height: 410)

            // Filter button
            Button(action: {
                print("Filter button tapped")
            }) {
                Text("Filter")
                    .foregroundColor(Color("MineralGreen"))
                    .padding()
                    .background(Color("Opal"))
                    .cornerRadius(8)
            }
            .padding(.bottom, 32)
            .padding(.leading, 36)

            // Add New Task ImageView
            Button(action: {
                onAddNewTaskClick()
            }) {
                Image("addnew")
                    .resizable()
                    .frame(width: 90, height: 87)
                    .padding(.trailing, 36)
            }
            .padding(.bottom, 16)
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }

    func onAddNewTaskClick() {
        print("Add New Task button tapped")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
