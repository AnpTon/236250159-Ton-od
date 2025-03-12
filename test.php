<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2> Excercise 1 </h2>
    <?php
        $a= 15;
        $b= 7;
        echo $a + $b;
        echo "<br>" .$a - $b;
        echo "<br>" .$a * $b;
        echo "<br>" .$a / $b;
    ?>
    <h2> Exercise 2 </h2>
    <?php
        $c= 5;
        if ($c % 2 ==0){
            echo "This Number is Even";
        } else{
            echo "This Number is Odd";
        };
        echo "<br>";
        $d = -2;
        if ($d >= 1){
            echo "This Number is Positive";
        } elseif ($d <= 1){
            echo "This number is negative";
        } else{
            echo "This is 0";
        };
    ?>
    <h2> Exercise 3 </h2>
    <?php
        for ($i = 1; $i <=100; $i++){
            if ($i % 3 = 0){
                echo "Fizz";
            } elseif($i % 5 = 0){
                echo "Buzz";
            } else
        };
    ?>
</body>
</html>