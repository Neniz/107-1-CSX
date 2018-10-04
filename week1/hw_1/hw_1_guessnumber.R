# 猜數字遊戲
# 基本功能
# 1. 請寫一個由"電腦隨機產生"不同數字的四位數(1A2B遊戲)
# 2. 玩家可"重覆"猜電腦所產生的數字，並提示猜測的結果(EX:1A2B)
# 3. 一旦猜對，系統可自動計算玩家猜測的次數

# 額外功能：每次玩家輸入完四個數字後，檢查玩家的輸入是否正確(錯誤檢查)
library(stringr)
count <- 0
repeat{
  count <- count + 1
  print("請輸入不重複的四個數字：")
  correct_vector<- c(sample(0:9, 4))
  guess <- scan(nmax=1)
  if(guess > 9999 || guess < 1000){print("輸入格式錯誤！")
  next()}
  i <- as.integer(guess/1000)
  j <- as.integer(guess%%1000/100)
  k <- as.integer(guess%%100/10)
  l <- as.integer(guess%%10)
  guess_vector <- c(i,j,k,l)
  A <- 0
  B <- 0
  for(i in 1:4){
        for(j in 1:4){
            if((guess_vector[i]==correct_vector[j]) && (i==j))
              A <- A + 1
            else if((guess_vector[i]==correct_vector[j]) && (i!=j))
              B <- B + 1
        }
  }
  if(A==4){
    print("猜對囉！")
    break
  }
  else print(paste(A,"A",B,"B"))
}

