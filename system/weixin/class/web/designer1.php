<?php
defined('SYSTEM_IN') or exit('Access Denied');
		hasrule('weixin','weixin');
		$operation = !empty($_GP['op']) ? $_GP['op'] : 'designer1list';
		
 if ($operation == 'designer1list') {
    $menus = $this->menuQuery1();
    
    if (is_array($menus['menu']['button'])) {
        foreach ($menus['menu']['button'] as &$m) {
            if (isset($m['url'])) {
                $m['url'] = urldecode($m['url']);
            }
            if (isset($m['key'])) {
                $m['forward'] = $m['key'];
            }
            if (is_array($m['sub_button'])) {
                foreach ($m['sub_button'] as &$s) {
                    if (isset($s['url'])) {
                        $s['url'] = urldecode($s['url']);
                    }
                    $s['forward'] = $s['key'];
                }
            }
        }
    }
    
    // print_r($menus);
    
    if (is_array($menus['conditionalmenu'])) {
        foreach ($menus['conditionalmenu'] as &$cm) {
            foreach ($cm['button'] as &$m) {
                if (isset($m['url'])) {
                    $m['url'] = urldecode($m['url']);
                }
                if (isset($m['key'])) {
                    $m['forward'] = $m['key'];
                }
                if (is_array($m['sub_button'])) {
                    foreach ($m['sub_button'] as &$s) {
                        if (isset($s['url'])) {
                            $s['url'] = urldecode($s['url']);
                        }
                        $s['forward'] = $s['key'];
                    }
                }
            }
        }
    }
    
    include page('designer1');
		    
		    

 }
 
 
 
 
 if ($operation == 'deleteconmenu') {
     
     if(!empty($_GP['menuid'])){
         $menuid=$_GP['menuid'];
         $this->menuDelete1($menuid);
     }
     
     
 }
		
		