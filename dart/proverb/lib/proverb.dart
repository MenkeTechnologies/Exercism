class Proverb {
  String recite(List<String> items) => items.indexed
      .map((entry) => entry.$1 < items.length - 1
          ? 'For want of a ${entry.$2} the ${items[entry.$1 + 1]} was lost.'
          : 'And all for the want of a ${items[0]}.')
      .join('\n');
}
