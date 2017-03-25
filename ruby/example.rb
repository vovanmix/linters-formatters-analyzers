module Section
  class MyClass
    def one
      name = 'sdfsdfsdf'

      hash = {
               a: 'adsadas',
               b: 'sdfdsf' }

      small_hash = {
                     a: 'adsadas' }

      puts "hello #{name}"

      small_hash.try(:sda).try(:dfsfd).merge(hash)
                .each { |key, value| key + value }
                .each { |key, value| key + value }

      two('some-name', opt1: 1, opt2: 'two', opt3: [1, 2, 3])

      array = [
                :value]
      but_in_a_method_call([
                             :its_like_this])

      foo_bar(apple,
              banana)
      foo_bar(
        apple,
        banana)
    end

    def two(name, options, a, b, c)
      puts name
      puts options
      puts a
      puts b
      puts c
    end
  end
end
