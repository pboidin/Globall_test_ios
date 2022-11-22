//
//  GloballApp.swift
//  Globall

import SwiftUI

@main
struct GloballApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            LandingPageOneView()
        }
    }
}
