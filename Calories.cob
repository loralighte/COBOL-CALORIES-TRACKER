      * ----------------------------------------------------------------
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Caloric-Calculator.
       AUTHOR. Kai Lyons.
      * ----------------------------------------------------------------
       ENVIRONMENT DIVISION. 
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       01 WS-CalorieEntry.
           02 WS-EatenAtTime.
              03 WS-Hour          PIC 99.
              03 WS-Minute        PIC 99.
           02 WS-CaloricCount     PIC 9(3).
           02 WS-EntryDescription PIC X(50).
       PROCEDURE DIVISION.
