# create and activate new environment
conda env remove --name ica
conda create --name ica python --yes
conda activate ica

# update conda version
conda update -n base conda --yes

# install required data processing packages
conda install -c conda-forge numpy --yes
conda install -c conda-forge pyarrow --yes
conda install -c conda-forge pyexcel --yes
conda install -c conda-forge openpyxl --yes
conda install -c conda-forge pandas --yes
conda install -c conda-forge geopandas --yes

# install required visualisation packages
conda install -c conda-forge colour --yes
conda install -c conda-forge matplotlib --yes
conda install -c conda-forge seaborn --yes
conda install -c conda-forge bokeh --yes

# install boto3 for aws connection
conda install -c conda-forge boto3

# install jupyterlab
conda install -c conda-forge ipywidgets --yes
conda install -c conda-forge jupyterlab --yes

# export environment to .yml file
conda env export > environment.yml

# deactivate new environment
conda deactivate