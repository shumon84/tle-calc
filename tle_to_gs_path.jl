using SatelliteToolbox
using SatelliteAnalysis
using SatelliteAnalysis: DataFrame

# 可視時間を計算したい衛星
sat_name = "TIRSAT"

# 地上局情報の設定
lat = 34.4404 |> deg2rad #緯度
lon = 138.1140 |> deg2rad #経度
alt = 52.7 #標高

# 可視時間を計算したい期間
duration = 1*24*60*60 # 24時間

f = create_tle_fetcher(CelestrakTleFetcher)
tles = fetch_tles(f; satellite_name = sat_name)
tle = tles[1]

orbp = Propagators.init(Val(:SGP4), tle)
accesses = ground_facility_accesses(
    orbp,
    [(lat, lon, alt)];
    duration = duration,
    minimum_elevation = 0 |> deg2rad,
    unit = :m
)
println(tle)
println(accesses)
