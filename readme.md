# Divide and Multiply #

Den här uppgiften går ut på att skriva ett program som följer ett intressant matematiskt mönster.

Du skall skriva en funktion: `divide_and_multiply` som tar ett positivt heltal (`value:`,) **som argument** och **returnerar** en **lista (`Array`)** innehållandes alla tal som funktionen genererat.

Funktionen ska följa följande algoritm:

1. Ta ett heltal
2. Om heltalet är:
    
    * jämnt: dela talet med 2
    * ojämnt: multiplicera talet med 3 och addera resultatet med 1.
    
Upprepa steg 1 & 2 tills  resultet är talet `1` 

Exempel:

    * Initialvärdet är 12.  Tolv är jämnt.  Dela med 2.
    * Värdet är nu 6.       Sex är jämnt.   Dela med 2.
    * Värdet är nu 3.       3 är ojämnt.    Multiplicera med 3 och addera 1.
    * Värdet är nu 10.      10 är jämnt.    Dela med 2.
    * Värdet är nu 5.       5 är ojämnt.    Multiplicera med 3 och addera 1.
    * Värdet är nu 16.      16 är jämnt.    Dela med 2.
    * Värdet är nu 8.       8 är jämnt.     Dela med 2.
    * Värdet är nu 4.       4 är jämnt.     Dela med 2.
    * Värdet är nu 2.       2 är jämnt.     Dela med 2.
    * Värdet är nu 1.       Vi är klara.

### Exempel ###

````ruby
    divide_and_multiply(value: 12)
	#=> [12, 6, 3, 10, 5, 16, 8, 4, 2, 1]
````

#### Hjälp ####

##### Identifiera jämna & ojämna tal #####

För att kontrollera om ett tal är jämnt eller ojämnt kan man använda "modulo". Modulo returnerar resten om man gör heltalsdivision med två tal.
Om resten är 0 när man delar ett tal med två måste talet vara jämnt. i ruby används `%` för att göra moduloberäkningar.

```ruby
    x = 9
    rest = x % 2
    puts rest
    #=> 1
    
    x = 6
    rest = x % 2
    puts rest
    #=> 0
```

Ett annat sätt är att använda metoderna `#odd?` och `#even?` som finns på `Fixnum`

```ruby
    x = 9
    puts x.even?
    #=> false
    puts x.odd?
    #=> true
```

##### Lägga till tal värden i en lista #####

För att lägga till tal i en lista kan man använda `#push` eller `#<<` som finns på `Array`.

```ruby
    numbers = []
    x = 9
    y = 3
    numbers.push(x)
    numbers.push(y)
    p numbers
    #=> [9,3] 
    numbers << y
    numbers << x
    p numbers
    #=> [9,3,3,9]
```


### Flödesschema ###

Innan du börjar koda ska du skapa ett flödesschema för funktionen.

Testa flödesschemat med penna och papper


### Testning ###

Kör `bundle install` i projektets rotmapp om du inte redan har alla gems installerade.

Kör `rake test` för att köra alla testerna
eller `ruby test\test_funktionens_namn.rb` för att köra tester för enstaka funktioner .


### Länkar ###

Läs mer om loopar och listor i övning 32,33, och 38 i [*Learn Ruby the Hard Way*](http://ruby.learncodethehardway.org/book)
* [Learn Ruby the Hard Way - Exercise 32: Loops and Arrays](https://learnrubythehardway.org/book/ex32.html)
* [Learn Ruby the Hard Way - Exercise 33: While loops](http://ruby.learncodethehardway.org/book/ex33.html) 
* [Learn Ruby the Hard Way - Exercise 38: Doing Things to Arrays](https://learnrubythehardway.org/book/ex38.html)

