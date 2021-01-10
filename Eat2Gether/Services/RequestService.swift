//
//  RequestService.swift
//  Eat2Gether
//
//  Created by Kai Yuan Chi on 2021-01-10.
//

import Foundation
import SwiftUI

class RequestService {
//    func parseJSON(data: Data) -> UserResponseModel? {
//        var returnValue: UserResponseModel?
//        do {
//            returnValue = try JSONDecoder().decode(UserResponseModel.self, from: data)
//        } catch {
//            print("Error took place\(error.localizedDescription).")
//        }
//
//        return returnValue
//    }
//
//    // GET REQUESTS
//    func getCoordinates(postalCode) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/locations/coordinates/\(postalCode)")
//        guard let requestUrl = url else { fatalError() }
//        var request = URLRequest(url: requestUrl)
//        request.httpMethod = "GET"
//        // Send HTTP Request
//        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//            guard let data = data else { return }
//            let coordinates = parseJSON(data: data)
//            // I'M NOT SURE IF I'M SUPPOSED TO RETURN BECAUSE IDK
//            // WHAT TASK.RESUME() IS AT THE END
//            // return coordinates
//        }
//        task.resume()
//    }
//
//    func getUser(userId) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/users/\(userId)")
//        guard let requestUrl = url else { fatalError() }
//        var request = URLRequest(url: requestUrl)
//        request.httpMethod = "GET"
//        // Send HTTP Request
//        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//            guard let data = data else { return }
//            let user = parseJSON(data: data)
//            // I'M NOT SURE IF I'M SUPPOSED TO RETURN
//            // return user
//        }
//        task.resume()
//    }
//
//    func getReviews(placeId) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/restaurants/reviews/\(placeId)")
//        guard let requestUrl = url else { fatalError() }
//        var request = URLRequest(url: requestUrl)
//        request.httpMethod = "GET"
//        // Send HTTP Request
//        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//            guard let data = data else { return }
//            let reviews = parseJSON(data: data)
//            // I'M NOT SURE IF I'M SUPPOSED TO RETURN
//            // return reviews
//        }
//        task.resume()
//    }
//
//    func getTwoBestRestaurants(roomId) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/restaurants/top2/\(roomId)")
//        guard let requestUrl = url else { fatalError() }
//        var request = URLRequest(url: requestUrl)
//        request.httpMethod = "GET"
//        // Send HTTP Request
//        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//            guard let data = data else { return }
//            let bestRestaurants = parseJSON(data: data)
//
//            guard let bestRestaurantsModel = bestRestaurants else { return }
//            let best = bestRestaurantsModel.best
//            let secondBest = bestRestaurantsModel.second
//            // can get score with best.score
//        }
//        task.resume()
//    }
//
//    // POST REQUESTS
//    // THE USERID IS _ID
//    func createUser(name, lat, lon) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/users")
//        guard let serviceUrl = URL(string: url) else { return }
//        let parameters: [String: Any] = [
//            "name": name,
//            "lat": lat,
//            "lon": lon
//        ]
//        var request = URLRequest(url: serviceUrl)
//        request.httpMethod = "POST"
//        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
//        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {
//            return
//        }
//        request.httpBody = httpBody
//        request.timeoutInterval = 20
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//            if let data = data {
//                do {
//                    // I'M NOT SURE IF I'M SUPPOSED TO USE THIS OR
//                    // PARSEJSON()
//                    let user = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(user)
//                } catch {
//                    print(error)
//                }
//            }
//        }.resume()
//    }
//
//    func createRoom(userId) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/rooms/\(userId)")
//        guard let serviceUrl = URL(string: url) else { return }
//        var request = URLRequest(url: serviceUrl)
//        request.httpMethod = "POST"
//        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
//        request.timeoutInterval = 20
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//            if let data = data {
//                do {
//                    // I'M NOT SURE IF I'M SUPPOSED TO USE THIS OR
//                    // PARSEJSON()
//                    let room = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(room)
//                } catch {
//                    print(error)
//                }
//            }
//        }.resume()
//    }
//
//    func createHostProfile(userId, roomId) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/profiles/\(userId)/\(roomId)/true")
//        guard let serviceUrl = URL(string: url) else { return }
//        var request = URLRequest(url: serviceUrl)
//        request.httpMethod = "POST"
//        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
//        request.timeoutInterval = 20
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//            if let data = data {
//                do {
//                    // I'M NOT SURE IF I'M SUPPOSED TO USE THIS OR
//                    // PARSEJSON()
//                    let profile = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(profile)
//                } catch {
//                    print(error)
//                }
//            }
//        }.resume()
//    }
//
//    func getAverageLocation() {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/locations/average")
//    }
//
//    func getRestaurants(roomId) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/restaurants/\(roomId)")
//    }
//
//    // PUT REQUESTS
//    func addUserToRoom(userId, roomId) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/rooms/\(roomId)/\(userId)")
//
//    }
//
//    func addPreferenceRoom(userId, roomId) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/rooms/\(roomId)/\(userId)/true")
//    }
//
//    func addUserPreferences(userId, roomId, preferences) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/profiles/\(userId)/\(roomId)")
//    }
//
//    func voteForRestaurantUser(restaurantId, roomId, yes) {
//        let url = String(format: "https://eat-together-backend.herokuapp.com/restaurants/\(restaurantId)/\(roomId)/\(yes)")
//    }
//
//
//// flows i think
//    func onboardUser() {
//        // getCoordinates() to get lat and lon
//        // pass name, lat, lon into createUser()
//    }
//    func generateRoom() {
//        // i'm not sure how to call these functions
//        // but basically call createRoom() and with the roomId
//        // createHostProfile()
//    }
//    func joinRoom() {
//        // addUserToRoom()
//    }
//    func addPreferences() {
//        // call addUserPreferences() and addPreferenceRoom()
//        // one adds preferences to profile, other adds that the
//        // user added preferences in room
//    }
//    func getFoundRestaurants() {
//        // call getAverageLocation() and pass this into
//        // getRestaurants()
//        // call getReviews()
//    }
//    func voteForRestaurant() {
//        // call voteForRestaurantUser()
//    }
//    func getTopChoicesRestaurants() {
//        // call getTwoBestRestaurants()
//    }
}
