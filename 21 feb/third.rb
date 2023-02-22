elements = ['two', 'three', 'one']
hash_to_be_sorted = {'three' => 3, 'two' => 2, 'one' => 1}
main= {}

content= Proc.new{
  elements.each do |i|
    main[i]=hash_to_be_sorted[i]
  end
  puts main
}
content.call