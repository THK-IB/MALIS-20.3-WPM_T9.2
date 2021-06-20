sed s/"IMPORTANT[\!]*[\t][\t]"// 2021-05-23-Article_list_dirty.tsv | cut -f 5,12 | sed s/[I-S]*[i-s]*[\:]*[" "]*// | grep .... | sed '1d' | sort | uniq >2021-05-23-Dates_and_ISSNs.tsv


