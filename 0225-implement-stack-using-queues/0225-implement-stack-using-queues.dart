class MyStack {
  List<int> queue = [];

  MyStack() {}

  void push(int x) {
    queue.add(x);

    for (int i = 0; i < queue.length - 1; i++) {
      queue.add(queue.removeAt(0));
    }
  }

  int pop() {
    return queue.removeAt(0);
  }

  int top() {
    return queue.first;
  }

  bool empty() {
    return queue.isEmpty;
  }
}