<?php

namespace App\Modules\Shop\Pages;

use App\Modules\Shop\Entity\ProductGroup;
use App\Modules\Shop\Helper;
use ZCL\DB\EntityDataSource;
use Zippy\Html\DataList\DataView;
use Zippy\Html\Label;
use Zippy\Html\Link\BookmarkableLink;
use Zippy\Html\Panel;

class Main extends Base
{

    private $cat_id = 0;

    public function __construct($id = 0) {
        parent::__construct();

        $this->cat_id = $id;

           

        $this->add(new Label("breadcrumb", Helper::getBreadScrumbs($id), true));

        $this->add(new Panel("subcatlistp"));

     
        $this->subcatlistp->add(new DataView("subcatlist", new EntityDataSource("\\App\\Entity\\Category", "parent_id=" . $id), $this, 'OnCatRow'));
    
        $this->subcatlistp->subcatlist->Reload();
   

        $this->add(new Panel("newlistp"));
        $this->newlistp->add(new DataView("newlist", new EntityDataSource("\\App\\Modules\\Shop\\Entity\\Product", "detail  not  like '<noshop>1</noshop>' ", "item_id desc", 12), $this, 'OnNewRow'))->Reload();
    }

    public function OnCatRow($datarow) {
        $g = $datarow->getDataItem();
        $link = $g->hasChild() > 0 ? "/scat/" . $g->cat_id : "/pcat/" . $g->cat_id;
        $datarow->add(new BookmarkableLink("scatimg", $link))->setValue("/loadshopimage.php?id=" . $g->image_id);
        $datarow->add(new BookmarkableLink("scatname", $link))->setValue($g->cat_name);
    }

    public function OnNewRow($row) {
        $item = $row->getDataItem();
        $row->add(new BookmarkableLink("nimage", "/sp/" . $item->item_id))->setValue('/loadshopimage.php?id=' . $item->image_id . "&t=t");
        $row->add(new BookmarkableLink("nname", "/sp/" . $item->item_id))->setValue($item->itemname);
    }

}
