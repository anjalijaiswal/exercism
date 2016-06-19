Perhaps an exercism nit isn't quite the place for this but I'll answer your question here anyway. If someone objects, I can remove it later...

Let me start by saying that algorithms and data structures can be quite complex. But they are also fascinating and can give amazing insights into the workings of many things in this universe much like calculus + physics. It's also quite essential for any intermediate programmer so I recommend picking up a good book or following one of coursera's free courses. MIT has a great free introduction to algorithms online taught by the author of one the great books. I really recommend watching it and buying the book (although you can't really go wrong with any algo book). For a more thought provoking (though not very practical) look at CS, I also recommend the lecture notes on Great Ideas in Theoretical Physics

As to your actual question...
I'm assuming that by DFS you mean Depth-First Search. Depth first and breadth-first searches are really the bread-and-butter of algorithms. You'll find that they pop up all over the place. In fact, you've already implemented DFS (sort-of). You see, when you wrote #each, what you were doing is a depth first search traversal, always going to the smallest element first. The only thing you need for the search is to break once you've found the element you were looking for which is just a return statement...

Now in general you want to look for something else but just the minimum.

    You'll want to start with a tree that is ordered.
    Next you'll want to keep a stack of all the nodes that you know about, but have not visited yet.
    That stack will be empty, but we know about the root of the tree, so add the root.
    Now itteratively do the following things.
        Remove the top node from stack. This will be the current_node.
        Check if the current node is the one you are looking for.
        Add the child nodes to the stack in order (for eg. if the tree is ordered by size with left < parent < right and you are looking for the biggest, push left then right, such that right is on the top).

The critical thing here is the way in which you push things on the stack. As long as you push them in the right way, you will go deeper in to the tree and you will be doing a depth-first-search.

It's best to this on paper a few times first to wrap your head around it. It's easier to explain with an image and even better with an animation, but unfortunately that's not possible here, so try this on paper! After you've done that, look at your code to the right and notice how #each is essentially doing DFS traversal even though the "stack" is hidden in the recursion. Don't be fooled by this, that's just the difference in functional programming and procedural programming (it's a result of theoretical computer science that any singular recursive program can be written as an iterative one, i.e. with loops).

Finally, this video shows a very easy DFS algorithm that is more general (works on all graphs) than the one above (differs in that it adds only one child - the deepest - to the stack instead of all children).