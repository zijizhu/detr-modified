set -x

mkdir coco
cd coco
apt-get update -y && apt-get upgrade -y && apt-get install unzip zip -y
wget -q --show-progress "http://images.cocodataset.org/zips/train2017.zip"
wget -q --show-progress "http://images.cocodataset.org/zips/val2017.zip"
wget -q --show-progress "http://images.cocodataset.org/annotations/annotations_trainval2017.zip"

unzip -qq train2017.zip
rm train2017.zip
unzip -qq val2017.zip
rm val2017.zip
unzip -qq annotations_trainval2017.zip
rm annotations_trainval2017.zip

pip install pycocotools
