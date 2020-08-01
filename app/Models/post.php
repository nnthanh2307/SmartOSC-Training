<?php

    namespace Mvc\Models;

    class Post extends AbstractModel
    {
        public $tableName = "post";
        public $primaryKey = "post_id";

        public function insertPost($data) {
            $this->insert($this->tableName,$data);
        }

        public function renderPagination($start) {
            $listPost = $this->getAll("LIMIT {$start},4");
            $result = "";
            foreach ($listPost as $item) {
                $result .= " <article class='row blog_item'>
                <div class='col-md-3'>
                    <div class='blog_info text-right'>
                         <div class='post_tag'>
                             <a href='#'>Food,</a>
                             <a class='active' href='#'>Technology,</a>
                             <a href='#'>Politics,</a>
                             <a href='#'>Lifestyle</a>
                         </div>
                         <ul class='blog_meta list'>
                             <li><a href='#'>Mark wiens<i class='lnr lnr-user'></i></a></li>
                             <li><a href='#'>12 Dec, 2017<i class='lnr lnr-calendar-full'></i></a></li>
                             <li><a href='#'>1.2M Views<i class='lnr lnr-eye'></i></a></li>
                             <li><a href='#'>06 Comments<i class='lnr lnr-bubble'></i></a></li>
                         </ul>
                     </div>
                </div>
                 <div class='col-md-9'>
                     <div class='blog_post'>
                        <a href='?scope=post&action=detail&id={$item['post_id']}'> 
                            <img src='admin/{$item['post_image']}' alt=''>
                        </a>
                         <div class='blog_details'>
                             <a href='?scope=post&action=detail&id={$item['post_id']}'><h2>{$item['post_title']}</h2></a>
                             <p>{$item['post_description']}</p>
                             <a href='?scope=post&action=detail&id={$item['post_id']}' class='white_bg_btn'>View More</a>
                         </div>
                     </div>
                 </div>
             </article>";
            }
            return $result;
        }
    }
    

?>