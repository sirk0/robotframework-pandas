# robotframework-pandas

🏠 ``PandasLibrary`` is a [Robot Framework](https://robotframework.org/) library
aimed to provide support of pandas data analysis toolkit,
wrapping [Python Pandas Library](https://github.com/pandas-dev/pandas).

## Install pre-release version

```sh
pip install -i https://test.pypi.org/simple/ robotframework-pandas --pre
```

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

## 🤖 More examples

### 📖 Keywords documentation

Robotframework-pandas offers a wide set of keywords which can be found in the [Keywords documentation](
    https://sirk0.github.io/robotframework-pandas/PandasLibrary.html)

### 🔬 Test examples

You can find many test examples inside the [tests](./tests/) folder.
