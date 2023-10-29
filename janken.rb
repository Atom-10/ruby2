puts "じゃんけん・・・"

def janken
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  
  player_select = gets.to_i
  program_select = rand(3)
  
  if player_select == 3
    puts "じゃんけんをやめます"
    return false
  end
  
  jankens = ["グー","チョキ","パー","戦わない"]
  puts "ホイ！"
  puts "------------------------"
  puts "あなた:#{jankens[player_select]}を出しました"
  puts "あいて:#{jankens[program_select]}を出しました"
  puts "------------------------"


  if player_select == program_select
    puts "あいこで"
    return janken
    
  elsif (player_select == 0 && program_select == 1) ||
        (player_select == 1 && program_select == 2) ||
        (player_select == 2 && program_select == 0)
    puts "あなた:あっち向いて〜"
    
    def player_win
      puts "0(上) 1(下) 2(左) 3(右)"
      
      player_select = gets.to_i
      program_select = rand(4)
      
      ltw = ["上","下","左","右"]
      puts "ホイ！"
      puts "------------------------"
      puts "あなた:#{ltw[player_select]}"
      puts "あいて:#{ltw[program_select]}"
      puts "------------------------"
      
      if player_select == program_select
        puts "あなたの勝ちです"
      else
        (player_select == 0 && program_select == 1) ||
        (player_select == 1 && program_select == 2) ||
        (player_select == 2 && program_select == 3) ||
        (player_select == 3 && program_select == 0)
        puts "じゃんけん・・・"
        return janken
      end
    end
    
    new_game = true
    while new_game
      new_game = player_win
    end
    
  else (player_select == 0 && program_select == 1) ||
       (player_select == 1 && program_select == 2) ||
       (player_select == 2 && program_select == 0)
       puts "あいて:あっち向いて〜"
    
    def program_win
      puts "0(上) 1(下) 2(左) 3(右)"
      
      player_select = gets.to_i
      program_select = rand(4)
      
      ltw = ["上","下","左","右"]
      puts "ホイ！"
      puts "------------------------"
      puts "あなた:#{ltw[player_select]}"
      puts "あいて:#{ltw[program_select]}"
      puts "------------------------"
      
      if player_select == program_select
        puts "あなたの負けです"
      else
        (player_select == 0 && program_select == 1) ||
        (player_select == 1 && program_select == 2) ||
        (player_select == 2 && program_select == 3) ||
        (player_select == 3 && program_select == 0)
        puts "じゃんけん・・・"
        return janken
      end
    end
      
    new_game = true
    while new_game
      new_game = program_win
    end
  end
end

next_game = true
while next_game
  next_game = janken
end
