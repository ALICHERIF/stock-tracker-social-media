// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "script"; // then your other imports that use `$`
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import * as jquery from "jquery"
document.addEventListener('turbo:load', function() {
    $(document).on('click', '.close', function() {
        $(this).closest('.alert').fadeOut();
    });
});
