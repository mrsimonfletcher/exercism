module.exports = class DnaTranscriber {
  toRna(str) {
    let arr = str.split('')

    return arr.map(letter => {
      if(letter in this.complements) {
        return this.complements[letter];
      } else {
        throw new Error('Invalid input');
      }
    }).join('');
  }

  get complements() {
    return {
      'G': 'C',
      'C': 'G',
      'T': 'A',
      'A': 'U'
    }
  }
}
