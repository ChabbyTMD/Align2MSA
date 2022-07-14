import pandas as pd

configfile: "config/config.yaml"

samples = pd.read_csv(config["samples"], sep=",").set_index("sample", drop=False)
samples.index.names = ["sampleID"]