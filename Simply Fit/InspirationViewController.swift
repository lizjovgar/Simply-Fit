//
//  FirstViewController.swift
//  Simply Fit
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Liz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var quote: UILabel!
    let array = ["“All our dreams can come true, if we have the courage to pursue them.” – Walt Disney", "“Everything you can imagine is real.” ― Pablo Picasso", "“Impossible is just an opinion.” – Paulo Coelho", "“Keep your eyes on the stars, and your feet on the ground.” – Theodore Roosevelt", "“Take care of your body. It’s the only place you have to live.” Jim Rohn", "“Turn your wounds into wisdom” – Oprah", "“If you can dream it, you can do it.” – Walt Disney", "“Nothing can dim the light that shines from within.” – Maya Angelou", "“You must do the thing you think you cannot do.” – Eleanor Roosevelt", "“Believe you can and you’re halfway there.” - Theodore Roosevelt", "“A winner is a dreamer who never gives up.” – Nelson Mandela", "“When you have a dream, you’ve got to grab it and never let go” - Carol Burnett", "Setting goals is the first step in turning the invisible into the visible.” — Tony Robbins", "“The only place where your dreams become impossible is in your own thinking,” – Robert H Shuller", "“You can, you should, and if you’re brave enough to start, you will.” - Stephan King", "“Success is not final, failure is not fatal:it is the courage to continue that counts.” - Winston Churchill", "“The only difference between ordinary and extraordinary is that little extra.” – Jimmy Johnson", "“What you get by achieving your goals is not as important as what you become by achieving your goals.” -Zig Ziglar", "“Success is liking yourself, liking what you do, and liking how you do it.” – Maya Angelou", "“You can’t go back and change the beginning, but you can start where you are and change the ending.” – C.S. Lewis", "“Whenever you find yourself doubting how far you can go, just remember how far you have come.” – Unknown", "“No matter what you’re going through, there’s a light at the end of the tunnel.” - Demi Lovato"]
    
    @IBAction func newQuoteButton(_ sender: Any) {
        quote.text = array.randomElement()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

