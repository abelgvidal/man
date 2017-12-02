# rails

## creating al the scaffold for a resource
```
./bin/rails generate scaffold Product title:string description:text image_url:string price:decimal
Running via Spring preloader in process 23
      invoke  active_record
      create    db/migrate/20171202200728_create_products.rb
      create    /models/product.rb
      invoke    test_unit
      create      test/models/product_test.rb
      create      test/fixtures/products.yml
      invoke  resource_route
       route    resources :products
      invoke  scaffold_controller
      create    /controllers/products_controller.rb
      invoke    erb
      create      /views/products
      create      /views/products/index.html.erb
      create      /views/products/edit.html.erb
      create      /views/products/show.html.erb
      create      /views/products/new.html.erb
      create      /views/products/_form.html.erb
      invoke    test_unit
      create      test/controllers/products_controller_test.rb
      invoke    helper
      create      /helpers/products_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      /views/products/index.json.jbuilder
      create      /views/products/show.json.jbuilder
      create      /views/products/_product.json.jbuilder
      invoke  test_unit
      create    test/system/products_test.rb
      invoke  assets
      invoke    coffee
      create      /assets/javascripts/products.coffee
      invoke    scss
      create      /assets/stylesheets/products.scss
      invoke  scss
      create    /assets/stylesheets/scaffolds.scss
``` 
## migrations

```
./bin/rake db:create
./bin/rake db:migrate
```
