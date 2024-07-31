# tle-calc
Calculates the time when the specified satellite can be observed from the specified position coordinates (GCS).
Please do not run this multiple times in a short period of time to query [CELESTRAK](https://celestrak.org) for TLE.

## Usage
```
$ docker compose up run
[+] Running 1/0
 ✔ Container tle-calc-run-1  Created                                              0.0s
Attaching to tle-calc-run-1
tle-calc-run-1  | [ Info: Fetch TLEs from Celestrak using satellite name: "TIRSAT" ...
tle-calc-run-1  | TLE: TIRSAT (Epoch =
tle-calc-run-1  | 2024-07-31T02:54:03.123)
tle-calc-run-1  | 6×3 DataFrame
tle-calc-run-1  |  Row │ access_beginning         access_end               duration
tle-calc-run-1  |      │ DateTime                 DateTime                 Float64
tle-calc-run-1  | ─────┼────────────────────────────────────────────────────────────
tle-calc-run-1  |    1 │ 2024-07-31T09:36:53.914  2024-07-31T09:40:22.821   3.48178
tle-calc-run-1  |    2 │ 2024-07-31T11:07:50.485  2024-07-31T11:21:00.914  13.1738
tle-calc-run-1  |    3 │ 2024-07-31T12:45:46.226  2024-07-31T12:57:20.597  11.5728
tle-calc-run-1  |    4 │ 2024-07-31T23:06:05.772  2024-07-31T23:16:48.634  10.7144
tle-calc-run-1  |    5 │ 2024-08-01T00:42:02.861  2024-08-01T00:55:21.580  13.312
tle-calc-run-1  |    6 │ 2024-08-01T02:21:43.014  2024-08-01T02:27:34.457   5.85738
tle-calc-run-1 exited with code 0
```
