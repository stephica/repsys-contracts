contract RepSysCreditScore {
	mapping (address => CreditScore) scores;

	struct CreditScore {
		bytes2 letter;
		uint number;
		uint expire;
		bytes ipfsHash;
	}

	function setScore(address target, bytes2 _letter,
					uint _number, uint _expire, bytes _ipfsHash) {
		scores[target] = CreditScore({
			letter: _letter,
			number: _number,
			expire: _expire,
			ipfsHash: _ipfsHash
			});
	}

	function getScoreLetter(address addr) returns(bytes2) {
  	return scores[addr].letter;
	}
	function getScoreNumber(address addr) returns(uint) {
  	return scores[addr].number;
	}
	function getScoreExpire(address addr) returns(uint) {
  	return scores[addr].expire;
	}
	function getScoreIpfsHash(address addr) returns(bytes) {
  	return scores[addr].ipfsHash;
	}
}
