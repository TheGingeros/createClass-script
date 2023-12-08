# createClass Script

Very simple bash script to create .hpp and .cpp files for a custom class name in C++.

* ## Usage Guide:
  #### 1. Download the *createClass.sh* file from this repository  
  #### 2. Place it somewhere, where you store your custom bash scripts or just create a new directory for it
  ##### First in your home directory ( ~$ ) create the *scripts* directory or use your existing one  
  1.       mkdir scripts
  ##### Secondly move the downloaded .sh file to the newly created directory
  2.       mv ~/Downloads/createClass.sh ./scripts/
  #### 3. Give the .sh file appropriate permissions so that you can run it
  ##### Still in my home directory where my *scripts* folder is located
  1.       chmod +x ~/scripts/createClass.sh
  #### 4. Add the script to your known custom alises so you can run it easily
  ##### Again starting in my home directory, I locate my *~/.bashrc* file where I store my custom alises (You might use different one) and open it
  1.       nano ~/.bashrc
  ##### With the file open, navigate to the bottom and add:
  2.       alias createClass='~/scripts/createClass.sh'
  ###### \<createClass> after *alias* can be whatever you want, this is a custom naming for the alias
  ##### Save the file by pressing *CTRL+X*, afterwards press *Y* and *ENTER* to confirm
  #### 5. Update the ~/.bashrc file to recognise the newly added alias
        source ~/.bashrc
  #### 6. Use the custom alias to run the script with your designeted custom C++ class name
        createClass <className>
    

  ###### \<className> is the custom name for your C++ class.

  

* ## Info:
  Feel free to edit this as you like. Create issue or contact me on discord *@gingeros* with any problems or questions.

  Enjoy!
  
