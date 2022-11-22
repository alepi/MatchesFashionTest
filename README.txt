// NOTICE: in the assignment it talks about converting from GPB
// the server returns prices in EUR
//
// Could it be because I am currently accessing the server from Italy?
// If that was the case, then testing my software on the reviewer side may not work well...

---------------------------------------------------------------------------------------------

NOTICE: I am not implementing the requested currency conversion API calls as I don't want to
sign up to a website I am probably not going to use ever again just to get an API key for
a test.
I believe that this should not be required for just writing a test to show my programming skills.

It would take me about half an hour more to do some basic implementation of an API call for
currency conversion.

However, I added in the UI for currency conversion and a bogus fixed conversion rate of 0.5.

The UI works fine and the API call would be just one call at the beginning of the app,
maybe with a timer to repeat it if some sort of live conversion is needed. In a real world
situation I would expect the server to return the price in different currencies itself,
as there may be other factors besides the rate exchange influencing the price of a product.

---------------------------------------------------------------------------------------------

Offline mode implementation would be done depending on the amount of data and how often it changes.
For a catalogue of producs with the amount of items we have here, saving the server JSON data
would probably suffice and would be done in say half an hour.
For a bigger catalog with more complex and bigger data I would use something like CoreData or similar
 and the time would depend on the complexity of the data itself.

Let's say that to store the full server response to the call I was given in CoreData models it would
be 2/3 hours work to properly model and test it and a few more hours to update the rest of the code
to use it.

To complete this project I took approximately one day, including all the crashes and issues I got
with Xcode and a lot of web searches for learning more: I am not an expert in SwiftUI or combine,
although I used MVVM and reactive programming before.
