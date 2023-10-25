<?php

/**
 * Text Promotions
 * This class models text promotions.
 *
 * @author Matthew Walker <matthew.walker@nttourism.co.nz>
 * @package Promotions
 */
class PromotionText extends Promotion
{

  private static $singular_name = "Text Promotion";

  private static $db = [
    'HeadingLine1'    	    => 'Varchar(100)',
    'HeadingLine2'    	    => 'Varchar(100)',
    'HeadingLine3'    	    => 'Varchar(100)',
    'HeadingLine4'    	    => 'Varchar(100)',
    'HighlightLine1'    	  => 'Boolean',
    'HighlightLine2'    	  => 'Boolean',
    'HighlightLine3'    	  => 'Boolean',
    'HighlightLine4'    	  => 'Boolean',
    'Message'    	          => 'Varchar(200)'
  ];

  public function getCMSFields() {
    $fields = parent::getCMSFields();

    $fields->removeByName([
      'HighlightLine1',
      'HighlightLine2',
      'HighlightLine3',
      'HighlightLine4',
      'HeadingLine1',
      'HeadingLine2',
      'HeadingLine3',
      'HeadingLine4'
    ]);

    $fields->addFieldsToTab(
        'Root.Main',
        [
          FieldGroup::create(
            TextField::create('HeadingLine1', ''),
            CheckboxField::create('HighlightLine1', 'Highlight')
          )
            ->setTitle('Line 1'),
          FieldGroup::create(
            TextField::create('HeadingLine2', ''),
            CheckboxField::create('HighlightLine2', 'Highlight')
          )
            ->setTitle('Line 2'),
          FieldGroup::create(
            TextField::create('HeadingLine3', ''),
            CheckboxField::create('HighlightLine3', 'Highlight')
          )
            ->setTitle('Line 3'),
          FieldGroup::create(
            TextField::create('HeadingLine4', ''),
            CheckboxField::create('HighlightLine4', 'Highlight')
          )
            ->setTitle('Line 4'),
          TextField::create('Message')
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
