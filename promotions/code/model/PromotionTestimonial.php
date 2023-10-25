<?php

/**
 * Testimonial Promotions
 * This class models testimonial promotions.
 *
 * @author Matthew Walker <matthew.walker@nttourism.co.nz>
 * @package Promotions
 */
class PromotionTestimonial extends Promotion
{

  private static $singular_name = "Testimonial Promotion";

  private static $db = [
    'Testimonial'    		    => 'Varchar(400)',
    'Author'   		          => 'Varchar(100)'
  ];

  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->addFieldsToTab(
        'Root.Main',
        [
            TextareaField::create('Testimonial')->setRows(4),
            TextField::create('Author')
        ],
        'ButtonLabel'
    );

    return $fields;
  }

  public function getLabel() {
    return $this
      ->dbObject('Testimonial')
      ->LimitCharactersToClosestWord(100);
  }

  public function getTitle() {
    return $this->singular_name();
  }

}
