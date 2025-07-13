# Test ASUKA on irregular masking dataset
RES_DIR=/cluster/home/akmarala/Models/asuka-misato/irregular-results/
GEN_DIR=/cluster/home/akmarala/Models/asuka-misato/irregular-results/imgs
CUDA_VISIBLE_DEVICES=0,1,2,3 accelerate launch test_asuka_flux.py \
    --decoder_ckpt_path=ckpt/asuka_decoder.ckpt \
    --result_dir=$GEN_DIR \
    --data_dir=/cluster/home/akmarala/data/inpainting-exp/irregular_masking_results/masked_images \
    --mask_dir=/cluster/home/akmarala/data/inpainting-exp/irregular_masking_results/generated_masks \
    --mixed_precision="bf16" \
    --resolution=512 \
    --val_batch_size=4 --full_val
