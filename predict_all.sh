python3 predict_test.py \
--epochs 30 \
--pretrain_weights /home/branding_images/salt/unet_resnet_152_192_224_snapshot_100_epochs_bs_16/fold_{}.hdf5 \
--n_snapshots 1 \
--fold 0,1,2,3,4 \
--learning_rate 0.00005 \
--input_size 224 \
--resize_size 192 \
--batch_size 16 \
--loss_function lovasz \
--callback snapshot \
--augmentation_name valid_plus \
--augmentation_prob 1.0 \
--network unet_resnet_152 \
--alias _192_224_snapshot_100_epochs_bs_16_finetune_lovash_v1 \
--prediction_weights fold_{}.hdf5 \
--prediction_folder fold_{}