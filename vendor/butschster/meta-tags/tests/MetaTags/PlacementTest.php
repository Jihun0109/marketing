<?php

namespace Butschster\Tests\MetaTags;

use Butschster\Head\MetaTags\Placement;
use Butschster\Head\MetaTags\Entities\Tag;
use Butschster\Head\MetaTags\TagsCollection;
use Butschster\Tests\TestCase;

class PlacementTest extends TestCase
{
    function test_it_extends_of_tags_collection()
    {
        $placement = new Placement();

        $this->assertInstanceOf(TagsCollection::class, $placement);
    }

    function test_in_can_be_converted_to_html()
    {
        $placement = new Placement();

        $placement->add(Tag::meta([
            'attr' => 'value'
        ]));

        $placement->add(Tag::meta([
            'attr' => 'value1'
        ]));

        $this->assertHtmlableContains([
            '<meta attr="value">',
            '<meta attr="value1">'
        ], $placement);
    }

}