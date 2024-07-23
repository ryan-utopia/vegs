export CUDA_VISIBLE_DEVICES=${1:-2}
SRC_PATH=${2:-'../KITTI-360'}
SEQ=${3:-'0009'}
START_FRAME=${4:-3972}
END_FRAME=${5:-4258}
NOTE=${6:-"test"}

python train.py -s ${SRC_PATH} \
                --seq 2013_05_28_drive_${SEQ}_sync \
                --start_frame ${START_FRAME}\
                --end_frame ${END_FRAME} \
                --exp_note ${NOTE} \
                --save_results_as_images \
                --output_dir output \
                --cache_dir /home/$USER/.cache \
                --eval
