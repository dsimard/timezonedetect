should = require 'should'
tz = require '../timezonedetect.js'
{equal, ok} = require 'assert'

describe 'Timezone', ->
  it 'is north america - eastern time', ->
    tz.testOffset(300, 240);
    tz.hasDst().should.be.true
    tz.st().should.not.equal tz.dst()
    tz.invertedSt().should.equal 300
    tz.st().should.equal -300
    tz.dst().should.equal -240
    tz.stToString().should.equal '-0500'
    tz.dstToString().should.equal '-0400'
    tz.stToString(':').should.equal '-05:00'
    
  it 'north america - St John (30 minute offset)', ->
    tz.testOffset(210, 150);
    equal(tz.stToString(), "-0330")
    equal(tz.dstToString(), "-0230")
    
    # Set time separator
    tz.timeSeparator = "|"
    equal(tz.stToString(), "-03|30")
    equal(tz.stToString(":"), "-03:30")
    tz.timeSeparator = ""
    
  it "Australia - Dysney", ->
    tz.testOffset(-660, -600)
    ok(tz.hasDst())
    ok(tz.st() != tz.dst())
    equal(tz.invertedSt(), -600)
    equal(tz.st(), 600)
  
  it "Argentina - San Luis - no DST", ->
    tz.testOffset(180, 180);
    ok(!tz.hasDst());
    ok(tz.st() == tz.dst());
  
  it "Brazil - Sao Paulo", ->
    tz.testOffset(120, 180);
    ok(tz.hasDst());
    ok(tz.st() != tz.dst());
  
  it "Hong Kong - no DST", ->
    tz.testOffset(-480, -480);
    ok(!tz.hasDst());
    ok(tz.st() == tz.dst());
  
  it "London", ->
    tz.testOffset(0, -60);
    ok(tz.hasDst());
    ok(tz.st() != tz.dst());
    equal(tz.stToString(), "+0000");
  
  
  it "Africa - Ouagadougou", ->
    tz.testOffset(0, 0);
    ok(!tz.hasDst());
    ok(tz.st() == tz.dst());
    equal(tz.stToString(), "+0000");
    equal(tz.stToString(), tz.dstToString());
  
  
  it "Time separator", ->
    tz.testOffset(300, 240);
    
    tz.timeSeparator = ',';
    equal(tz.stToString(':'), "-05:00");
    equal(tz.stToString(), "-05,00");
    
    tz.timeSeparator = '';
    equal(tz.stToString(), "-0500");
    
    tz.timeSeparator = null;
    equal(tz.stToString(), "-0500");
    
  it 'defines aliases', ->
    tz.hasDst.should.equal tz.hasDaylightSavingTime
    tz.hasDst.should.equal tz.hasDaylightSaving
    tz.st.should.equal tz.standardTime
    tz.stToString.should.equal tz.standardTimeToString
    tz.dst.should.equal tz.daylightSavingTime
    tz.dst.should.equal tz.daylightSaving
    tz.dstToString.should.equal tz.daylightSavingToString
    tz.dstToString.should.equal tz.daylightSavingTimeToString
    tz.isStandardTime.should.equal tz.isSt
    tz.isDst.should.equal tz.isDaylightSavingTime
    
  it 'returns if a date is standard time', ->
    tz.isSt(new Date(2012, 1, 1), 300).should.be.true
    tz.isSt(new Date(2012, 7, 1), 240).should.be.false
    
  it 'returns if a date is daylight saving time', ->
    tz.isDst(new Date(2012, 1, 1), 300).should.be.false
    tz.isDst(new Date(2012, 7, 1), 240).should.be.true
    
  it "is not dst if no dst", ->
    tz.testOffset(0, 0);
    tz.isDst(new Date(2012, 1, 1), 0).should.be.false
    tz.isDst(new Date(2012, 7, 1), 0).should.be.false
