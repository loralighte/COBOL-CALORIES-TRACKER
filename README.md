# COBOL-CALORIES-TRACKER
Track and report calories using this simple program written in COBOL

## Running
1. Install `GnuCOBOL` for `cobc`
1. Run `cobc -x Calories.cob`
1. Run `./Calories`
    * Enter `1` into input for Entry Creation.
        1. Enter the hour when you ate
        1. Enter the minute when you ate
        1. Enter the total calories (up to 999)
        1. Enter basic description
        1. Final file recorded as `calories.log`
    * Enter `2` into input for Report Creation.
        * Enter name when prompted
        * Final file recorded as `caloric-report.rpt` 

## Examples
### `caloric-report.rpt`
```
Caloric Report For: Kai Lyons



TIME  | CALORIES  | DESCRIPTION
------+-----------+----------------------------------------------------
23:30 |        10 | Monster Energy Drink
23:36 |        10 | More monster
23:51 |        10 | EVEN MORE MONSTERRRRRR
00:19 |        10 | MONSTER
01:05 |        10 | my heart hurts




Total Calories:          50

```

### `calories.log`
```
2330010Monster Energy Drink
2336010More monster
2351010EVEN MORE MONSTERRRRRR
0019010MONSTER
0105010my heart hurts

```