package jonas.graph;

import jonas.graph.Digraph;

/*
 * Generic shortest path algorithm
 * Copyright (c) 2012 Jonas Malaco Filho
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
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

class SPVertex extends Vertex {
	public var cost : Float;
	public var parent : SPVertex;
	override public function toString() : String { return super.toString() + '(parent=' + ( null != parent ? parent.vi : null ) + ', cost=' + cost + ')'; }
}

class SPArc extends Arc {
	public var cost : Float;
	public function new( w, cost ) {
		this.cost = cost;
		super( w );
	}
	override public function toString() : String { return super.toString() + '(arc cost=' + cost + ')'; }
}

class SPDigraph<V : SPVertex, A : SPArc> extends Digraph<V, A> {
	
	override public function valid() : Bool {
		return true;
	}
	
	// shortest path tree from s
	public function compute_tree( s : V ) : Void {
		throw 'Not implemented';
	}
	
	// shortest path from s to t
	public function compute_path( s : V, t : V ) : Void {
		throw 'Not implemented';
	}
	
	// shortest paths from s to t( v ) == true
	public function compute_paths( s : V, t : V -> Bool ) : Void {
		throw 'Not implemented';
	}
	
	// path reconstruction
	public function get_path( t : V ) : List<V> {
		var p = new List();
		var w = t;
		while ( w != w.parent ) {
			p.push( w );
			w = cast w.parent;
		}
		p.push( w );
		return p;
	}
	
}