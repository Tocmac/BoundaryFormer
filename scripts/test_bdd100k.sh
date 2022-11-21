#python3 setup.py build develop #--no-deps
#python3 setup.py develop #--no-deps

export DETECTRON2_DATASETS=datasets
export DETECTRON2_OUTPUTS=outputs/train/bdd100k
#export CUDA_LAUNCH_BLOCKING=1 # for debug

ID=159

CUDA_VISIBLE_DEVICES=5,6 python projects/BoundaryFormer/train_net.py --num-gpus 2\
  --config-file projects/BoundaryFormer/configs/BDD100K/boundaryformer.yaml \
  --eval-only MODEL.WEIGHTS model/cityscapes_r50_fpn_1x_coco.pth

# mkdir -p datasets/coco
# ln -s /path_to_coco_dataset/annotations datasets/coco/annotations
# ln -s /path_to_coco_dataset/train2017 datasets/coco/train2017
# ln -s /path_to_coco_dataset/test2017 datasets/coco/test2017
# ln -s /path_to_coco_dataset/val2017 datasets/coco/val2017

# ln -s /data/home/ljl/Datasets/ch_poc/bdd100+/bdd100k_ins_seg_labels_trainval/bdd100k/labels/ins_seg/coco_annotations datasets/coco/annotations
# ln -s /data/home/ljl/Datasets/ch_poc/bdd100+/bdd100k_images_100k/bdd100k/images/10k/train datasets/coco/train2017
# ln -s /data/home/ljl/Datasets/ch_poc/bdd100+/bdd100k_images_100k/bdd100k/images/10k/test datasets/coco/test2017
# ln -s /data/home/ljl/Datasets/ch_poc/bdd100+/bdd100k_images_100k/bdd100k/images/10k/val datasets/coco/val2017



