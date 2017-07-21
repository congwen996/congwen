<?php 

namespace Admin\Controller;

use Think\Controller;

class ReportController extends Controller {
	public function exportdata()
	{
		
		//导出报表		
		$time1=I("get.t1");
		$time2=I("get.t2");
		//查询该时间段内的销售业绩
		$ordergoods=M("OrderGoods");
		if($time1!="")
		{
			$ini['finished_time']=array("egt",strtotime($time1));
		}
		if($time2!="")
		{
			$ini['_string']="finished_time<=".strtotime($time2);
		}
		$orderArr=$ordergoods->alias("g")->field("goods_id,goods_name,finished_time,price,quantity")
		->join("ecm_order as o on g.order_id=o.order_id","left")
		->where($ini)->select();
		
		//存放报表数据
		$dataArr=array();
		foreach ($orderArr as $k=>$v)
		{
			$orderArr[$k]['finished_time']=date("Y-m-d",$v['finished_time']);
			$dataArr[$v['goods_name']][date("Y-m",$v['finished_time'])]+=$v['price']*$v['quantity'];
		}
		//计算时间区间内的日期区间
		//重新计算时间戳【年-月】
		$time1Arr=explode('-',$time1);
		$time2Arr=explode('-',$time2);
		$t1=strtotime($time1Arr[0].'-'.$time1Arr[1]);
		$t2=strtotime($time2Arr[0].'-'.$time2Arr[1]);
		
		//共有几个月
		$monthArr=array();
		while($t1<=$t2)
		{
			$monthArr[]=date("Y-m",$t1);
			//在第一个时间戳上加一个月，再来对比
			$t1=strtotime("+1 month",$t1);
		}
		//将报表导出excel文档，传实参
		excelExport($dataArr,$monthArr);
		
	}
    public function reportdata() {
         	//分析
         	//$arr[商品名][月份]=1000;
         	//if(IS_POST)
       //{
         	//在界面中用户输入的时间
    	    $time1=I("get.t1");
    	    $time2=I("get.t2");
         	//$time1="2015-01-23";
         	//$time2="2015-06-11";
         	//查询该时间段内的销售业绩
         	$ordergoods=M("OrderGoods");
         	if($time1!="")
         	{
         		$ini['finished_time']=array("egt",strtotime($time1));
         	}
            if($time2!="")
            {
            	$ini['_string']="finished_time<=".strtotime($time2);
            }
         	$orderArr=$ordergoods->alias("g")->field("goods_id,goods_name,finished_time,price,quantity")
         	->join("ecm_order as o on g.order_id=o.order_id","left")
         	->where($ini)->select();
         	
         	$dataArr=array();
         	foreach ($orderArr as $k=>$v)
         	{
         		$orderArr[$k]['finished_time']=date("Y-m-d",$v['finished_time']);
         		$dataArr[$v['goods_name']][date("Y-m",$v['finished_time'])]+=$v['price']*$v['quantity'];        		
         	}
         	//计算时间区间内的日期区间
         	//重新计算时间戳【年-月】
         	$time1Arr=explode('-',$time1);
         	$time2Arr=explode('-',$time2);
         	$t1=strtotime($time1Arr[0].'-'.$time1Arr[1]);
         	$t2=strtotime($time2Arr[0].'-'.$time2Arr[1]);
         	$monthArr=array();
         	while($t1<=$t2)
         	{
         		$monthArr[]=date("Y-m",$t1);
         		//在第一个时间戳上加一个月，再来对比
         		$t1=strtotime("+1 month",$t1);
         	}
         	$this->assign("dataarr",$dataArr);
         	$this->assign("montharr",$monthArr);
      //}	
         	
      $this->display();
        }
}
