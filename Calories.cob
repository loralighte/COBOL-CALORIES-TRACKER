      * ----------------------------------------------------------------
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Caloric-Calculator.
       AUTHOR. Kai Lyons.
      * ----------------------------------------------------------------
       ENVIRONMENT DIVISION. 
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
           SELECT CaloriesLogfile ASSIGN TO "calories.log"
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION. 
       FD CaloriesLogfile.
       01 FD-CalorieEntry.
           02 FD-EatenAtTime.
              03 FD-Hour          PIC 99.
              03 FD-Minute        PIC 99.
           02 FD-CaloricCount     PIC 9(3).
           02 FD-EntryDescription PIC X(50).
       WORKING-STORAGE SECTION.   
       01 WS-UserAction.
       PROCEDURE DIVISION.
           DISPLAY "[1] Create Entry".
           DISPLAY "[2] Create Report".

           STOP RUN.
