1- assets in the asset folder (images and sound)
2- lib/main.dart the main fie to run the app
3- lib/screens/home_page:
            - the app screens code (homepage)==> (rest of pages)
            - 'category_item.dart' to contain all the item on the home page
            - in homepage call the category component on the navigate to each screen
4- lib/screens/:
            - all pages UI is built in lib/components/list_item.dart
            - the model (Item) in lib/odels/item.dart was create to take the data for each item
            - in each page a list of the data was created of type (Item)
            - ListItem custom widget in each page in ListView.builder widget            
5- lib/screens/phrases_page.dart:
            - custom widget phrasesItem was created in lib/components/list_item.dart to build the phrases screen UI
            