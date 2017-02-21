// Dictionary of players information

var joeSmith = [
    "name": "Joe Smith",
    "height": "42",
    "experience": "Yes",
    "guardians": "Jim and Jan Smith"]

var jillTanner = [
    "name": "Jill Tanner",
    "height": "36",
    "experience": "Yes",
    "guardians": "Clara Tanner"]

var billBon = [
    "name": "Bill Bon",
    "height": "43",
    "experience": "Yes",
    "guardians": "Sara and Jenny Bon"]

var evaGordon = [
    "name": "Eva Gordon",
    "height": "45",
    "experience": "No",
    "guardians": "Wendy and Mike Gordon"]

var mattGill = [
    "name": "Matt Gill",
    "height": "40",
    "experience": "No",
    "guardians": "Charles and Sylvia Gill"]

var kimmyStein = [
    "name": "Kimmy Stein",
    "height": "41",
    "experience": "No",
    "guardians": "Bill and Hillary Stein"]

var sammyAdams = [
    "name": "Sammy Adams",
    "height": "45",
    "experience": "No",
    "guardians": "Jeff Adams"]

var karlSaygan = [
    "name": "Karl Saygan",
    "height": "42",
    "experience": "Yes",
    "guardians": "Heather Bledsoe"]

var suzaneGreenberg = [
    "name": "Suzane Greenberg",
    "height": "44",
    "experience": "Yes",
    "guardians": "Henrietta Dumas"]

var salDali = [
    "name": "Sal Dali",
    "height": "41",
    "experience": "No",
    "guardians": "Gale Dali"]

var joeKavalier = [
    "name": "Joe Kavalier",
    "height": "39",
    "experience": "No",
    "guardians": "Sam and Ealine Kavalier"]

var benFinkelstein = [
    "name": "Ben Finkelstein",
    "height": "44",
    "experience": "No",
    "guardians": "Aaron and Jill Finelstein"]

var diegoSoto = [
    "name": "Diego Soto",
    "height": "41",
    "experience": "Yes",
    "guardians": "Robin and Sarika Soto"]

var chloeAlaska = [
    "name": "Chloe Alaska",
    "height": "47",
    "experience": "No",
    "guardians": "David And Jamie Alaska"]

var arnoldWillis = [
    "name": "Arnold Willis",
    "height": "43",
    "experience": "No",
    "guardians": "Claire Willis"]

var phillipHelm = [
    "name": "Phillip Helm",
    "height": "44",
    "experience": "Yes",
    "guardians": "Thomas Helm and Eva Jones"]

var lesClay = [
    "name": "Les Clay",
    "height": "42",
    "experience": "Yes",
    "guardians": "Wynonna Brown"]

var herschelKrustofski = [
    "name": "Herschel Krustofski",
    "height": "45",
    "experience": "Yes",
    "guardians": "Hyman and Rachel Krustofski"]

// Variable holding all player's data

var playerRoster = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]


// Seperating players by experience

var experiencedPlayer:[[String:String]] = []
var nonExperiencedPlayer:[[String:String]] = []

for player in playerRoster {
    let experience = player["experience"]
    if experience == "Yes" {
        experiencedPlayer.append(player)
    } else {
        nonExperiencedPlayer.append(player)
    }
}

// Variable and Array of the teams in preperation for sorting

var teamDragon: [[String:String]] = []
var teamShark: [[String:String]] = []
var teamRaptor: [[String:String]] = []

var allTeamsArray = [teamDragon, teamShark, teamRaptor]

// Dividing experienced players into teams

var sortedExperiencedPlayer = experiencedPlayer.count

while sortedExperiencedPlayer > 0 {
    teamDragon.append(experiencedPlayer.removeFirst())
    teamShark.append(experiencedPlayer.removeFirst())
    teamRaptor.append(experiencedPlayer.removeFirst())
    sortedExperiencedPlayer -= allTeamsArray.count
}

// Dividing Nonexperienced players into teams

var sortedNonExperiencedPlayer = nonExperiencedPlayer.count

while sortedNonExperiencedPlayer > 0 {
    teamRaptor.append(nonExperiencedPlayer.removeFirst())
    teamShark.append(nonExperiencedPlayer.removeFirst())
    teamDragon.append(nonExperiencedPlayer.removeFirst())
    sortedNonExperiencedPlayer -= allTeamsArray.count
}
// Sending out letters to Guardians

for player in teamShark {
    let guardian = player["guardians"]!
    let name = player["name"]!
    print("Hello \(guardian)! \(name) has been placed on Team Shark! The first team practice will be in March 17th at 3pm. Dust off your cleats and see you on the pitch! Sincerely, Coach")
}

for player in teamRaptor {
    let guardian = player["guardians"]!
    let name = player["name"]!
    print("Hello \(guardian)! \(name) has been placed on Team Raptor! The first team practice will be in March 17th at 3pm. Dust off your cleats and see you on the pitch! Sincerely, Coach")
}

for player in teamDragon {
    let guardian = player["guardians"]!
    let name = player["name"]!
    print("Hello \(guardian)! \(name) has been placed on Team Dragon! The first team practice will be in March 17th at 3pm. Dust off your cleats and see you on the pitch! Sincerely, Coach")
}

