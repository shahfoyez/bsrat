<?php
    include 'inc/header.php';
    include ('classes/Student.php');
    $student= new student();
?>
<?php
    //if(isset($_POST['submit'])){}
    if($_SERVER['REQUEST_METHOD']=='POST'){
        $register=$student->studentRegistration($_POST,$_FILES);
    }
?>
       <form class="form" action="" method="post" enctype="multipart/form-data">
        <?php
    if(isset($register)){
        echo $register;
    }
?>
        <table>
            <tr>
                <td>Your Name:</td>
                <td><input type="text" name="studentName" placeholder="Name"/> </td>
            </tr>
            <tr>
                <td>Your ID:</td>
                <td> <input type="text" name="studentid" placeholder="Student ID"/> </td>
            </tr> 
            <tr>
                <td>Email:</td><td><input name='email' type="email" /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="text" name="password" placeholder="Password"/> </td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type="text" name="phone" placeholder="Phone"/>  </td>
            </tr>
            <tr>
                <td>DOB:</td>
                <td><input type="date" name="dob" placeholder="DOB"/> </td>
            </tr> 
            <tr>
                 <td>Department:</td>
                <td>  
                    <select id="select" name="dept">
                        <option value="">Depertment</option>
                        <option value="English">English</option>
                        <option value="Islamic Studies">Islamic Studies</option>
                        <option value="CSE">CSE</option>
                        <option value="EEE">EEE</option>
                        <option value="BBA">BBA</option>
                        <option value="Architecture">Architecture</option>
                        <option value="Civil">Civil Engineering</option>
                        <option value="Bangla">Bangla</option>
                        <option value="Others">Others</option>
                    </select>
                </td>
            </tr> 
            <tr>
                <td>Semester:</td>
                <td>
                    <select id="select" name="semester">
                        <option value="">Semester</option>
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
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="Others">Others</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Section:</td>
                <td>
                    <select id="select" name="section">
                        <option value="">Section</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                        <option value="D">D</option>
                        <option value="E">E</option>
                        <option value="F">F</option>
                        <option value="G">G</option>
                        <option value="H">H</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Image:</td>
                <td class='imm'><input type="file" name='img'/></td>
            </tr>
            <tr>
                <td>Route:</td>
                <td><select id="select" name="route">
                <option value="">Select Route</option>
                <option value="1">Route 1</option>
                <option value="2">Route 2</option>
                <option value="3">Route 3</option>
                <option value="4">Route 4</option>
            </select></td>
        </tr>
            <tr>
                <td>PUP:</td>
                <td><select name="pick">
                <option value="">Select PUP</option>
                <option value="Upashahar">Upashahar</option>
                <option value="Tilaghor">Tilaghor</option>
                <option value="Humayun Chattar">Humayun Chattar</option>
                <option value="Mirer Moidan">Mirer Moidan</option>
            </select></td></tr>
            <tr>
                <td></td>
                <td><input class='btn'type="submit" value="submit" /></td>
            </tr>
            </table>
        </form>
    <?php include 'inc/footer.php';?>
