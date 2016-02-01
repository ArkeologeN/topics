
> pre
+I want to (add|create) a [new] procedure,
-{keep} Ok.  So that I can make sure I get this correctly, please use the format "Add a procedure of x" For this demo, we only have cardio related diagnoses.  {topic=add_procedure}


> topic: add_procedure

+ add a procedure of <diag1>
- {keep} {@__add_procedure_to_list__}

+ __add_next_procedure
- What is the next procedure?




+__add_procedure_to_list__
- {keep}Ok, I will add the procedure of <diag1>.  Do you want to add another?  If you do, please say "Yes, I want to add another procedure".

   + yes, I want to add another procedure.
   % Ok, I will add the procedure of <diag1>.  Do you want to add another? ^addNewProcedure(diag1)
   -{keep}{@__add_next_procedure__}

       + no, i am finished
       % Ok, I will add the procedure of <diag1>.  Do you want to add another?
       - {keep}Great.  Please review the list of diagnoses.  Are they correct?  ^showProcedureList

           + ~yes
           % Great.  Please review the list of diagnoses.  Are they correct?
           - {keep}Lets move on to our dictation {topic=add_dictation}

           + ~no
           % Great.  Please review the list of diagnoses.  Are they correct?
           - Sorry about that.  Please let me know the number of the incorrect procedure

               + * number <wrongProcedure> is *
               % Sorry about that.  Please let me know the number of the incorrect procedure.
               - {keep} No worries!  Lets correct that.  So we are going to change line <wrongProcedure> ^changeWrongProcedure(wrongProcedure)

                   + ~yes
                   % No worries!  Lets correct that.  So we are going to change line *
                   - {keep}what is the correct procedure?

                       + It should be <correctProcedure>
                       % what is the correct procedure?
                       - {keep} Got it.  I'll change it to <correctProcedure>.  Is there another correction?

                        ~yes *
                        % * Is there another correction?
                        - {keep}Sorry, what line number is it? ^showProcedureList

                        + [line | number] <wrongProcedure2>
                        % Sorry, what line number is it?
                        - {keep}what is the correct procedure?

                       ~no [*]
                       % Is there another correction?
                       -{keep} Okay then.  Lets move on to our dictation. When you are ready, say "start dictation" or push the glowing button.  When done hit "finish"{topic=add_dictation}


< topic









