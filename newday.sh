# 判断当前时间是中午12点前，取今天的date；否则取明天的date
CURRENT_H=`date +%H`
if [ $CURRENT_H -lt 12 ]; then
    title=$(date '+%Y/%m/%d')
    date=$(date +%F)
else
    title=$(date -v +1d '+%Y/%m/%d')
    date=$(date -v +1d  +%F)
fi

# 添加内容到README.md
echo "

### $title

<details>

  <summary>中：</summary>
  
  ![$date-lunch](./image/$date-lunch.jpeg)
</details>

<details>
  <summary>晚：</summary>
  
  ![$date-dinner](./image/$date-dinner.jpeg)
</details>
" >> README.md