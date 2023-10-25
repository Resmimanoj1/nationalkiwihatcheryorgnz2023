<?php

/**
 * Image Promotions
 * This class models image promotions.
 *
 * @author Matthew Walker <matthew.walker@nttourism.co.nz>
 * @package Promotions
 */
class PromotionImage extends Promotion
{

  private static $singular_name = "Image Promotion";

  private static $db = [
    'Heading'    	    	    => 'Varchar(100)',
    'Message'    	          => 'Varchar(200)'
  ];

  private static $has_one = [
    'Image'		         			=> 'Image'
  ];

  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldsToTab(
        'Root.Main',
        [
            TextField::create('Heading'),
            TextField::create('Message')
        ],
        'ButtonLabel'
    );

    return $fields;
  }

  public function getLabel() {
    return $this->Heading;
  }

  public function getTitle() {
    return $this->singular_name();
  }

}
