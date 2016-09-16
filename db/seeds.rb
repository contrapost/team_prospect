# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Admin.create(email: 'awesome@admin.com', password: '123456789', password_confirmation: '123456789')

GroupMember.create(first_name: 'Homer', last_name: 'Simpson',
                   description: 'Homer Jay Simpson is a fictional character and the main protagonist of the American animated television series The Simpsons as the patriarch of the eponymous family. He is voiced by Dan Castellaneta and first appeared on television, along with the rest of his family, in The Tracey Ullman Show short "Good Night" on April 19, 1987. Homer was created and designed by cartoonist Matt Groening while he was waiting in the lobby of James L. Brooks\' office. Groening had been called to pitch a series of shorts based on his comic strip Life in Hell but instead decided to create a new set of characters. He named the character after his father, Homer Groening. After appearing for three seasons on The Tracey Ullman Show, the Simpson family got their own series on Fox that debuted December 17, 1989.

Homer and his wife Marge have three children: Bart, Lisa, and Maggie. As the family\'s provider, he works at the Springfield Nuclear Power Plant. Homer embodies several American working class stereotypes: he is a crude, bald, overweight, incompetent, clumsy, lazy, heavy drinking, ignorant and idiotic person; however, he is essentially a decent man and fiercely devoted to his family. Despite the suburban blue-collar routine of his life, he has had a number of remarkable experiences.

In the shorts and earlier episodes, Castellaneta voiced Homer with a loose impression of Walter Matthau; however, during the second and third seasons of the half-hour show, Homer\'s voice evolved to become more robust, to allow the expression of a fuller range of emotions. He has appeared in other media relating to The Simpsons – including video games, The Simpsons Movie, The Simpsons Ride, commercials and comic books – and inspired an entire line of merchandise. His signature catchphrase, the annoyed grunt "Doh!", has been included in The New Oxford Dictionary of English since 1998 and the Oxford English Dictionary since 2001.

Homer is one of the most influential characters in the history of television. The British newspaper The Sunday Times described him as "the greatest comic creation of [modern] time". He was named the greatest character "of the last 20 years" in 2010 by Entertainment Weekly, was ranked the second greatest cartoon character by TV Guide, behind Bugs Bunny, and was voted the greatest television character of all time by Channel 4 viewers. For voicing Homer, Castellaneta has won four Primetime Emmy Awards for Outstanding Voice-Over Performance and a special-achievement Annie Award. In 2000, Homer and his family were awarded a star on the Hollywood Walk of Fame.',
                   phone: '32517489', email: 'homer@simpson.com')
GroupMember.create(first_name: 'Bart', last_name: 'Simpson',
                   description: 'Bartholomew JoJo "Bart" Simpson is a fictional character in the American animated television series The Simpsons and part of the Simpson family. He is voiced by Nancy Cartwright and first appeared on television in The Tracey Ullman Show short "Good Night" on April 19, 1987. Cartoonist Matt Groening created and designed Bart while waiting in the lobby of James L. Brooks\' office. Groening had been called to pitch a series of shorts based on his comic strip, Life in Hell, but instead decided to create a new set of characters. While the rest of the characters were named after Groening\'s family members, Bart\'s name is an anagram of the word brat. After appearing on The Tracey Ullman Show for three years, the Simpson family received its own series on Fox, which debuted December 17, 1989.

At ten years old, Bart is the eldest child and only son of Homer and Marge, and the brother of Lisa and Maggie. Bart\'s most prominent and popular character traits are his mischievousness, rebelliousness and disrespect for authority. He has appeared in other media relating to The Simpsons – including video games, The Simpsons Movie, The Simpsons Ride, commercials, and comic books – and inspired an entire line of merchandise.

In casting, Nancy Cartwright originally planned to audition for the role of Lisa, while Yeardley Smith tried out for Bart. Smith\'s voice was too high for a boy, so she was given the role of Lisa. Cartwright found that Lisa was not interesting at the time, so instead auditioned for Bart, which she thought was a better role.[1]

Hallmarks of the character include his chalkboard gags in the opening sequence; his prank calls to Moe; and his catchphrases "Eat my shorts", "¡Ay, caramba!", and "Don\'t have a cow, man!"

During the first two seasons of The Simpsons, Bart was the show\'s breakout character and "Bartmania" ensued, spawning Bart Simpson-themed merchandise touting his rebellious attitude and pride at underachieving, which caused many parents and educators to cast him as a bad role model for children. Around the third season, the series started to focus more on the family as a whole, though Bart still remains a prominent character. Time named Bart one of the 100 most important people of the 20th century, and he was named "entertainer of the year" in 1990 by Entertainment Weekly. Nancy Cartwright has won several awards for voicing Bart, including a Primetime Emmy Award in 1992 and an Annie Award in 1995. In 2000, Bart, along with the rest of his family, was awarded a star on the Hollywood Walk of Fame.',
                   phone: '23653476', email: 'bart@simpson.com')
