package ;

import haxe.unit.TestRunner;
import neko.Lib;

import jonas.Base16;
import jonas.BoxedIterable;
import jonas.ds.DSTools;
import jonas.ds.ListTools;
import jonas.ds.queue.Queue;
import jonas.io.BytesExtension;
import jonas.Maybe;
import jonas.StopWatch;
import jonas.Vector;

/*
 * jonas-haxe tests
 * Copyright (c) 2012 Jonas Malaco Filho
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:�
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/**
 * Full testing
 */
class Tests {
	
	public function new() {
		run_all_tests();
	}
	
	static function run_all_tests() {
		var t = new TestRunner();
		jonas.Base64TestSuite.add_tests( t );
		jonas.HMACTestSuite.add_tests( t );
		jonas.MathExtensionTestSuite.add_tests( t );
		jonas.NumberPrinterTestSuite.add_tests( t );
		jonas.ds.DAryHeapTestSuite.add_tests( t );
		jonas.ds.HashTableTestSuite.add_tests( t );
		jonas.ds.MultiHashesTestSuite.add_tests( t );
		jonas.ds.RjTreeTestSuite.add_tests( t );
		jonas.ds.queue.PriorityQueueTestSuite.add_tests( t );
		jonas.ds.queue.SimpleFIFOTestSuite.add_tests( t );
		jonas.graph.GraphTestSuite.add_tests( t );
		t.run();
	}
	
	static function main() {
		Lib.println( 'Tests' );
		Lib.println( 'Copyright (c) 2012 Jonas Malaco Filho' );
		Lib.println( 'Powered by haXe (haxe.org) and neko (nekovm.org)' );
		new Tests();
	}
	
}