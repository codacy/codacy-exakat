Properties may be assigned default values at declaration time. Such values may be later modified, if needed. 

<?php

class foo {
    private $propertyWithDefault = 1;
    private $propertyWithoutDefault;
    private $propertyThatCantHaveDefault;
    
    public function __construct() {
        // Skip this extra line, and give the default value above
        $this->propertyWithoutDefault = 1;

        // Static expressions are available to set up simple computation at definition time.
        $this->propertyWithoutDefault = OtherClass::CONSTANT + 1;

        // Arrays, just like scalars, may be set at definition time
        $this->propertyWithoutDefault = [1,2,3];

        // Objects or resources can't be made default. That is OK.
        $this->propertyThatCantHaveDefault = fopen('/path/to/file.txt');
        $this->propertyThatCantHaveDefault = new Fileinfo();
    }
}

?>

Default values will save some instructions in the constructor, and makes the value obvious in the code. 