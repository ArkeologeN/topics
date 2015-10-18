+ conversation
- What is your name?

    + [my name is] *1
    % * what is your name
    - So your first name is <cap1>?
    
        + ~yes
        % so your first name is *
        - Okay good.

        + *
        % so your first name is *
        - Oh, lets try this again... {@conversation}

    + *
    % * what is your name
    - I don't get it. {@conversation}

+ *
- Let's talk about something else now. {topic=new_topic}