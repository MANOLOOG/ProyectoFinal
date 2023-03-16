<?php

include 'suma.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Practice 3</title>
</head>

<body>



<div class="col col-lg-12">
        <div class="row">
            <h1 class="text-center">Sumas</h1>
        </div>
    </div>

    <div class="row">

    <form action="<?php echo $SERVER['PHP_SELF'] ?>" method="post">

        <input type="text" name="caja1" required > +

        <!--<select name="caja1" required>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
        </select>-->

        <input type="text" name="caja2" required> =

        <!--<select name="caja2" required>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
        </select>-->



        <input type="text" name="resultado" value="<?php echo $valor?>">

        <input type="submit" name="btnSuma" value="Calcular" >

    </form>

    </div>

    





    



    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>