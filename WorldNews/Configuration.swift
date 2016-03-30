//  Created by Christian Cabarrocas

import Foundation

enum TopStories: String {
    case Home = "home"
    case World = "world"
    case EUA = "national"
    case Politics = "politics"
    case NewYork = "nyregion"
    case Business = "business"
    case Opinion = "opinion"
    case Technology = "technology"
    case Science = "science"
    case Health = "health"
    case Sports = "sports"
    case Arts = "arts"
    case Fashion = "fashion"
    case Food = "dinning"
    case Travel = "travel"
    case Magazine = "magazine"
    case RealState = "realstate"
}

enum APIEndpoint: String {
    
    case TopStoriesHome = "http://api.nytimes.com/svc/topstories/v1/home.json?api-key=1fcfb44259363feb8fe29102a061fb56:7:70229819"
    case TopStoriesWorld = "http://api.nytimes.com/svc/topstories/v1/world.json?api-key=1fcfb44259363feb8fe29102a061fb56:7:70229819"
    case TopStoriesTechnology = "http://api.nytimes.com/svc/topstories/v1/technology.json?api-key=1fcfb44259363feb8fe29102a061fb56:7:70229819"
    case TopStoriesSports = "http://api.nytimes.com/svc/topstories/v1/sports.json?api-key=1fcfb44259363feb8fe29102a061fb56:7:70229819"
}
