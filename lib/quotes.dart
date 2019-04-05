List qL(String x) {
  List<String> q = new List();
  if(x == 'Happiness'){
    q.add('Happy people plan actions, they don’t plan results.');
    q.add('Nobody can be uncheered with a balloon.');
    q.add('Learn to let go. That is the key to happiness.');
  }
  if(x == 'Passion'){
    q.add('I have no special talents. I am only passionately curious.');
    q.add('Passion is the genesis of genius.');
    q.add('I would rather die of passion than of boredom.');
  }
  if(x == 'Success'){
    q.add('Action is the foundational key to all success.');
    q.add('We become what we think about.');
    q.add('Strive not to be a success, but rather to be of value.');
  }
  if(x == 'Creativity'){
    q.add('Creativity takes courage.');
    q.add('The painter has the Universe in his mind and hands.');
    q.add('The chief enemy of creativity is good sense.');
  }
  return q;
}
