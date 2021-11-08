default:
        curl -o nba2019-2020.csv https://raw.githubusercontent.com/AhmedS12899/Lab3Ahmed/main/nba2019-2020.csv
        awk -f parse_file.awk nba2019-2020.csv
        awk -f parse_file.awk nba2019-2020.csv > Nba2019-2020Report
clean:
        rm nba2019-2020.csv
