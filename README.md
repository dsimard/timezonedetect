# TimezoneDetect

## Detect the standard time, the daylight saving time for the time zone

[![Build Status](https://secure.travis-ci.org/dsimard/jskata.png?branch=2012-12-02_Node)](https://travis-ci.org/dsimard/jskata)

    if (DetectTimezone.hasDaylightSavingTime()) {
      console.log('You have daylight saving time in your timezone');
    } else {
      console.log('You DO NOT have daylight saving time in your timezone');
    }

    console.log('Your standard time zone offset in second is ' + jsk.tz.standardTime());
    console.log('Your standard time zone offset is : ' + jsk.tz.standardTimeToString());
    
See the complete documentation in [timezonedetect.js](timezonedetect.js.html)

## Install

To __install for a website__, copy `timezonedetect.min.js` with the other javascript files of your project and include it.


To __install in a Node.js__ project `npm install timezonedetect`

## Contribute

You can create [issues](https://github.com/dsimard/timezonedetect/issues).

You can also contribute code :

1. Fork the code on GitHub
2. Clone your fork in your environment : `git clone git@github.com:USERNAME/timezonedetect.git`
3. Create a branch for your feature : `git checkout -b your_branch_name`
4. Write and delete code and commit as often as you can : `git commit -am "A descriptive message"`
5. Push the branch to your fork : `git push origin your_branch_name`
6. Create a pull request on GitHub (click the __Pull request__ button on your fork page)

## Need more help?

- Create an [issue](https://github.com/dsimard/timezonedetect/issues).
- Write me an email at <dsimard@azanka.ca>
