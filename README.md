## [HOEVDPROSJEKT.TEAM](hovedprosjekt.team)


### REQUIREMENTS FOR DEVELOPMENT:
1. All changes should be made in separate branches. Master branch is used for deployments to heroku, i.e. it should always contain functional version.
2. Install [imagemagick](http://www.imagemagick.org/script/binary-releases.php) for image management.
3. Run `rake db:setup` to populate production database with data from [db:seeds.rb](db/seeds.rb). Here can you find admin user name and password.
4. To login as admin open [localhost:3000/admin](http://localhost:3000/admin). You can logout by visiting [localhost:3000/admin/logout](http://localhost:3000/admin/logout)
5. All [static pages](app/views/pages) can be opened in browser by appending `pages/{page_name}` to [localhost:3000](http://localhost:3000) (for example [contact](app/views/pages/contact.html.erb) can be opened by visiting [localhost:3000/pages/contact](http://localhost:3000/pages/cantact)).

### IMAGE UPLOAD:
1. Open [hovedprosjekt.com/admin](http://hovedprosjekt.com/admin) or [hovedprosjekt.com/images](http://hovedprosjekt.com/images) and login as admin.
2. Click on [New image](http://hovedprosjekt.com/images/new).
3. Open [hovedprosjekt.com/images](http://hovedprosjekt.com/images) or press `Back`button.
4. Now you can use image url form the list of images in your code.
