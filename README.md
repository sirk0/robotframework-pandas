# robotframework-pandas

🏠 ``PandasLibrary`` is a [Robot Framework](https://robotframework.org/) library
aimed to provide support of pandas data analysis toolkit,
wrapping [Python Pandas Library](https://github.com/pandas-dev/pandas).

## Documentation

Documentation is here: <https://sirk0.github.io/robotframework-pandas/PandasLibrary.html>

## 🤖 Quick start

```robotframework
*** Settings ***
Library     PandasLibrary


*** Test Cases ***
Test Series
    ${l}    Create List    ${1}    ${2}    ${3}
    ${s}    Convert To Series    ${l}
    Should Be Equal As Integers    ${s.sum()}    6
```
