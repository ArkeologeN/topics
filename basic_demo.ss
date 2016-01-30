



>topic:keep patient_name

+ _what_is_patient_name
- what is the patient's name?




    + [ their name is ] <pFname> <pLname>.
    % What is the patient's name
    - Ok, so their name is <pFname> <pLname>, right?

        + ~yes
        % Ok, so their name is <pFname> <pLname>, right?
        + ok. ^acceptPatientName(pFname, pLname) {topic=add_diagnosis}

        + ~no
        % Ok, so their name is <pFname> <pLname>, right?
        - Sorry about that {@_what_is_patient_name}







