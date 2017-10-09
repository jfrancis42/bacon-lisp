# bacon-lisp
A Common Lisp client to fetch delicious bacon ipsum from the web.

The web site https://baconipsum.com provides wonderful, delicious
bacon ipsum to act as a placeholder in documents. This package
provides an easy way to fetch precisely the filler you're looking for.

There are several optional flags that may be specified when calling
bacon-ipsum:

* meat-and-filler - Provides additional filler text (defaults to the
  equivalent of all-meat).
  
* start-with-lorem - Starts the returned text with the phrase "Bacon
  ipsum dolor sit amet..."
  
* sentences - Allows the user to specify the number of meaty sentences
  (defaults to paragraphs).
  
* paras - Allows the user to specify the number of returned paragraphs
  (defaults to five).

Note that the text is returned as a list of sentences (text strings).
  
```
BACON> (bacon:bacon-ipsum :start-with-lorem t :paras 1)
("Bacon ipsum dolor amet biltong drumstick ground round kevin hamburger salami boudin leberkas capicola pork belly bresaola.  Pork belly turkey tri-tip spare ribs.  Sirloin chicken ground round drumstick salami tongue pork loin frankfurter meatloaf pork belly.  Ribeye tri-tip ham ground round t-bone.  Tail biltong alcatra bacon short ribs hamburger.")
BACON> 
```
