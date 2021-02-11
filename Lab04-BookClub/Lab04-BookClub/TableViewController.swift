//
//  TableViewController.swift
//  Lab04-BookClub
//
//  Created by John Dutton on 2/10/21.
//

import UIKit

class TableViewController: UITableViewController {
    @IBOutlet var bookTableView: UITableView!
    
    let books: [String] = [
            "The Absolutely True Diary of a Part-Time Indian by Sherman Alexie",
           "Captain Underpants (series) by Dav Pilkey",
           "Thirteen Reasons Why by Jay Asher",
           "Looking for Alaska by John Green",
           "George by Alex Gino",
           "And Tango Makes Three by Justin Richardson and Peter Parnell",
           "Drama by Raina Telgemeier",
           "Fifty Shades of Grey by E. L. James",
           "Internet Girls (series) by Lauren Myracle",
           "The Bluest Eye by Toni Morrison",
           "The Kite Runner by Khaled Hosseini",
           "Hunger Games by Suzanne Collins",
           "I Am Jazz by Jazz Jennings and Jessica Herthel",
           "The Perks of Being a Wallflower by Stephen Chbosky",
           "To Kill a Mockingbird by Harper Lee",
           "Bone (series) by Jeff Smith",
           "The Glass Castle by Jeannette Walls",
           "Two Boys Kissing by David Levithan",
           "A Day in the Life of Marlon Bundo by Jill Twiss",
           "Sex is a Funny Word by Cory Silverberg",
           "Alice McKinley (series) by Phyllis Reynolds Naylor",
           "It's Perfectly Normal by Robie H. Harris",
           "Nineteen Minutes by Jodi Picoult",
           "Scary Stories (series) by Alvin Schwartz",
           "Speak by Laurie Halse Anderson",
           "A Brave New World by Aldous Huxley",
           "Beyond Magenta: Transgender Teens Speak Out by Susan Kuklin",
           "Of Mice and Men by John Steinbeck",
           "The Handmaid's Tale by Margaret Atwood",
           "The Hate U Give by Angie Thomas",
           "Fun Home: A Family Tragicomic by Alison Bechdel",
           "It's a Book by Lane Smith",
           "The Adventures of Huckleberry Finn by Mark Twain",
           "The Things They Carried by Tim O'Brien",
           "What My Mother Doesn't Know by Sonya Sones",
           "Bad Kitty (series) by Nick Bruel",
           "Crank by Ellen Hopkins",
           "Nickel and Dimed by Barbara Ehrenreich",
           "Persepolis by Marjane Satrapi",
           "The Adventures of Super Diaper Baby by Dav Pilkey",
           "This Day in June by Gayle E. Pitman",
           "This One Summer by Mariko Tamaki",
           "A Bad Boy Can Be Good For A Girl by Tanya Lee Stone",
           "Beloved by Toni Morrison",
           "Goosebumps (series) by R.L. Stine",
           "In Our Mothers' House by Patricia Polacco",
           "Lush by Natasha Friend",
           "The Catcher in the Rye by J. D. Salinger",
           "The Color Purple by Alice Walker",
           "The Curious Incident of the Dog in the Night-Time by Mark Haddon",
           "The Holy Bible",
           "This Book is Gay by Juno Dawson",
           "Eleanor & Park by Rainbow Rowell",
           "Extremely Loud & Incredibly Close by Jonathan Safran Foer",
           "Gossip Girl (series) by Cecily von Ziegesar",
           "House of Night (series) by P.C. Cast",
           "My Mom's Having A Baby by Dori Hillestad Butler",
           "Neonomicon by Alan Moore",
           "The Dirty Cowboy by Amy Timberlake"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        bookTableView.register(UITableViewCell.self, forCellReuseIdentifier: "BookCell")
    }
 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        
        cell.textLabel?.text = self.books[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("You tapped cell number \(indexPath.row).")
    }
}
