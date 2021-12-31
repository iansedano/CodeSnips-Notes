// https://javascript.plainenglish.io/unit-test-front-end-javascript-code-without-a-framework-8f00c63eb7d4


/**
 * test function
 * @param {string} desc
 * @param {function} fn
 */
function it(desc, fn) {
	try {
	fn();
	console.log('\x1b[32m%s\x1b[0m', '\u2714 ' + desc);
	} catch (error) {
	console.log('\n');
	console.log('\x1b[31m%s\x1b[0m', '\u2718 ' + desc);
	console.error(error);
	}
}


function assert(isTrue) {
	if (!isTrue) {
		throw new Error();
	}
}
