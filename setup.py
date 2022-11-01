import os

from setuptools import setup

HERE = os.path.abspath(os.path.dirname(__file__))
version = {}
with open(os.path.join(HERE, "PandasLibrary", "__version__.py"), encoding="utf8") as f:
    exec(f.read(), version)

requirements = [
    i.strip() for i in open("requirements.txt", encoding="utf8").readlines()
]

setup(
    name="robotframework-pandas",
    version=version["__version__"],
    description="robotframework-pandas is a Robot Framework "
    "test library for working with pandas objects",
    author="Sergii Tsymbal",
    author_email="tcymbal@gmail.com",
    url="https://github.com/sirk0/robotframework-pandas.git",
    packages=["PandasLibrary"],
    package_dir={"robotframework-pandas": "PandasLibrary"},
    install_requires=requirements,
    include_package_data=True,
    keywords="testing robotframework pandas",
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Intended Audience :: Developers",
        "Topic :: Software Development :: Testing",
        "License :: Public Domain",
        "Programming Language :: Python :: 3",
        "Framework :: Robot Framework :: Library",
    ],
)
