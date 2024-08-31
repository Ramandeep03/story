//
//  Book.swift
//  story
//
//  Created by Ramandeep Singh on 30/08/24.
//

import Foundation
import SwiftUI

struct Book: Hashable {
    var title: String
    var imageName: String
    var author: String
    var publishedOn: String
    var rating: Double
    var description: String
    var story: String
    var read: String
    var likes: String
    var pages: Int
}

let categories: [Category] = [
    Category(name: Tab.fiction.rawValue, books: [
        Book(
            title: "To Kill a Mockingbird",
            imageName: "mocking",
            author: "Harper Lee",
            publishedOn: "1960",
            rating: 4.8,
            description: "A novel about racial injustice in the Deep South.",
            story: """
                "To Kill a Mockingbird" by Harper Lee is a classic novel set in the American South during the 1930s. The story is narrated by Scout Finch, a young girl, and follows her observations of the racial injustices in her town as her father, Atticus Finch, defends a black man accused of raping a white woman. The novel explores themes of morality, innocence, and the complexity of human nature.
            """,
            read: "1M",
            likes: "1M",
            pages: 324
        ),
        Book(
            title: "1984",
            imageName: "1984_1",
            author: "George Orwell",
            publishedOn: "1949",
            rating: 4.7,
            description: "A dystopian novel about totalitarian regime surveillance and control.",
            story: """
                George Orwell's "1984" is set in a totalitarian society governed by the Party, led by Big Brother. The protagonist, Winston Smith, works for the Party but secretly despises it and dreams of rebellion. The novel explores themes of surveillance, propaganda, and the erasure of truth in a society where the government controls every aspect of life. Winston's journey is one of resistance against an oppressive regime.
            """,
            read: "900K",
            likes: "900K",
            pages: 328
        ),
        Book(
            title: "The Great Gatsby",
            imageName: "great_gatsby",
            author: "F. Scott Fitzgerald",
            publishedOn: "1925",
            rating: 4.4,
            description: "A tragic story of wealth and love in the Jazz Age.",
            story: """
                F. Scott Fitzgerald's "The Great Gatsby" is a novel set in the 1920s, a time of prosperity and excess. The story follows Jay Gatsby, a wealthy man with mysterious origins, and his unrequited love for Daisy Buchanan. The novel explores themes of the American Dream, love, and the corrupting influence of wealth.
            """,
            read: "850K",
            likes: "850K",
            pages: 180
        ),
        Book(
            title: "Brave New World",
            imageName: "brave_new",
            author: "Aldous Huxley",
            publishedOn: "1932",
            rating: 4.3,
            description: "A dystopian novel about a society driven by technology and conformity.",
            story: """
                Aldous Huxley's "Brave New World" is set in a futuristic society where technology and conditioning have eradicated individuality and emotion. The novel follows Bernard Marx, an outsider in this conformist world, as he struggles with his desire for freedom and truth. It explores themes of control, freedom, and the impact of technology on humanity.
            """,
            read: "750K",
            likes: "750K",
            pages: 268
        )
    ]),
    Category(name: Tab.mystery.rawValue, books: [
        Book(
            title: "The Girl with the Dragon Tattoo",
            imageName: "girl_dragon",
            author: "Stieg Larsson",
            publishedOn: "2005",
            rating: 4.5,
            description: "A mystery thriller involving a journalist and a hacker.",
            story: """
                "The Girl with the Dragon Tattoo" by Stieg Larsson follows the story of journalist Mikael Blomkvist and hacker Lisbeth Salander as they investigate the disappearance of a wealthy patriarch's niece 40 years ago. The novel is filled with dark secrets, corruption, and twists that keep readers on the edge of their seats. It is the first book in the Millennium series.
            """,
            read: "1.2M",
            likes: "1.2M",
            pages: 465
        ),
        Book(
            title: "The Da Vinci Code",
            imageName: "da_code",
            author: "Dan Brown",
            publishedOn: "2003",
            rating: 4.4,
            description: "A mystery thriller involving a conspiracy within the Catholic Church.",
            story: """
                Dan Brown's "The Da Vinci Code" follows symbologist Robert Langdon as he uncovers a conspiracy hidden within the works of Leonardo da Vinci and the Catholic Church. The novel is a fast-paced thriller that combines art, history, and religion in a mystery that spans the globe. Its controversial themes and intriguing puzzles have made it a bestseller.
            """,
            read: "1.5M",
            likes: "1.5M",
            pages: 689
        ),
        Book(
            title: "Sherlock Holmes: The Hound of the Baskervilles",
            imageName: "sherlock",
            author: "Arthur Conan Doyle",
            publishedOn: "1902",
            rating: 4.7,
            description: "A classic mystery involving a legendary beast.",
            story: """
                Sir Arthur Conan Doyle's "The Hound of the Baskervilles" is one of the most famous Sherlock Holmes mysteries. The story involves the investigation of a legendary beast that is believed to haunt the Baskerville family. Holmes and Dr. Watson uncover the truth behind the legend in this gripping and atmospheric novel.
            """,
            read: "650K",
            likes: "650K",
            pages: 256
        )
    ]),
    Category(name: Tab.romance.rawValue, books: [
        Book(
            title: "Pride and Prejudice",
            imageName: "pride",
            author: "Jane Austen",
            publishedOn: "1813",
            rating: 4.9,
            description: "A classic romance novel about love and societal expectations.",
            story: """
                Jane Austen's "Pride and Prejudice" is a beloved romance novel that follows Elizabeth Bennet as she navigates the social pressures of early 19th-century England. The story explores her evolving relationship with the wealthy and seemingly aloof Mr. Darcy. Themes of love, class, and personal growth are central to this timeless narrative, making it one of the most cherished works in English literature.
            """,
            read: "2M",
            likes: "2M",
            pages: 279
        ),
        Book(
            title: "The Notebook",
            imageName: "notebook",
            author: "Nicholas Sparks",
            publishedOn: "1996",
            rating: 4.4,
            description: "A romantic drama about enduring love.",
            story: """
                "The Notebook" by Nicholas Sparks is a heartwarming tale of enduring love that spans decades. The novel tells the story of Noah Calhoun and Allie Nelson, two young lovers separated by social class and circumstances but reunited later in life. The narrative alternates between their youthful romance and their later years, exploring themes of memory, loss, and the power of love.
            """,
            read: "1.3M",
            likes: "1.3M",
            pages: 214
        ),
        Book(
            title: "Jane Eyre",
            imageName: "jane",
            author: "Charlotte Brontë",
            publishedOn: "1847",
            rating: 4.8,
            description: "A classic novel about love and independence.",
            story: """
                Charlotte Brontë's "Jane Eyre" is a novel that follows the life of an orphaned girl who grows up to become a governess at Thornfield Hall, where she falls in love with the mysterious Mr. Rochester. The novel explores themes of love, morality, and the quest for independence, making it one of the most enduring works of English literature.
            """,
            read: "1.6M",
            likes: "1.6M",
            pages: 507
        ),
        Book(
            title: "Outlander",
            imageName: "outlander",
            author: "Diana Gabaldon",
            publishedOn: "1991",
            rating: 4.7,
            description: "A historical romance involving time travel.",
            story: """
                Diana Gabaldon's "Outlander" combines historical fiction and romance with elements of time travel. The story follows Claire Randall, a nurse who is transported back to 18th-century Scotland, where she falls in love with a Highland warrior. The novel explores themes of love, history, and adventure, and is the first book in a popular series.
            """,
            read: "1.2M",
            likes: "1.2M",
            pages: 627
        )
    ]),
    Category(name: Tab.action.rawValue, books: [
        Book(
            title: "The Bourne Identity",
            imageName: "bourne",
            author: "Robert Ludlum",
            publishedOn: "1980",
            rating: 4.5,
            description: "A thrilling spy novel involving an amnesiac assassin.",
            story: """
                Robert Ludlum's "The Bourne Identity" follows Jason Bourne, an amnesiac who is pursued by assassins as he tries to uncover his identity and escape from his past. The novel is a fast-paced thriller filled with espionage, action, and twists, making it a popular entry in the spy genre and the first book in the Bourne series.
            """,
            read: "850K",
            likes: "850K",
            pages: 512
        ),
        Book(
            title: "Die Hard",
            imageName: "die_hard",
            author: "Roderick Thorp",
            publishedOn: "1979",
            rating: 4.4,
            description: "A high-stakes thriller involving a terrorist attack on a skyscraper.",
            story: """
                "Die Hard" by Roderick Thorp is a thrilling novel about a New York cop who finds himself trapped in a skyscraper taken over by terrorists during a Christmas party. The book is the basis for the famous film of the same name and combines high-octane action with a gripping narrative.
            """,
            read: "900K",
            likes: "900K",
            pages: 352
        ),
        Book(
            title: "The Hunt for Red October",
            imageName: "red_october",
            author: "Tom Clancy",
            publishedOn: "1984",
            rating: 4.6,
            description: "A naval thriller about a Soviet submarine defecting to the U.S.",
            story: """
                Tom Clancy's "The Hunt for Red October" is a suspenseful naval thriller about a Soviet submarine captain who defects to the United States, bringing with him a high-tech submarine capable of altering the balance of power. The novel features intricate details of naval warfare and political intrigue, making it a landmark in the genre.
            """,
            read: "1M",
            likes: "1M",
            pages: 464
        ),
        Book(
            title: "Jack Reacher: Killing Floor",
            imageName: "jack",
            author: "Lee Child",
            publishedOn: "1997",
            rating: 4.7,
            description: "A thriller featuring a former military police officer solving a murder.",
            story: """
                "Killing Floor" by Lee Child introduces Jack Reacher, a former military police officer who gets involved in a murder investigation in a small town. The novel combines action, suspense, and a strong protagonist, establishing Reacher as a popular character in thrillers.
            """,
            read: "950K",
            likes: "950K",
            pages: 352
        )
    ]),
    Category(name: Tab.comedy.rawValue, books: [
        Book(
            title: "Good Omens",
            imageName: "good_omen",
            author: "Neil Gaiman and Terry Pratchett",
            publishedOn: "1990",
            rating: 4.8,
            description: "A comedic novel about an angel and demon teaming up to prevent the apocalypse.",
            story: """
                "Good Omens" by Neil Gaiman and Terry Pratchett is a humorous take on the end of the world. The story follows an angel and a demon who team up to prevent the apocalypse, leading to a series of comedic and bizarre events. The novel blends fantasy, satire, and witty dialogue, making it a beloved classic in comedic literature.
            """,
            read: "1.5M",
            likes: "1.5M",
            pages: 288
        ),
        Book(
            title: "The Hitchhiker's Guide to the Galaxy",
            imageName: "galaxy_1",
            author: "Douglas Adams",
            publishedOn: "1979",
            rating: 4.7,
            description: "A comedic science fiction novel about an intergalactic adventure.",
            story: """
                Douglas Adams' "The Hitchhiker's Guide to the Galaxy" is a classic sci-fi comedy that follows Arthur Dent, an ordinary human who is whisked away on an intergalactic journey. The novel is known for its absurd humor, imaginative universe, and satirical take on life, the universe, and everything.
            """,
            read: "1.6M",
            likes: "1.6M",
            pages: 224
        ),
        Book(
            title: "Bossypants",
            imageName: "bossy",
            author: "Tina Fey",
            publishedOn: "2011",
            rating: 4.5,
            description: "A comedic memoir by comedian Tina Fey.",
            story: """
                Tina Fey's "Bossypants" is a memoir filled with humor and insight into the life of one of comedy's most renowned figures. The book covers Fey's rise in the comedy world, her experiences on "Saturday Night Live," and her take on various aspects of life. Its wit and candidness make it a standout in comedic literature.
            """,
            read: "900K",
            likes: "900K",
            pages: 277
        ),
        Book(
            title: "Where'd You Go, Bernadette",
            imageName: "where_go",
            author: "Maria Semple",
            publishedOn: "2012",
            rating: 4.4,
            description: "A comedic novel about a mother who disappears and the investigation that follows.",
            story: """
                "Where'd You Go, Bernadette" by Maria Semple follows the disappearance of an eccentric mother, Bernadette Fox, and the subsequent investigation conducted by her daughter. The novel blends humor with a mystery plot, exploring themes of family, identity, and modern life.
            """,
            read: "850K",
            likes: "850K",
            pages: 330
        )
    ])
]
let mostReadBooks: [Book] = [
    Book(
        title: "To Kill a Mockingbird",
        imageName: "mocking",
        author: "Harper Lee",
        publishedOn: "1960",
        rating: 4.8,
        description: "A novel about racial injustice in the Deep South.",
        story: """
            "To Kill a Mockingbird" by Harper Lee is a classic novel set in the American South during the 1930s. The story is narrated by Scout Finch, a young girl, and follows her observations of the racial injustices in her town as her father, Atticus Finch, defends a black man accused of raping a white woman. The novel explores themes of morality, innocence, and the complexity of human nature.
        """,
        read: "1M",
        likes: "1M",
        pages: 324
    ),
    Book(
        title: "1984",
        imageName: "1984_1",
        author: "George Orwell",
        publishedOn: "1949",
        rating: 4.7,
        description: "A dystopian novel about totalitarian regime surveillance and control.",
        story: """
            George Orwell's "1984" is set in a totalitarian society governed by the Party, led by Big Brother. The protagonist, Winston Smith, works for the Party but secretly despises it and dreams of rebellion. The novel explores themes of surveillance, propaganda, and the erasure of truth in a society where the government controls every aspect of life. Winston's journey is one of resistance against an oppressive regime.
        """,
        read: "900K",
        likes: "900K",
        pages: 328
    ),
    Book(
        title: "Pride and Prejudice",
        imageName: "pride",
        author: "Jane Austen",
        publishedOn: "1813",
        rating: 4.9,
        description: "A classic romance novel about love and societal expectations.",
        story: """
            Jane Austen's "Pride and Prejudice" is a beloved romance novel that follows Elizabeth Bennet as she navigates the social pressures of early 19th-century England. The story explores her evolving relationship with the wealthy and seemingly aloof Mr. Darcy. Themes of love, class, and personal growth are central to this timeless narrative, making it one of the most cherished works in English literature.
        """,
        read: "2M",
        likes: "2M",
        pages: 279
    ),
    Book(
        title: "The Girl with the Dragon Tattoo",
        imageName: "girl_dragon",
        author: "Stieg Larsson",
        publishedOn: "2005",
        rating: 4.5,
        description: "A mystery thriller involving a journalist and a hacker.",
        story: """
            "The Girl with the Dragon Tattoo" by Stieg Larsson follows the story of journalist Mikael Blomkvist and hacker Lisbeth Salander as they investigate the disappearance of a wealthy patriarch's niece 40 years ago. The novel combines elements of mystery, thriller, and social critique, and is known for its gripping plot and complex characters.
        """,
        read: "1.3M",
        likes: "1.3M",
        pages: 465
    )
]
