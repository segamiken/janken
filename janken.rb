STDOUT.sync = true

loop {
	puts "最初はグー、じゃんけん・・・"
	puts "[0]:グー、[1]:チョキ、[2]:パー"

	my_hand = gets.to_i
	his_hand = rand(3)

	if my_hand > 2
		puts "入力値が無効です。"
		next
	end

	jankens = ["グー", "チョキ", "パー"]
	puts "あなたの手は#{jankens[my_hand]}"
	puts "相手の手は#{jankens[his_hand]}"

	if my_hand==his_hand
		puts"あいこで"
	elsif(my_hand==0 && his_hand==1)||(my_hand==1 && his_hand==2)||(my_hand==2 && his_hand==0)
		puts "あなたの勝ちです"
		break
	else
		puts "あなたの負けです"
		break
	end
}