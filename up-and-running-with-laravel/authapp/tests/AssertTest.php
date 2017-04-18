<?php 
	class AssertTest extends TestCase {
		public function testAssert() {
			/*$theString = "Roux Academy of Art and Science";
			$this->assertSame('Roux Academy of Art and Science', $theString);*/
			$this->assertArrayHasKey('myKey', array('myKey' => 'myArray'));
		}
	}
?>