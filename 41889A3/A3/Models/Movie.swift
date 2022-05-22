//
//  Movie.swift
//  A3
//
//  Created by Wangyang Wu on 11/5/2022.
//

import Foundation
import UIKit

struct Movie {
    let title: String
    let image: UIImage
    let introduction:String
}

let movies: [Movie] = [
    Movie(title: "The Batman", image: #imageLiteral(resourceName: "batman") ,introduction: "The Batman is a 2022 American superhero film based on the DC Comics character Batman. Produced by Warner Bros. Pictures, DC Films, 6th & Idaho, and Dylan Clark Productions, and distributed by Warner Bros. Pictures, it is a reboot of the Batman film franchise. The film was directed by Matt Reeves, who wrote the screenplay with Peter Craig. It stars Robert Pattinson as Bruce Wayne / Batman alongside Zoë Kravitz, Paul Dano, Jeffrey Wright, John Turturro, Peter Sarsgaard, Andy Serkis, and Colin Farrell. The film sees Batman, who has been fighting crime in Gotham City for two years, uncover corruption while pursuing the Riddler (Dano), a serial killer who targets Gotham's elite."),
    Movie(title: "Spider-Man: No Way Home", image: #imageLiteral(resourceName: "Spider-Man"),introduction: "Spider-Man: No Way Home is a 2021 American superhero film based on the Marvel Comics character Spider-Man, co-produced by Columbia Pictures and Marvel Studios and distributed by Sony Pictures Releasing. It is the sequel to Spider-Man: Homecoming (2017) and Spider-Man: Far From Home (2019), and the 27th film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Watts and written by Chris McKenna and Erik Sommers. It stars Tom Holland as Peter Parker / Spider-Man alongside Zendaya, Benedict Cumberbatch, Jacob Batalon, Jon Favreau, Jamie Foxx, Willem Dafoe, Alfred Molina, Benedict Wong, Tony Revolori, Marisa Tomei, Andrew Garfield, and Tobey Maguire. In the film, Parker asks Dr. Stephen Strange (Cumberbatch) to use magic to make his identity as Spider-Man a secret again following its public revelation at the end of Far From Home. When the spell goes wrong, the multiverse is broken open which allows visitors from alternate realities to enter Parker's universe."),
    Movie(title: "Joker", image: #imageLiteral(resourceName: "Joker"),introduction: "Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver. The film, based on DC Comics characters, stars Joaquin Phoenix as the Joker and provides a possible origin story for the character. Set in 1981, it follows Arthur Fleck, a failed clown and aspiring stand-up comedian whose descent into insanity and nihilism inspires a violent counter-cultural revolution against the wealthy in a decaying and destroyed Gotham City. Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Glenn Fleshler, Bill Camp, Shea Whigham, and Marc Maron appear in supporting roles. Distributed by Warner Bros. Pictures, Joker was produced by Warner Bros. Pictures and DC Films in association with Village Roadshow Pictures, Bron Creative and Joint Effort."),
    Movie(title: "Doctor Strange in the Multiverse of Madness", image: #imageLiteral(resourceName: "doctor strange"),introduction: "Doctor Strange in the Multiverse of Madness is a 2022 American superhero film based on Marvel Comics featuring the character Doctor Strange. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the sequel to Doctor Strange (2016) and the 28th film in the Marvel Cinematic Universe (MCU). The film was directed by Sam Raimi, written by Michael Waldron, and stars Benedict Cumberbatch as Stephen Strange, alongside Elizabeth Olsen, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez, Michael Stuhlbarg, and Rachel McAdams. In the film, Strange protects America Chavez (Gomez), a teenager capable of travelling the multiverse, from Wanda Maximoff (Olsen)."),
    Movie(title: "Avengers: End Game", image: #imageLiteral(resourceName: "Avengers"),introduction: "Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the direct sequel to Avengers: Infinity War (2018) and the 22nd film in the Marvel Cinematic Universe (MCU). Directed by Anthony and Joe Russo and written by Christopher Markus and Stephen McFeely, the film features an ensemble cast including Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, and Josh Brolin. In the film, the surviving members of the Avengers and their allies attempt to reverse the destruction caused by Thanos in Infinity War."),
    Movie(title: "Aquaman", image: #imageLiteral(resourceName: "Aquaman"),introduction: "Aquaman is a 2018 American superhero film based on the DC Comics character of the same name. Produced by Warner Bros. Pictures, DC Entertainment and Peter Safran Productions, and distributed by Warner Bros. Pictures, it is the sixth film in the DC Extended Universe (DCEU). The film was directed by James Wan, from a screenplay by David Leslie Johnson-McGoldrick and Will Beall. It stars Jason Momoa as Arthur Curry / Aquaman, who sets out to lead the underwater kingdom of Atlantis and stop his half-brother, King Orm, from uniting the seven underwater kingdoms to destroy the surface world. Amber Heard, Willem Dafoe, Patrick Wilson, Dolph Lundgren, Yahya Abdul-Mateen II, Temuera Morrison, and Nicole Kidman appear in supporting roles."),
    Movie(title: "Star Wars: The Last Jedi", image: #imageLiteral(resourceName: "StarWar"),introduction: "Star Wars: The Last Jedi (also known as Star Wars: Episode VIII – The Last Jedi) is a 2017 American epic space opera film written and directed by Rian Johnson. Produced by Lucasfilm and distributed by Walt Disney Studios Motion Pictures, it is the second installment of the Star Wars sequel trilogy, following The Force Awakens (2015), and the eighth episode of the nine-part \"Skywalker saga\". The film's ensemble cast includes Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Andy Serkis, Lupita Nyong'o, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, Kelly Marie Tran, Laura Dern, and Benicio del Toro. The Last Jedi follows Rey as she seeks the aid of Luke Skywalker, in hopes of turning the tide for the Resistance in the fight against Kylo Ren and the First Order, while General Leia Organa, Finn, and Poe Dameron attempt to escape a First Order attack on the dwindling Resistance fleet. The film features the first posthumous film performance by Fisher, who died in December 2016, and the film is dedicated to her."),
    Movie(title: "Godzila", image: #imageLiteral(resourceName: "Godzilla"),introduction: "Godzilla (Japanese: ゴジラ, Hepburn: Gojira, /ɡɒdˈzɪlə/; [ɡoꜜdʑiɾa] (listen)) is a fictional monster, or kaiju, originating from a series of Japanese films. The character first appeared in the 1954 film Godzilla and became a worldwide pop culture icon, appearing in various media, including 32 films produced by Toho, four Hollywood films and numerous video games, novels, comic books and television shows. Godzilla has been dubbed the \"King of the Monsters\", a phrase first used in Godzilla, King of the Monsters! (1956), the Americanized version of the original film.")
]
