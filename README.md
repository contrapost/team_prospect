## [HOEVDPROSJEKT.TEAM](hovedprosjekt.team)


### REQUIREMENTS FOR DEVELOPMENT:
1. All changes should be made in separate branches. Master branch is used for deployments to heroku, i.e. it should always contain functional version.
2. Install imagemagick for image management - http://www.imagemagick.org/script/binary-releases.php
3. Run `rake db:setup` to populate production database with data from [db:seeds.rb](db/seeds.rb). Here can you find admin user name and password.
4. To login as admin open [localhost:3000/admin](localhost:3000/admin). You can logout by visiting [localhost:3000/admin/logout](localhost:3000/admin/logout)
5. All [static pages](app/views/pages) can be opened in browser by appending `pages/{page_name}` to [localhost:3000](localhost:3000) (for example [contact](app/views/pages/contact.erb.html) can be opened by visiting [localhost:3000/pages/contact](localhost:3000/pages/cantact)).

