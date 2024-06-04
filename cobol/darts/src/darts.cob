       IDENTIFICATION DIVISION.
       PROGRAM-ID. DARTS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-X PIC 99V9.
       01 WS-Y PIC 99V9.
       01 WS-RESULT PIC 99.
       PROCEDURE DIVISION.
       darts.
         evaluate (ws-x ** 2 + ws-y ** 2) ** 0.5
           when 0 thru 1 move 10 to ws-result
           when 1 thru 5 move 5 to ws-result
           when 5 thru 10 move 1 to ws-result
           when other move 0 to ws-result
         end-evaluate.
