App to track glucose readings and render dosage. App will track and record all readings in database and be searchable. App should allow more than one user.
## User
* first_name - string
* last_name - string
* email - string
* password
* has_many readings

## Reading
* glucose_level - int
* belong_to user
