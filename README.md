## [HOEVDPROSJEKT.TEAM](hovedprosjekt.team)

![Logo](https://s3.amazonaws.com/hovedprosjekt-shared/061608-blue-tiedyed-cloth-icon-people-things-people-audience.png)

### PRECONDITIONS:
1. You have Ruby on Rails. If not:
   + and you are using Linux/OS X:
      - `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`
      - `\curl -sSL https://get.rvm.io | bash -s stable --rails`
   + and you are using Windows:
      - don't even think...
      - consider using Linux/OS X
      - take a [look](https://i.ytimg.com/vi/WWg2ibh4wI0/hqdefault.jpg)
      - [help yourself](https://www.google.no/search?q=ruby+on+rails+windows&oq=ruby+on+&aqs=chrome.3.0j69i64j0l4.8134j0j7&sourceid=chrome&ie=UTF-8)
2. Install postgersql:
    + Ubuntu:
        - `sudo apt-get update`
        - `sudo apt-get install libpq-dev` or [visit you best friend](http://stackoverflow.com/a/23836958/5552809)
    + OS X:
        - Install [Homebrew](http://brew.sh/) if you don't have one.
        - run `brew install postgres`
        - if it does not help, [visit your best friend](http://stackoverflow.com/questions/19262312/installing-pg-gem-on-os-x-failure-to-build-native-extension)
    + Windows:
        - Very simple [step](https://www.postgresql.org/download/windows/)
3. Install node.js:
    + Ubuntu:
        - `sudo apt-get install nodejs`
    + OS X:
        - get installer [here](https://nodejs.org/en/download/)
    + Windows:
        - get installer [here](https://nodejs.org/en/download/)
4. Consider using IDE:
    + [RubyMine](https://www.jetbrains.com/ruby/?fromMenu)
    + [Cloude9](https://c9.io/signup)
5. When you are done with 1-4, open the project in terminal and run:
    - `bundle install`
    - `rake db:migrate`
    - start server, open [localhost:3000](http://localhost:3000) and enjoy
    

### REQUIREMENTS FOR DEVELOPMENT:
1. All changes should be made in separate branches. Master branch is used for deployments to heroku, i.e. it should always contain functional version.
2. Install [imagemagick](http://www.imagemagick.org/script/binary-releases.php) for image management.
3. Run `rake db:setup` to populate production database with data from [db:seeds.rb](db/seeds.rb). Here can you find admin user name and password.
4. To login as admin open [localhost:3000/admin](http://localhost:3000/admin). You can logout by visiting [localhost:3000/admin/logout](http://localhost:3000/admin/logout)
5. All [static pages](app/views/pages) can be opened in browser by appending `pages/{page_name}` to [localhost:3000](http://localhost:3000) (for example [contact](app/views/pages/contact.html.erb) can be opened by visiting [localhost:3000/pages/contact](http://localhost:3000/pages/cantact)).

### IMAGE UPLOAD:
1. Open [hovedprosjekt.team/admin](http://hovedprosjekt.team/admin) or [hovedprosjekt.team/images](http://hovedprosjekt.team/images) and login as admin.
2. Click on [New image](http://hovedprosjekt.team/images/new).
3. Open [hovedprosjekt.team/images](http://hovedprosjekt.team/images) or press `Back`button.
4. Now you can use image url form the list of images in your code.
