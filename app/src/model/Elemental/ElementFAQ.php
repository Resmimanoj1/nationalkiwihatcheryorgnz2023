<?php

use DNADesign\Elemental\Models\BaseElement;
use NgaiTahuTourism\FAQ\Model\FAQ;
use NgaiTahuTourism\FAQ\Model\FAQCategory;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\LabelField;
use SilverStripe\ORM\DataList;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class ElementFAQ extends BaseElement
{
    private static $inline_editable = false;
    private static $singular_name = 'FAQ block (retired)';
    private static $plural_name = 'FAQ blocks (retired)';
    private static $icon = 'font-icon-white-question';

    private static $description = 'FAQ (frequently asked questions) block';

    private static $has_many = [
        'Categories'                    => 'FAQBlockCategory'
    ];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'FAQ (retired)');
    }

    public function getSummary()
    {
        return 'This block is retired. Please replace.';
    }
    
    public function getCMSFields()
    {
      $this->beforeUpdateCMSFields(function ($fields) {
        if ( $this->IsInDB() ) {

          $fields->removeByName([
            'Categories'
          ]);

          $fields->addFieldsToTab(
            'Root.Categories',
            [
              GridField::create(
                'CategoryGrid',
                'Category',
                $this->Categories(),
                GridFieldConfig_RecordEditor::create()->addComponent(new GridFieldOrderableRows('SortOrder'))
              ),
              LabelField::create('Note', 'Reorder categories by clicking and dragging the handles at left.')
            ]
          );

        }
      });
      return parent::getCMSFields();
    }

}
