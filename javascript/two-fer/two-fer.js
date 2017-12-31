
module.exports = class TwoFer {
  twoFer(name=null) {
    if(name) {
      return `One for ${name}, one for me.`;
    } else {
      return "One for you, one for me.";
    }
  }
}
