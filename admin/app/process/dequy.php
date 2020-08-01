<?php 

    namespace Mvc\process;

    class dequy 
    {
        public $result = "";
        public function dequyProductCat($listProductCat, $parent_id = 0, $char = '')
        {
            foreach($listProductCat as $key => $item)
            {
                if($item["parent_id"] == $parent_id)
                {
                    $this->result .= " <option value='{$item["category_id"]}'>";
                    $this->result .= $char . $item["category_name"];
                    $this->result .= "</option>";
                    unset($listProductCat[$key]);
                    $this->dequyProductCat($listProductCat, $item["category_id"], $char.'--/');
                }
            }
        }
        public function getResult() {
            return $this->result;
        }

        public function dequyListCat($listProductCat, $parent_id = 0, $char = '') {
        foreach ($listProductCat as $key => $item) {
            if($item["parent_id"] == $parent_id) {
                $this->result .= "  <tr id='item-{$item['category_id']}'>
                <td><input type='checkbox' name='checkItem'class='checkItem'></td>
                <td><span class='tbody-text'>{$item['category_id']}</h3></span>";
                $this->result .= " <td class='clearfix'>
                <div class='tb-title fl-left'>
                    <a title ='Sửa danh mục' href='?scope=product&action=updatecat&id={$item['category_id']}' title=''>{$char}{$item["category_name"]}</a>
                </div></td> ";
                $this->result .= " <td><span class='tbody-text'>{$item["parent_id"]}</span></td>";
                $this->result .= " <td><span title='Thay đổi trạng thái hiển thị' ul='?mod=product&action=catstatus' class='tbody-text status";
                $this->result .= ($item["status"] == 1)? " active" : " hiden";
                $this->result .="' pid ='{$item["category_id"]}'>";
                $this->result .= $item["status"] == 1 ? 'Active':'Hiden';
                $this->result .= "</span></td>";
                $this->result .= " <td><span class='tbody-text'>{$item["created_time"]}</span></td>";
                $this->result .= "<td class = 'clearfix'>
                        <ul class='list-operation'>
                            <li><p href='' action='cat' title='Xóa' class='delete product' item = '{$item['category_id']}'><i class='fa fa-trash' aria-hidden='true'></i></p></li>
                        </ul>
                </td>";
                $this->result .= "</tr>";
                unset($listProductCat[$key]);
                $this->dequyListCat($listProductCat, $item["category_id"], $char.'- - ');
            }
        }
    }

    public function dequyListCat2($listProductCat, $parent_id = 0, $char = '') {
        foreach ($listProductCat as $key => $item) {
            if($item["parent_id"] == $parent_id) {
                $this->result .= "  <tr id='item-{$item['category_id']}'>
                <td><input type='checkbox' name='checkItem'class='checkItem'></td>
                <td><span class='tbody-text'>{$item['category_id']}</h3></span>";
                $this->result .= " <td class='clearfix'>
                <div class='tb-title fl-left'>
                    <a title ='Sửa danh mục' href='?scope=post&action=updatepostcat&id={$item['category_id']}' title=''>{$char}{$item["category_name"]}</a>
                </div></td> ";
                $this->result .= " <td><span class='tbody-text'>{$item["parent_id"]}</span></td>";
                $this->result .= " <td><span title='Thay đổi trạng thái hiển thị' class='tbody-text status";
                $this->result .= ($item["status"] == 1)? " active" : " hiden";
                $this->result .="' pid ='{$item["category_id"]}'>";
                $this->result .= $item["status"] == 1 ? 'Active':'Hiden';
                $this->result .= "</span></td>";
                $this->result .= " <td><span class='tbody-text'>{$item["created_time"]}</span></td>";
                $this->result .= "<td class = 'clearfix'>
                        <ul class='list-operation'>
                            <li><p href='' action='cat' title='Xóa' class='delete post' item = '{$item['category_id']}'><i class='fa fa-trash' aria-hidden='true'></i></p></li>
                        </ul>
                </td>";
                $this->result .= "</tr>";
                unset($listProductCat[$key]);
                $this->dequyListCat2($listProductCat, $item["category_id"], $char.'- - ');
            }
        }
    }
   
    }
?>