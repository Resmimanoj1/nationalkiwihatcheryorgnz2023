<?php

/**
 * Promotion administration interface
 * This class integrates management of promotions into the CMS administrator.
 * Promotions are managed independently of pages.
 *
 * @author Matthew Walker <matthew.walker@nttourism.co.nz>
 * @package Promotions
 */
class PromotionAdmin extends ModelAdmin {

	private static $menu_icon = 'promotions/images/icons/whatshot.png';

	private static $menu_title = 'Promotions';

	private static $menu_priority = 5;

	private static $managed_models = [
		'Promotion'
	];

	private static $url_segment = 'Promotions';

	public function getEditForm($id = null, $fields = null) {
		$form = parent::getEditForm($id, $fields);

		$gridFieldMultiClassComponent = new GridFieldAddNewMultiClass();
		$gridFieldMultiClassComponent->setClasses(['PromotionBanner','PromotionText','PromotionImage','PromotionTestimonial']);
		$gridFieldOrderableComponent = new GridFieldOrderableRows('Sort');
		$form
			->Fields()
			->fieldByName('Promotion')
			->getConfig()
			->removeComponentsByType('GridFieldAddNewButton')
  		->addComponent($gridFieldMultiClassComponent)
			->addComponent($gridFieldOrderableComponent);

		$form
			->Fields()
			->push(
				LabelField::create('Note','Reorder promotions by clicking and dragging the handles at left.')
			);

			return $form;

	}

}
