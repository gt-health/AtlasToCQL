import setuptools

with open("README.md", "r", encoding="utf-8") as fhand:
    long_description = fhand.read()

setuptools.setup(
    name="AtlasToCQL",
    version="0.0.2",
    author="Michael Riley",
    author_email="Michael.Riley@gtri.gatech.edu",
    description=("An over-simplified downloader package to "
                "demonstrate python module and tool packaging."),
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/gt-health/AtlasToCQL",
    project_urls={
        "Report An Issue": "https://github.com/gt-health/AtlasToCQL",
        "Ask For Support on Zulip": "https://chat.fhir.org/#streams/396585/OMOP.20.2B.20CQL.20.2B.20FHIR"
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: APL License",
        "Operating System :: OS Independent",
    ],
    install_requires=["requests"],
    packages=setuptools.find_packages(),
    python_requires=">=3.6",
    entry_points={
        "console_scripts": [
            "convert = main:main",
        ]
    }
)