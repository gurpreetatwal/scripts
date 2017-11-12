# boolean checks
s|expect(\(.*\)).to.be.true()|assert.true(\1)|
s|expect(\(.*\)).to.be.false()|assert.false(\1)|

s|expect(\(.*\)).*\?not.*\?\.ok()|assert.falsy(\1)|
s|expect(\(.*\)).*\?\.ok()|assert.truthy(\1)|

# equality
s|expect(\(.*\)).to.equal(\(.*\))|assert.is(\1, \2)|
s|expect(\(.*\)).to.be.equal(\(.*\))|assert.is(\1, \2)|
s|expect(\(.*\)).to.not.equal(\(.*\))|assert.not(\1, \2)|
s|expect(\(.*\)).to.deep.equal(\(.*\))|assert.deepEqual(\1, \2)|
s|expect(\(.*\)).to.not.deep.equal(\(.*\))|assert.notDeepEqual(\1, \2)|

s|expect(\(.*\)).to.not.have.property('\(.*\)', \(.*\))|assert.isNot(\1.\2, \3)|
s|expect(\(.*\)).to.not.have.property(\(.*\))|assert.false(\2 in \1)|

s|expect(\(.*\)).to.have.property('\(.*\)', \(.*\))|assert.is(\1.\2, \3)|
s|expect(\(.*\)).to.have.property(\(.*\))|assert.true(\2 in \1)|

# type checks
s|expect(\(.*\)).to.be.null()|assert.is(\1, null)|
s|expect(\(.*\)).to.be.undefined()|assert.is(\1, undefined)|

s|expect(\(.*\)).to.be.a('array')|assert.true(Array.isArray(\1))|
s|expect(\(.*\)).to.be.an('array')|assert.true(Array.isArray(\1))|

s|expect(\(.*\)).to.be.a(\(.*\))|assert.is(typeof \1, \2)|
s|expect(\(.*\)).to.be.an(\(.*\))|assert.is(typeof \1, \2)|

s|expect(\(.*\)).*\?not.*\?\.instanceof(\(.*\))|assert.false(\1 instanceof \2)|
s|expect(\(.*\)).*\?\.instanceof(\(.*\))|assert.true(\1 instanceof \2)|

# sinon based expects
s|expect(\(.*\)).*\?not.*\?\.callCount(\(.*\))|assert.isNot(\1.callCount, \2)|
s|expect(\(.*\)).*\?\.callCount(\(.*\))|assert.is(\1.callCount, \2)|

s|expect(\(.*\)).*\?not.*\?\.calledWith(\(.*\))|assert.false(\1.calledWith(\2))|
s|expect(\(.*\)).*\?\.calledWith(\(.*\))|assert.true(\1.calledWith(\2))|

s|expect(\(.*\)).*\?not.*\?\.called()|assert.false(\1.called)|
s|expect(\(.*\)).*\?\.called()|assert.true(\1.called)|

# array methods
s|expect(\(.*\)).*\?not*.*\?\.lengthOf(\(.*\))|assert.isNot(\1.length, \2)|
s|expect(\(.*\)).*\?\.lengthOf(\(.*\))|assert.is(\1.length, \2)|

s|expect(\(.*\)).*\?not*.*\?\.length(\(.*\))|assert.is(\1.length, \2)|
s|expect(\(.*\)).*\?\.length(\(.*\))|assert.is(\1.length, \2)|

s|expect(\(.*\))\.to\.include(\(.*\))|assert.true(\1.includes(\2))|
s|expect(\(.*\))\.to\.contain(\(.*\))|assert.true(\1.includes(\2))|

# integer fudging
s|expect(\(.*\)).*\?\.not\..*\?\.length\..*\?\.above(\(.*\))|assert.false(\1.length > \2)|
s|expect(\(.*\)).*\?\.not\..*\?\.length\..*\?\.least(\(.*\))|assert.false(\1.length >= \2)|
s|expect(\(.*\)).*\?\.not\..*\?\.length\..*\?\.below(\(.*\))|assert.false(\1.length < \2)|
s|expect(\(.*\)).*\?\.not\..*\?\.length\..*\?\.most(\(.*\))|assert.false(\1.length <= \2)|
s|expect(\(.*\)).*\?\.not\..*\?\.length\..*\?\.within(\(.*\), \(.*\))|assert.false(\2 <= \1.length \&\& \1.length <= \3)|

s|expect(\(.*\)).*\?\.length\..*\?\.not\..*\?\.above(\(.*\))|assert.false(\1.length > \2)|
s|expect(\(.*\)).*\?\.length\..*\?\.not\..*\?\.least(\(.*\))|assert.false(\1.length >= \2)|
s|expect(\(.*\)).*\?\.length\..*\?\.not\..*\?\.below(\(.*\))|assert.false(\1.length < \2)|
s|expect(\(.*\)).*\?\.length\..*\?\.not\..*\?\.most(\(.*\))|assert.false(\1.length <= \2)|
s|expect(\(.*\)).*\?\.length\..*\?\.not\..*\?\.within(\(.*\), \(.*\))|assert.false(\2 <= \1.length \&\& \1.length <= \3)|

s|expect(\(.*\)).*\?\.not\..*\?\.above(\(.*\))|assert.false(\1 > \2)|
s|expect(\(.*\)).*\?\.not\..*\?\.least(\(.*\))|assert.false(\1 >= \2)|
s|expect(\(.*\)).*\?\.not\..*\?\.below(\(.*\))|assert.false(\1 < \2)|
s|expect(\(.*\)).*\?\.not\..*\?\.most(\(.*\))|assert.false(\1 <= \2)|
s|expect(\(.*\)).*\?\.not\..*\?\.within(\(.*\), \(.*\))|assert.false(\2 <= \1 \&\& \1 <= \3)|

s|expect(\(.*\)).*\?\.length\..*\?\.above(\(.*\))|assert.true(\1.length > \2)|
s|expect(\(.*\)).*\?\.length\..*\?\.least(\(.*\))|assert.true(\1.length >= \2)|
s|expect(\(.*\)).*\?\.length\..*\?\.below(\(.*\))|assert.true(\1.length < \2)|
s|expect(\(.*\)).*\?\.length\..*\?\.most(\(.*\))|assert.true(\1.length <= \2)|
s|expect(\(.*\)).*\?\.length\..*\?\.within(\(.*\), \(.*\))|assert.true(\2 <= \1.length \&\& \1.length <= \3)|

s|expect(\(.*\)).*\?\.above(\(.*\))|assert.true(\1 > \2)|
s|expect(\(.*\)).*\?\.least(\(.*\))|assert.true(\1 >= \2)|
s|expect(\(.*\)).*\?\.below(\(.*\))|assert.true(\1 < \2)|
s|expect(\(.*\)).*\?\.most(\(.*\))|assert.true(\1 <= \2)|
s|expect(\(.*\)).*\?\.within(\(.*\), \(.*\))|assert.true(\2 <= \1 \&\& \1 <= \3)|
