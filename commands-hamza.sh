# Calculate PSNR, LPIPS, and SSIM metrics
python eval/cal_psnr_lpips_ssim.py \
    --generated_dir $GENERATED_DIR \
    --gt_dir $GT_DIR \
    --resolution $RESOLUTION

# Perform inference with resolution 512
CUDA_VISIBLE_DEVICES=0 accelerate launch test_asuka_flux.py \
    --decoder_ckpt_path ckpt/asuka_decoder.ckpt \
    --result_dir logs/my_test/imgs \
    --mixed_precision "bf16" \
    --resolution 512 \
    --val_batch_size 1

