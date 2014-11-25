# Photogram

http://ask.initialversion.com/t/photogram/127

I've already generated all of the resources for you. Next, we need to improve the interface.

 - Add all association helper methods.
 - Add all validations.
 - For all foreign key fields in forms, replace `<input type="text" ...>` with `<%= select_tag ... %>`.
 - For all views with raw foreign keys being displayed, display something more useful instead.

Next,

 - On the show page for a photo, display the comments that belong to that photo.
 - Similarly, on the photos index page, display the comments for each photo beneath the photo.

Next,

 - On the show page for a photo, display a form to add a new comment. The form should have inputs for all the params required by the Comments#create action (`:content`, `:photo_id`, `:commenter_id`). Pre-fill as much as possible.
 - Similarly, on the photos index page, display a form to add a new comment to each photo beneath the photo.
