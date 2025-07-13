
# Experiment 1: ASUKA on Irregular Masking Dataset

## Data Setup:
- Input: /cluster/home/akmarala/data/inpainting-exp/irregular_masking_results/
- Images: data/512/image/ (1000 PNG files, 512x512)
- Masks: data/512/mask/ (1000 PNG files, inverted)
- Ground Truth: data/512/gt_image/image/ (1000 PNG files, 512x512)

## Results:
- PSNR: 31.594 ± std
- SSIM: 0.935 ± std  
- LPIPS: 0.123 ± std

## Command Used:
CUDA_VISIBLE_DEVICES=0,1,2,3 accelerate launch test_asuka_flux.py \
    --decoder_ckpt_path=ckpt/asuka_decoder.ckpt \
    --result_dir=/cluster/home/akmarala/Models/asuka-misato/experiments/exp1_irregular_masking/results/imgs \
    --mixed_precision="bf16" \
    --resolution=512 \
    --val_batch_size=4 \
    --full_val
