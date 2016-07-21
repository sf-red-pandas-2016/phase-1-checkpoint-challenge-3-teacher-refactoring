# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?

When setting default variables in a class, we can use the pipe operator '||' to include default options if our hash does not include a value for that attribute. However, when the input is 'nil' (false-y) or 'false', the pipe operator will always select the value on the other side of the pipe. Hash.fetch helps us to include default variables without worrying about their false-y-ness or other default setting conflicts.

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?



3. Why are these classes initialized with an options hash?

Hash initializations allow for a flexible number of arguments to be entered, so the user or program initializing a class instance doesn't have to worry about all of the parameters every time, even if they don't need to overwrite them.

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?

Inside of classes, we still want our methods to be single responsibility; however, to do that, we might need to create other helper functions that make our code more modular and readable. But, we don't want these functions called from outside the class (i.e. when that function is only supposed to be used by another class function and doing so otherwise would inappropriately change the class state.) To signal to fellow coders and to ourselves and protect us from making undesired changes, we can declare private methods that won't work when called outside the class.

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?
