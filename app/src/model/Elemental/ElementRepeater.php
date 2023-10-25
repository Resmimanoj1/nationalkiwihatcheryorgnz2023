<?php

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\LiteralField;
use SilverStripe\ORM\FieldType\DBField;
use Symbiote\GridFieldExtensions\GridFieldOrderableRows;

class ElementRepeater extends BaseElement
{

    private static $singular_name = 'repeater';
    private static $plural_name   = 'repeater';
    private static $icon = 'font-icon-thumbnails';
    private static $inline_editable = false;

    const TILE_STYLES = [
        'image-slider'             => 'Traditional Slider: All Fields',
        'three-col'                => 'Three Columns: Will stack nicely (no CTA)',
		'three-col-grey'           => 'Three Columns: Will stack nicely (Grey background - no CTA)',
		'callout'                  => 'Callout: Big Image with Text over - both buttons',
		'two-col'                  => 'Two Columns: Big and bold - both buttons',
		'fullwidth-image-stack'    => 'Image Stack: Just the image - they will be full width',
    ];

    private static $db = [
        'TileStyle'		           => 'Varchar(100)'
	];

    private static $has_many = [
        'Tiles'                    => 'RepeaterTile'
    ];

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Repeater');
    }

    public function getCMSFields()
    {
      $fields = parent::getCMSFields();

      $fields->removeFieldFromTab(
          'Root',
          'Tiles'
      );

      if ( $this->IsInDB() ) {

        $fields->addFieldsToTab(
          'Root.Main',
          [
            DropdownField::create(
                'TileStyle',
                'Tile style',
                self::TILE_STYLES
            ),
            GridField::create(
              'TilesGrid',
              'Tiles',
              $this->Tiles(),
              GridFieldConfig_RecordEditor::create()->addComponent(new GridFieldOrderableRows('SortOrder'))
            ),
            LiteralField::create('Note', 'Reorder tiles by clicking and dragging the handles at left.')
          ]
        );

      }

      return $fields;
    }

    public function getSummary()
    {
        $numTiles = $this->Tiles()->Count();
        if ($numTiles == 0) {
            $longSummary = 'No tiles';
        } else if ($numTiles == 1) {
            $longSummary = '1 tile';
        } else $longSummary = $numTiles . ' tiles';
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
