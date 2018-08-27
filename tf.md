
Extract from [blog](https://www.analyticsvidhya.com/blog/2016/10/an-introduction-to-implementing-neural-networks-using-tensorflow/)

TensorFlow follows a lazy approach. The usual workflow of running a program in TensorFlow is as follows:

**Build a computational graph**, this can be any mathematical operation TensorFlow supports.
**Initialize variables**, to compile the variables defined previously
**Create session**, this is where the magic starts!
**Run graph in session**, the compiled graph is passed to the session, which starts its execution. 
**Close session**, shutdown the session.


Few terminologies used in TensoFlow;

**placeholder**: A way to feed data into the graphs.
**feed_dict**: A dictionary to pass numeric values to computational graph.

