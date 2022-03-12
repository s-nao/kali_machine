# kali_machine

## 目的

個人的に使うペネトレーションテスト用のdockerコンテナ

## 利用コマンド

### ビルド

```$shell
docker build  -t snao0/kali_machine:latest .
```

### 接続

```$shell
docker exec -it kali /bin/zsh
```

### タグ付け

```$shell
docker tag [image_id] snao0/kali_machine:[tag]
```

### DockerHubのプッシュ

```$shell
docker push snao0/kali_machine:latest
```

## DockerHub

<https://hub.docker.com/r/snao0/kali_machine>
