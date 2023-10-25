<?php

/**
 * Banner Promotions
 * This class models banner promotions.
 *
 * @author Matthew Walker <matthew.walker@nttourism.co.nz>
 * @package Promotions
 */
class PromotionBanner extends Promotion
{

  private static $singular_name = "Banner Promotion";

  private static $db = [
    'HeadingLine1'    	    => 'Varchar(100)',
    'HeadingLine2'    	    => 'Varchar(100)',
    'MessageLine1'    	    => 'Varchar(100)',
    'MessageLine2'    	    => 'Varchar(100)',
    'CTAButtonLabel'    	=> 'Varchar(50)',
    'CTAButtonLink'         => 'Varchar(200)'
  ];

  private static $field_labels = [
      'CTAButtonLabel'           => 'CTA Button Label',
      'CTAButtonLink'           => 'CTA Button Link'
  ];

  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldsToTab(
        'Root.Main',
        [
            TextField::create('HeadingLine1'),
            TextField::create('HeadingLine2'),
            TextField::create('MessageLine1'),
            TextField::create('MessageLine2')
        ],
        'ButtonLabel'
    );

    return $fields;
  }

  public function getLabel() {
    return $this->HeadingLine1 . '...';
  }

  public function getTitle() {
    return $this->singular_name();
  }

}
