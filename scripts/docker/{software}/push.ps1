try {
    # 設定ファイルの読み込み
    . $PSScriptRoot/../../__config.ps1  # repository setting
    . $PSScriptRoot/__config.ps1        # distribution setting

    # タグ の生成
    $imageTagLatest = "${global:repositoryName}:${global:softwareName}"
    $imageTagDate   = "${global:repositoryName}:${global:softwareName}_${global:date}"

    # 生成値の出力
    echo $imageTagLatest
    echo $imageTagDate

    # プッシュの実行
    docker push $imageTagLatest
    docker push $imageTagDate
} catch {
    echo "Error: $_"
    exit 1
}