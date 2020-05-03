<?php

namespace Butschster\Tests\MetaTags\Entities;

use Butschster\Head\MetaTags\Entities\JavascriptVariables;
use Butschster\Tests\TestCase;
use Illuminate\Contracts\Support\Arrayable;
use Illuminate\Contracts\Support\Jsonable;

class JavascriptVariablesTest extends TestCase
{
    function test_js_vars_can_be_rendered()
    {
        $container = new JavascriptVariables([
            'array' => ['jquery', 'vuejs'],
            'string' => 'Hello world',
            'number' => 4815162342,
            'bool' => true,
            'nullable' => null,
            'json' => new JsonSerilizable(),
            'json_from_array' => new ArraySerializable(),
            'object_to_string' => new ToStringTransformable(),
        ]);

        $this->assertHtmlableEquals(<<<VAR
<script>
window.array = ["jquery","vuejs"];
window.string = 'Hello world';
window.number = 4815162342;
window.bool = true;
window.nullable = null;
window.json = {"hello":"world"};
window.json_from_array = {"hello":"world"};
window.object_to_string = 'Hello world';
</script>
VAR
, $container);
    }

    function test_a_variable_can_be_put()
    {
        $container = new JavascriptVariables();

        $container
            ->put('string', 'Hello world')
            ->put('json', new JsonSerilizable());

        $this->assertHtmlableEquals(<<<VAR
<script>
window.string = 'Hello world';
window.json = {"hello":"world"};
</script>
VAR
            , $container);

    }

    function test_a_namespace_can_be_set_by_constructor()
    {
        $container = new JavascriptVariables([
            'string' => 'Hello world',
            'number' => 4815162342,
        ], 'custom');

        $this->assertHtmlableEquals(<<<VAR
<script>
window.custom = window.custom || {};
custom.string = 'Hello world';
custom.number = 4815162342;
</script>
VAR
            , $container);
    }

    /**
     * @expectedException \InvalidArgumentException
     */
    function test_throw_an_exception_if_variable_can_not_transformable()
    {
        new JavascriptVariables([
            'object' => new NonTransformable(),
        ]);
    }

    function test_a_placement_can_be_changed()
    {
        $container = new JavascriptVariables();

        $this->assertEquals('head', $container->getPlacement());

        $container->setPlacement('footer');
        $this->assertEquals('footer', $container->getPlacement());
    }

    function test_it_can_be_add_to_meta_object()
    {
        $meta = $this->makeMetaTags();
        $container = new JavascriptVariables([
            'string' => 'Hello world',
            'number' => 4815162342,
        ], 'custom');

        $meta->addTag('variables', $container);

        $this->assertHtmlableEquals(<<<VAR
<script>
window.custom = window.custom || {};
custom.string = 'Hello world';
custom.number = 4815162342;
</script>
VAR
            , $meta);

    }
}

class NonTransformable {

}

class JsonSerilizable implements Jsonable
{
    public function toJson($options = 0)
    {
        return json_encode([
            'hello' => 'world'
        ]);
    }
}

class ArraySerializable implements Arrayable
{
    public function toArray()
    {
        return [
            'hello' => 'world'
        ];
    }
}

class ToStringTransformable
{
    public function __toString()
    {
        return 'Hello world';
    }
}