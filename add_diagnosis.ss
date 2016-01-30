
> pre
+I want to (add |create ) a [new] diagnosis,
-{keep} Ok.  So that I can make sure I get this correctly, please use the format "Add a diagnosis of x" For this demo, we only have cardio related diagnoses.  {topic=add_diagnosis}


> topic: add_diagnosis

+ add a diagnosis of <diag1>
- {keep} {@__add_diagnosis_to_list__}

+ __add_next_diagnosis
- What is the next diagnosis?




+__add_diagnosis_to_list__
- {keep}Ok, I will add the diagnosis of <diag1>.  Do you want to add another?  If you do, please say "Yes, I want to add another diagnosis".

   + yes, I want to add another diagnosis.
   % Ok, I will add the diagnosis of <diag1>.  Do you want to add another? ^addNewDiagnosis(diag1)
   -{keep}{@__add_next_diagnosis__}

       + no, i am finished
       % Ok, I will add the diagnosis of <diag1>.  Do you want to add another?
       - {keep}Great.  Please review the list of diagnoses.  Are they correct?  ^showDiagnosisList

           + ~yes
           % Great.  Please review the list of diagnoses.  Are they correct?
           - {keep}Lets move on to our procedures {topic=add_procedure}

           + ~no
           % Great.  Please review the list of diagnoses.  Are they correct?
           - Sorry about that.  Please let me know the number of the incorrect diagnosis

               + * number <wrongDiagnosis> is *
               % Sorry about that.  Please let me know the number of the incorrect diagnosis.
               - {keep} No worries!  Lets correct that.  So we are going to change line <wrongDiagnosis> ^changeWrongDiagnosis(wrongDiagnosis)

                   + ~yes
                   % No worries!  Lets correct that.  So we are going to change line *
                   - {keep}what is the correct diagnosis?

                       + It should be <correctDiagnosis>
                       % what is the correct diagnosis?
                       - {keep} Got it.  I'll change it to <correctDiagnosis>.  Is there another correction?

                        ~yes *
                        % * Is there another correction?
                        - {keep}Sorry, what line number is it? ^showDiagnosisList

                        + [line | number] <wrongDiagnosis2>
                        % Sorry, what line number is it?
                        - {keep}what is the correct diagnosis?

                       ~no [*]
                       % Is there another correction?
                       -{keep} Okay then.  Lets move on to our procedures. {topic=add_procedure}
< topic











