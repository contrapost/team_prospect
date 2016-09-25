# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin
Admin.create(email: 'awesome@admin.com', password: '123456789', password_confirmation: '123456789')

#Fields of study

# HOMER
FieldOfStudyInWesterdal.create(name: 'Programming', description: 'Programming is cool', link: 'https://ourschool.com/studies/programming')
FieldOfStudyInWesterdal.create(name: 'Intelligent systems', description: 'Intelligent systems are very cool', link: 'https://ourschool.com/studies/intelligent')
FieldOfStudyInWesterdal.create(name: 'Interactive design', description: 'Interactive design is so cool', link: 'https://ourschool.com/studies/interactive')
FieldOfStudyInWesterdal.create(name: 'E-business', description: 'E-business is the best', link: 'https://ourschool.com/studies/ebusiness')

#Group members
homer = GroupMember.create(first_name: 'Homer', last_name: 'Simpson', phone: '23456789', email: 'homer@simpson.com')
homer.field_of_study_in_westerdal_id = 4
homer_skill = Skill.create(name: 'git')
homer_skill2 = Skill.create(name: 'statistic')

homer.skills << homer_skill
homer.skills << homer_skill2

homer_bio = Bio.create(paragraph: "First paragraph of Homer's bio")
homer_bio2 = Bio.create(paragraph: "Second paragraph of Homer's bio")
homer.bios << homer_bio
homer.bios << homer_bio2

homer_education = Education.create(start: DateTime.now, end: DateTime.now, institution_name: 'Harvard', field_of_study: 'rocket science')
homer.educations << homer_education

homer_link = Link.create(link_address: 'https://www.github.com/homer')
homer_link2 = Link.create(link_address: 'https://www.linkedin.com/homer')

homer.links << homer_link
homer.links << homer_link2

homer_personal_text = PersonalText.create(paragraph: "I'm Homer and I'm cool")
homer_personal_text2 = PersonalText.create(paragraph: 'Potato cheeps!!! M-m-m-m-m')

homer.personal_texts << homer_personal_text
homer.personal_texts << homer_personal_text2

homer_work_experience = WorkExperience.create(start: DateTime.now, end: DateTime.now, company: 'Nuclear power plant', position: 'Operational chief', optional_info: 'dangerous one')

homer.work_experiences << homer_work_experience

homer.save

# BARNEY
barney = GroupMember.create(first_name: 'Barney', last_name: 'Gumble', phone: '32546798', email: 'barney@gumble.com')
barney.field_of_study_in_westerdal_id = 2
barney_skill = Skill.create(name: 'git')
barney_skill2 = Skill.create(name: 'java')

barney.skills << barney_skill
barney.skills << barney_skill2

barney_bio = Bio.create(paragraph: "First paragraph of Barney's bio")
barney_bio2 = Bio.create(paragraph: "Second paragraph of Barney's bio")
barney.bios << barney_bio
barney.bios << barney_bio2

barney_education = Education.create(start: DateTime.now, end: DateTime.now, institution_name: 'Oxford', field_of_study: 'cosmology')
barney.educations << barney_education

barney_link = Link.create(link_address: 'https://www.github.com/barney')
barney_link2 = Link.create(link_address: 'https://www.linkedin.com/barney')

barney.links << barney_link
barney.links << barney_link2

barney_personal_text = PersonalText.create(paragraph: "I'm Barney and I'm cool")
barney_personal_text2 = PersonalText.create(paragraph: 'How european. Burp!')

barney.personal_texts << barney_personal_text
barney.personal_texts << barney_personal_text2

barney_work_experience = WorkExperience.create(start: DateTime.now, end: DateTime.now, company: 'Chopper firm', position: 'Chopper pilot', optional_info: 'very dangerous one')

barney.work_experiences << barney_work_experience

barney.save

# Moe Szyslak
moe = GroupMember.create(first_name: 'Moe', last_name: 'Szyslak', phone: '85697421', email: 'moe@szyslak.com')

moe.field_of_study_in_westerdal_id = 1

moe_skill = Skill.create(name: 'git')
moe_skill2 = Skill.create(name: 'c#')
moe_skill3 = Skill.create(name: 'java')
moe_skill4 = Skill.create(name: 'c')
moe.skills << moe_skill
moe.skills << moe_skill2
moe.skills << moe_skill3
moe.skills << moe_skill4

moe_bio = Bio.create(paragraph: "First paragraph of Moe's bio")
moe_bio2 = Bio.create(paragraph: "Second paragraph of Moe's bio")
moe.bios << moe_bio
moe.bios << moe_bio2

moe_education = Education.create(start: DateTime.now, end: DateTime.now, institution_name: 'Sorbonne', field_of_study: 'chemistry')
moe.educations << moe_education

moe_link = Link.create(link_address: 'https://www.github.com/moe')
moe_link2 = Link.create(link_address: 'https://www.linkedin.com/moe')
moe.links << moe_link
moe.links << moe_link2

moe_personal_text = PersonalText.create(paragraph: "I'm Moe and I'm cool")
moe_personal_text2 = PersonalText.create(paragraph: 'Get out!')
moe.personal_texts << moe_personal_text
moe.personal_texts << moe_personal_text2

moe_work_experience = WorkExperience.create(start: DateTime.now, end: DateTime.now, company: 'Moe’s tavern', position: 'bartender/owner', optional_info: 'beer disposal')
moe.work_experiences << moe_work_experience

moe.save

# Chief Wiggum
wiggum = GroupMember.create(first_name: 'Chief', last_name: 'Wiggum', phone: '91191111', email: 'wiggum@police.com')

wiggum.field_of_study_in_westerdal_id = 3

wiggum_skill = Skill.create(name: 'git')
wiggum_skill2 = Skill.create(name: 'algorithms')
wiggum_skill3 = Skill.create(name: 'data structures')
wiggum_skill4 = Skill.create(name: 'c')
wiggum.skills << wiggum_skill
wiggum.skills << wiggum_skill2
wiggum.skills << wiggum_skill3
wiggum.skills << wiggum_skill4

wiggum_bio = Bio.create(paragraph: "First paragraph of Wiggum's bio")
wiggum_bio2 = Bio.create(paragraph: "Second paragraph of Wiggum's bio")
wiggum.bios << wiggum_bio
wiggum.bios << wiggum_bio2

wiggum_education = Education.create(start: DateTime.now, end: DateTime.now, institution_name: 'University of Oslo', field_of_study: 'low science')
wiggum.educations << wiggum_education

wiggum_link = Link.create(link_address: 'https://www.github.com/wiggum')
wiggum_link2 = Link.create(link_address: 'https://www.linkedin.com/wiggum')
wiggum.links << wiggum_link
wiggum.links << wiggum_link2

wiggum_personal_text = PersonalText.create(paragraph: "I'm Wiggum and I'm suppper police officer")
wiggum_personal_text2 = PersonalText.create(paragraph: 'Plant the evidence on them!')
wiggum.personal_texts << wiggum_personal_text
wiggum.personal_texts << wiggum_personal_text2

wiggum_work_experience = WorkExperience.create(start: DateTime.now, end: DateTime.now, company: 'Police office of Springfield', position: 'Police Chief', optional_info: 'a conscious pun')
wiggum.work_experiences << wiggum_work_experience

wiggum.save

# News

# First
news = News.create(title: 'Non-breaking news')

news_paragraph = NewsParagraph.create(paragraph: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum, sem at eleifend tristique, elit neque pretium libero, vel posuere mauris nunc vitae libero. Proin ac efficitur turpis, sit amet rhoncus purus. Morbi vestibulum mauris sit amet ligula mattis imperdiet. Mauris imperdiet dolor arcu, ut eleifend mauris vulputate in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi. Aenean tincidunt in diam vitae scelerisque. Maecenas porta facilisis felis, in commodo mi congue at. Nullam tempus finibus mauris vel malesuada. Fusce eget metus vitae metus congue maximus. Integer nec elit in lectus vestibulum convallis nec faucibus libero. Cras vel gravida massa, et scelerisque eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris tristique ac dolor at molestie.')
news_paragraph2 = NewsParagraph.create(paragraph: 'Sed pretium placerat purus quis varius. Nam dictum libero id sapien malesuada tincidunt. Suspendisse potenti. Morbi id tortor aliquam felis sodales venenatis. Nulla sodales diam turpis, eu congue urna pharetra vitae. Aliquam placerat facilisis quam quis faucibus. Nunc nec egestas ligula. Proin condimentum sit amet est vitae laoreet. Proin congue posuere lectus ac ullamcorper. Phasellus quis ante sed sem ornare aliquam. Fusce at nunc eu lorem mollis tempus vel at arcu. Mauris iaculis congue orci, sed tincidunt nunc imperdiet nec.')
news_paragraph3 = NewsParagraph.create(paragraph: 'Maecenas blandit risus urna, sed viverra ante consectetur vitae. Aliquam eget quam sed ipsum interdum sodales. Pellentesque eget facilisis lorem. Quisque dolor magna, facilisis quis semper ut, molestie at urna. Suspendisse ac mauris tempor, maximus enim vitae, accumsan nisl. Mauris porta molestie vestibulum. Cras in lorem nec metus congue aliquam nec vitae neque. Donec eu lacus sagittis, cursus nunc nec, scelerisque neque. Duis nec rutrum leo, et ullamcorper eros. Curabitur aliquam id nisl sed posuere.')
news_paragraph4 = NewsParagraph.create(paragraph: 'Curabitur consequat turpis elit, tincidunt rhoncus turpis viverra id. Sed dignissim sodales turpis, ac ultrices lectus tempus vitae. Integer a luctus lacus, sed ornare turpis. Morbi euismod ligula sollicitudin lorem placerat, in aliquam turpis convallis. Curabitur faucibus augue leo, quis lobortis orci laoreet et. Vestibulum feugiat commodo felis, quis viverra purus dictum vehicula. Nulla facilisi. Fusce sodales risus bibendum efficitur ultricies.')
news_paragraph5 = NewsParagraph.create(paragraph: 'Proin sagittis faucibus augue, sed consequat mauris finibus nec. In rutrum iaculis viverra. Nam vulputate lacus id erat elementum, sed faucibus arcu fermentum. Integer at velit lacus. Proin elementum eros sem, nec rhoncus lorem tincidunt quis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed at ipsum metus.')

news.news_paragraphs << news_paragraph
news.news_paragraphs << news_paragraph2
news.news_paragraphs << news_paragraph3
news.news_paragraphs << news_paragraph4
news.news_paragraphs << news_paragraph5

news.save

# Second
news2 = News.create(title: 'Breaking news2')

news2_paragraph = NewsParagraph.create(paragraph: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dictum, sem at eleifend tristique, elit neque pretium libero, vel posuere mauris nunc vitae libero. Proin ac efficitur turpis, sit amet rhoncus purus. Morbi vestibulum mauris sit amet ligula mattis imperdiet. Mauris imperdiet dolor arcu, ut eleifend mauris vulputate in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla facilisi. Aenean tincidunt in diam vitae scelerisque. Maecenas porta facilisis felis, in commodo mi congue at. Nullam tempus finibus mauris vel malesuada. Fusce eget metus vitae metus congue maximus. Integer nec elit in lectus vestibulum convallis nec faucibus libero. Cras vel gravida massa, et scelerisque eros. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris tristique ac dolor at molestie.')
news2_paragraph2 = NewsParagraph.create(paragraph: 'Sed pretium placerat purus quis varius. Nam dictum libero id sapien malesuada tincidunt. Suspendisse potenti. Morbi id tortor aliquam felis sodales venenatis. Nulla sodales diam turpis, eu congue urna pharetra vitae. Aliquam placerat facilisis quam quis faucibus. Nunc nec egestas ligula. Proin condimentum sit amet est vitae laoreet. Proin congue posuere lectus ac ullamcorper. Phasellus quis ante sed sem ornare aliquam. Fusce at nunc eu lorem mollis tempus vel at arcu. Mauris iaculis congue orci, sed tincidunt nunc imperdiet nec.')
news2_paragraph3 = NewsParagraph.create(paragraph: 'Maecenas blandit risus urna, sed viverra ante consectetur vitae. Aliquam eget quam sed ipsum interdum sodales. Pellentesque eget facilisis lorem. Quisque dolor magna, facilisis quis semper ut, molestie at urna. Suspendisse ac mauris tempor, maximus enim vitae, accumsan nisl. Mauris porta molestie vestibulum. Cras in lorem nec metus congue aliquam nec vitae neque. Donec eu lacus sagittis, cursus nunc nec, scelerisque neque. Duis nec rutrum leo, et ullamcorper eros. Curabitur aliquam id nisl sed posuere.')
news2_paragraph4 = NewsParagraph.create(paragraph: 'Curabitur consequat turpis elit, tincidunt rhoncus turpis viverra id. Sed dignissim sodales turpis, ac ultrices lectus tempus vitae. Integer a luctus lacus, sed ornare turpis. Morbi euismod ligula sollicitudin lorem placerat, in aliquam turpis convallis. Curabitur faucibus augue leo, quis lobortis orci laoreet et. Vestibulum feugiat commodo felis, quis viverra purus dictum vehicula. Nulla facilisi. Fusce sodales risus bibendum efficitur ultricies.')
news2_paragraph5 = NewsParagraph.create(paragraph: 'Proin sagittis faucibus augue, sed consequat mauris finibus nec. In rutrum iaculis viverra. Nam vulputate lacus id erat elementum, sed faucibus arcu fermentum. Integer at velit lacus. Proin elementum eros sem, nec rhoncus lorem tincidunt quis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed at ipsum metus.')

news2.news_paragraphs << news2_paragraph
news2.news_paragraphs << news2_paragraph2
news2.news_paragraphs << news2_paragraph3
news2.news_paragraphs << news2_paragraph4
news2.news_paragraphs << news2_paragraph5

news2.save

