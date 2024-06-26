# Try different parameters for the kharita_star.py
# shell命令中只能用#注释


radius=(
    50
    100
    200
)
sample=(
    10
    20
    40
)
angle=(
    20
    40
    60
)
for r in "${radius[@]}"; do
    for s in "${sample[@]}"; do
        for a in "${angle[@]}"; do
            ts python kharita_star.py -p data/dataset_sz_4096size -f 0_10_gps.pkl -r "${r}" -s "${s}" -a "${a}"
        done
    done
done
