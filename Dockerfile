FROM julia:1.6.0

RUN julia -e 'import Pkg; Pkg.update()' && \
    julia -e 'import Pkg; Pkg.add("SatelliteToolbox")' && \
    julia -e 'import Pkg; Pkg.add("SatelliteAnalysis")'

COPY ./tle_to_gs_path.jl /home/tle_to_gs_path.jl
WORKDIR /home    

CMD ["julia", "tle_to_gs_path.jl"]
