#python3 setup.py build develop #--no-deps
#python3 setup.py develop #--no-deps

export DETECTRON2_DATASETS=/data/home/ljl/Datasets/ch_poc
export DETECTRON2_OUTPUTS=outputs/
#export CUDA_LAUNCH_BLOCKING=1 # for debug

ID=159

CUDA_VISIBLE_DEVICES=5,6 python projects/BoundaryFormer/train_net.py --num-gpus 2\
  --config-file projects/BoundaryFormer/configs/Cityscapes/boundaryformer_rcnn_R_50_FPN_1x.yaml \
  --eval-only MODEL.WEIGHTS model/cityscapes_r50_fpn_1x_coco.pth

# CUDA_VISIBLE_DEVICES=0,1 python3 tools/train_net_swinb.py --num-gpus 2 --resume --dist-url tcp://0.0.0.0:12346 \
# 	--config-file projects/BoundaryFormer/configs/Cityscapes/boundaryformer_rcnn_R_50_FPN_1x.yaml \
#         --eval-only MODEL.WEIGHTS model/cityscapes_r50_fpn_1x_coco.pth



