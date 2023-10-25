<?php

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\Forms\TextField;
use Silverstripe\AssetAdmin\Forms\UploadField;

class ElementVideoStill extends BaseElement
{

    private static $title 		  = "Video Hero Block";
    private static $description = "Display a hero video, logo, heading and subheading";
    private static $icon        = 'font-icon-p-alt-3';

    private static $db = [
        'VideoID'				        => 'Varchar(50)',
        'VideoTitle'            => 'Varchar(100)',
        'VideoBodyText'         => 'HTMLText'
    ];

    private static $has_one = [
        'VideoImage'            => 'SilverStripe\Assets\Image',
        'VideoLogo'             => 'SilverStripe\Assets\Image'
    ];

    private static $owns = [
        'VideoImage',
        'VideoLogo'
    ];

    private static $field_labels = [
        'VideoID'               => 'Hero Video ID',
        'VideoTitle'            => 'Title',
        'VideoBodyText'         => 'Content'
    ];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'VideoStill');
    }

    public function getCMSFields() {
  	$fields = parent::getCMSFields();
  	$fields->addFieldToTab(
  		'Root.Main',
  		UploadField::create('VideoImage', 'Hero Video Static Image'),
      UploadField::create('VideoLogo', 'Logo'),
            'HTML'
  	);
  	   return $fields;
    }

    public function getSummary()
    {
        $longSummary = $this->Heading;
        return DBField::create_field('HTMLText', $longSummary)
            ->Summary(20);
    }

    protected function provideBlockSchema()
    {
        $blockSchema = parent::provideBlockSchema();
        $blockSchema['content'] = $this->getSummary();
        return $blockSchema;
    }

}
