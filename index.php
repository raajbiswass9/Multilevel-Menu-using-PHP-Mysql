<?php

function display_menu(){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "dynamo";
	$connect = new mysqli($servername, $username, $password, $dbname);
    
    $menus = "";
	$menus .= multilevel_menu($connect);

	return "<ul class='main_ul'>".$menus."</ul>";
}


function multilevel_menu($connect, $parent_id=NULL){
    
    $menu = "";

    if(is_null($parent_id)){
        $sql = "SELECT * FROM dynamic_menu WHERE parent_id IS NULL";
    }else{
        $sql = "SELECT * FROM dynamic_menu WHERE parent_id = $parent_id";
    }
    
    $result = mysqli_query($connect, $sql);
        while($row = mysqli_fetch_assoc($result)) {
        	if($row["parent_id"]){
                $menu .= "<li class='sub_li'>".$row['name'];
            }else{
        		$menu .= "<li class='main_li' >".$row['name'];
        	}
            
            
            $row_id = $row["id"];
            $sql_b = "SELECT * FROM dynamic_menu WHERE parent_id = $row_id";
            $count = mysqli_query($connect, $sql_b);            
            if($count->num_rows > 0){
                $menu .= "<ul class='sub_ul'>".multilevel_menu($connect, $row["id"])."</ul>";
            }else{
                $menu .= multilevel_menu($connect, $row["id"]);
            }
            
            $menu .= "</li>";
        }
    
    return $menu;
}


echo display_menu();

?>

