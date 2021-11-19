For remove the ability to register please comment the line  "return view('auth.register');" as given path:
vendor\laravel\ui\auth-backent\RegistersUsers.php 

Create admin user run the following command:
php artisan db:seed --class=UserAuthSeeder
