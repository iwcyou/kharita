# Try different parameters for the kharita_star.py
# shell命令中只能用#注释


radius=(
    200
    250
    300
    350
    400
    450
    500
)
sample=(
    10
    20
    40
)
angle=(
    60
    80
    100
)
for a in "${angle[@]}"; do
    for s in "${sample[@]}"; do
        for r in "${radius[@]}"; do
            ts python kharita_star.py -p data/dataset_sz_4096size -f 0_10_gps.pkl -r "${r}" -s "${s}" -a "${a}"
        done
    done
done
