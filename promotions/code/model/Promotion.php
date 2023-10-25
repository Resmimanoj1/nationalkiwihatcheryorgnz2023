<?php

/**
 * Promotions
 * This class models promotions.
 *
 * @author Matthew Walker <matthew.walker@nttourism.co.nz>
 * @package Promotions
 */
class Promotion extends DataObject
{

	private static $default_sort = "Sort";

  private static $db = [
    'Active'    		        => 'Boolean',
    'ButtonLabel'    		    => 'Varchar(50)',
    'ButtonLink'            => 'Varchar(200)',
	'Sort'								  => 'Int'
  ];

  private static $summary_fields = [
    'Label'            => 'Label',
    'singular_name'    => 'Type',
    'Active.Nice'      => 'Active'
  ];

  public function getCMSFields() {
  		$fields = parent::getCMSFields();

  		$fields->removeByName('Sort');

      return $fields;
  	}

  public function getLabel() {
    return $this->ID;
  }

}
