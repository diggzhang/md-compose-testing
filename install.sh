MAGICBEAN_VERSION="2.6.0"
CURRENT_DIR=$(pwd)

curl -o "$CURRENT_DIR"/backend/stem-$MAGICBEAN_VERSION.jar https://magicbean-release.oss-cn-hongkong.aliyuncs.com/backend/stem-$MAGICBEAN_VERSION.jar
curl -o "$CURRENT_DIR"/pipeline/spark-2.4.8-bin-hadoop2.6.tgz https://magicbean-release.oss-cn-hongkong.aliyuncs.com/apachespark/spark-2.4.8-bin-hadoop2.6.tgz
curl -o "$CURRENT_DIR"/pipeline/magicbean-$MAGICBEAN_VERSION.tar.gz https://magicbean-release.oss-cn-hongkong.aliyuncs.com/magicbean/magicbean-$MAGICBEAN_VERSION.tar.gz