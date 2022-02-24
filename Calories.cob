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
           SELECT CaloricReport ASSIGN TO "caloric-report.rpt"
           ORGANIZAtION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION. 
       FD CaloriesLogfile.
       01 LOG-CalorieEntry.
           02 LOG-EatenAtTime.
              03 LOG-Hour          PIC 99.
              03 LOG-Minute        PIC 99.
           02 LOG-CaloricCount     PIC 9(3).
           02 LOG-EntryDescription PIC X(50).
       FD CaloricReport.
       01 RPT-Header.
           02 FILLER               PIC X(5)  VALUE "TIME ".
           02 FILLER               PIC X(9)  VALUE "CALORIES ".
           02 FILLER               PIC X(12) VALUE "DESCRIPTION ".
       01 RPT-LINE.
           02 FILLER               PIC X(5)  VALUE "-----".
           02 FILLER               PIC X(3)  VALUE "-+-".
           02 FILLER               PIC X(9)  VALUE "---------".
           02 FILLER               PIC X(3)  VALUE "-+-".
           02 FILLER               PIC X(51) VALUE 
           "---------------------------------------------------".
       01 RPT-CalorieEntry.  
           02 RPT-EatenAtTime.
              03 RPT-Hour          PIC 99.
              03 FILLER            PIC X     VALUE ":".
              03 RPT-Minute        PIC 99.
           02 FILLER               PIC X(3)  VALUE " | ".
           02 RPT-CaloricCount     PIC 9(3).
           02 FILLER               PIC X(3)  VALUE " | ".
           02 RPT-EntryDescription PIC X(50).
       WORKING-STORAGE SECTION.   
       01 WS-UserAction            PIC 9.
       PROCEDURE DIVISION.
           DISPLAY "[1] Create Entry".
           DISPLAY "[2] Create Report".
           ACCEPT WS-UserAction.
           IF WS-UserAction IS EQUAL TO 1
              PERFORM 0100-CreateEntry
           END-IF.
           IF WS-UserAction IS EQUAL TO 2
              PERFORM 0200-CreateReport
           END-IF.
           STOP RUN.
       
       0100-CreateEntry.
           DISPLAY "Create Entry".

       0200-CreateReport.
           DISPLAY "Creating Report".