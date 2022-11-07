*** Settings ***
Library     ../src/PandasLibrary/
# Library    PandasLibrary


*** Test Cases ***
Test Series
    ${l}    Create List    ${1}    ${2}    ${3}
    ${s}    Convert To Series    ${l}
    Should Be Equal As Integers    ${s.sum()}    6
