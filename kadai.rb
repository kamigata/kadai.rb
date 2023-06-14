require "csv" 

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i 

if memo_type == 1
  puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください"
  
  file_name = gets.chomp 
  
  p "メモしたい内容を入力してください"
  p "完了したらctrl+Dを入力してエンターキーを押してください。"
  
  inputContent = STDIN.read.chomp
  
  CSV.open("#{file_name}.csv","w") do |csv|
    csv << ["#{inputContent}"]  
  end
  
elsif memo_type == 2
  puts "既存メモを編集します。拡張子を除いたファイル名を入力してください"
  
  file_name = gets.chomp
  
  p "変更したい内容を入力してください"
  p "完了したらctrl+Dを入力してエンターキーを押してください。"
  
  inputContent2 = STDIN.read.chomp
  
  CSV.open("#{file_name}.csv","a") do |csv|
    csv << ["#{inputContent2}"] 
    
  end
end
