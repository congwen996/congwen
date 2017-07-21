<?php
//类别递归(单层)
function getone($arr,$parent=0,$lev=0){
	//迭代
	$task=array($parent);//任务数组
	$tree=array();//结果数组
	while (!empty($task)){
		$flg=false;
		foreach ($arr as $k=>$v){
			 
			if ($v['parent_id']==$parent) {
				$tree[]=array('id'=>$v['cate_id'],
						'name'=>$v['cate_name'],
						'lev'=>$lev);

				array_push($task, $v['cate_id']);
				$parent=$v['cate_id'];
				$lev=$lev+1;
				unset($arr[$k]);
				$flg=true;
			}

		}
		if ($flg==false) {
			array_pop($task);
			$parent=end($task);
			$lev=$lev-1;
		}
	}
	return $tree;

}
//类别递归(多层)
function getCates($arr,$pid=0)
{
		for($i=0;$i<count($arr);$i++){
			if($arr[$i]['parent_id']==$pid){
				//用来存放最顶层父类的id，和名称  []代表追加
				$valArr[]=array(
						'id'=>$arr[$i]['cate_id'],
						'name'=>$arr[$i]['cate_name'],
						'son'=>getCates($arr,$arr[$i]['cate_id']),
				);
			}
		}
		return $valArr;
}
//查询类别所属级
function getlayer($cateid,$flg=1)
{
	$gcg=M("Gcategory");
	$ini["cate_id"]=$cateid;
	$cateArr=$gcg->where($ini)->find();
	if($cateArr['parent_id']!=0)
	{
		$flg=getlayer($cateArr['parent_id'],$flg+1);
	}
	return $flg;
}
//整理图片路径
function img($arr,$key)
{
	foreach ($arr as $k=>$v)		//整理图片路径
	{
		$imgArr[]=explode("/",$v[$key]);
		foreach ($imgArr as $vv)
		{
			$arr[$k][$key]=$vv[3]."/".$vv[4];
		}
	}
	
	return $arr;
}

//整理商品的类别-----2
function sortcategory($arr,$flg)
   {
	for($i=0;$i<count($arr);$i++){	
		if($arr[$i]['parent_id']==$flg){		
			//用来存放最顶层父类的id，和名称  []代表追加
			$newArr[]=array(			
				'cate_id'=>$arr[$i]['cate_id'],
				'cname'=>$arr[$i]['cate_name'],
			    'son'=>sortcategory($arr,$arr[$i]['cate_id']),
			);
		}
	}
	//return 要写在for的外边
// 	echo "<pre>";
// 	print_r($newArr);
// 	echo "</pre>";
	return $newArr;
}

//11-24计算某个类别所处层数
   function getcatelayer($cateid,$flg=1)
   {
   	   $cates=M("Gcategory");
   	   //根据类别id查找有么有该类别
   	   $ini['cate_id']=$cateid;
   	   $arr=$cates->where($ini)->find();
   	   if($arr['parent_id']!=0)//找父类
   	   {
   	   	   $flg=getcatelayer($arr['parent_id'],$flg+1);
   	   }
   	   return $flg;
   }



