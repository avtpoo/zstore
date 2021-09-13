<?php

namespace App\Pages\Register;

use App\Entity\ProdProc;
use App\Entity\ProdStage;
 
use App\Helper as H;
use App\System;
use Zippy\Html\DataList\DataView;
use Zippy\Html\DataList\Paginator;
use Zippy\Html\Form\AutocompleteTextInput;
use Zippy\Html\Form\Date;
use Zippy\Html\Form\DropDownChoice;
use Zippy\Html\Form\Form;
use Zippy\Html\Form\TextInput;
use Zippy\Html\Form\TextArea;
use Zippy\Html\Label;
use Zippy\Html\Link\ClickLink;
use Zippy\Html\Link\BookmarkableLink;

/**
 * журнал производственные процессы
 */
class ProdProcList extends \App\Pages\Base
{
 
    private $_proc    = null;
   

    /**
     *
     * @return DocList
     */
    public function __construct() {
        parent::__construct();
        if (false == \App\ACL::checkShowReg('ProdProcList')) {
            return;
        }

     
        $proclist = $this->add(new DataView('proclist', new PProcListDataSource($this), $this, 'proclistOnRow'));

        $this->add(new Paginator('pag', $proclist));
        $proclist->setPageSize(H::getPG());

        $this->add(new Form('editproc'))->setVisible(false);
        $this->editproc->add(new TextInput('editname'));
        $this->editproc->add(new TextInput('editorder'));
        $this->editproc->add(new TextInput('editpartion'));
        $this->editproc->add(new TextArea('editnotes'));
        
        $this->editproc->add(new SubmitButton('save'))->onClick($this, 'OnSave');
        $this->editproc->add(new Button('cancel'))->onClick($this, 'cancelOnClick');
        $this->editproc->add(new Button('delete'))->onClick($this, 'deleteOnClick');
      
        $proclist->Reload();
     
    }

 

    public function proclistOnRow(\Zippy\Html\DataList\DataRow $row) {
        $pnlist = ProdProc::getStateName()  ;
       
        $p = $row->getDataItem();

        $row->add(new Label('name', $p->document_number));

        $row->add(new Label('basedoc', $p->basedoc));

        $row->add(new Label('snumber', $p->snumber));

        $row->add(new Label('state', $pnlist[$p->state]));

        $row->add(new ClickLink('show', $this, 'showOnClick'));
     //   $row->add(new Label('datestart', H::fd($doc->paydate)));
    //    $row->add(new Label('dateend', H::fd($doc->paydate)));
      
          $row->add(new ClickLink('show'))->onClick($this, 'onShow');
          $row->add(new ClickLink('edit'))->onClick($this, 'OnEdit');
          $row->add(new ClickLink('stages'))->onClick($this, 'OnStages');
          $row->add(new ClickLink('copy'))->onClick($this, 'OnCopy');

    }

    //просмотр
    public function showOnClick($sender) {

         

   
    }


   
}

/**
 *  Источник  данных  для   списка  документов
 */
class PProcListDataSource implements \Zippy\Interfaces\DataSource
{

    private $page;

    public function __construct($page) {
        $this->page = $page;
    }

    private function getWhere() {
  

  
        return "";
    }

    public function getItemCount() {
        
        return ProdProc::findCnt($this->getWhere());
    }

    public function getItems($start, $count, $sortfield = null, $asc = null) {
         

       return  ProdProc::find($this->getWhere()," pp_id desc  ");

        
    }

    public function getItem($id) {

    }

}