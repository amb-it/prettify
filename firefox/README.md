#Firefox settings

### Move FindBar to the top

 steps:
 1.  Go into Firefox 'active porfile folder'
 
        at my PC it is **~/.mozilla/firefox/it1opjuu.default**
 
        title **it1opjuu** is unique for every user. Find your.
        
 2. Create folder named **chrome**
        ```
        mkdir chrome && cd chrome
        ```
 3. Create file **userChrome.css**
        ```
        touch userChrome.css
        ``` 
 4. Paste this code into it:
    ```
    /* Move Find Bar above the page*/
    .browserContainer > findbar {
      -moz-box-ordinal-group: 0;
    }
    ```
 5. Restart Firefox