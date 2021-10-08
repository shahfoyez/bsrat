
<?php
    include 'inc/header.php';
    include 'lib/Database.php';
    include ('classes/Student.php');
    $db=new Database();
    $student= new Student();
?>
<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
    $seat1 = $_POST['seat1'];
    $seat2 = $_POST['seat2'];
    $id = $_POST['id'];

    $squery = "select * from tbl_seat where  status= '1'";
    $checkSeats = $db->select($squery);
    if($checkSeats){
        while($result=$checkSeats->fetch_assoc()){
            echo $result['seatno']." is Booked";
            echo  " ";

        }
    }
    else{
        $us1query="UPDATE tbl_seat 
                SET
                seatno='$seat1',
                status='1',
                studentid='$id'
                WHERE seatno='$seat1'";
        $addseat1=$db->update($us1query);
        $us2query="UPDATE tbl_seat 
                SET
                seatno='$seat2',
                status='1',
                studentid='$id'
                WHERE seatno='$seat2'";
        $addseat2=$db->update($us2query);
        if($addseat1 && $addseat2){
              echo  "Booked Successfully";
        }
    }
}
?>
<form class="form" action="" method="post" enctype="multipart/form-data">
    <table>
            <tr>
                <td>Seat a1</td>
                <td><input type="text" name="seat1" placeholder="Seat a1"/> </td>
            </tr>
            <tr>
                <td>Seat a2</td>
                <td> <input type="text" name="seat2" placeholder="Seat a2"/> </td>
            </tr> 
            <tr>
                <td>Student ID</td>
                <td> <input type="text" name="id" placeholder="Student ID"/> </td>
            </tr>
            <tr>
                <td></td>
                <td><input class='btn'type="submit" value="submit" /></td>
            </tr>
        </table>
</form>
<?php include 'inc/footer.php';?>
