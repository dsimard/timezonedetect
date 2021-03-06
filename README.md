# TimezoneDetect

## Detect the standard time, the daylight saving time for the time zone

[![Build Status](https://travis-ci.org/dsimard/timezonedetect.png?branch=master)](https://travis-ci.org/dsimard/timezonedetect)

    if (timezonedetect.hasDaylightSavingTime()) {
      console.log('You have daylight saving time in your timezone');
    } else {
      console.log('You DO NOT have daylight saving time in your timezone');
    }

    console.log('Your standard time zone offset in second is ' + jsk.tz.standardTime());
    console.log('Your standard time zone offset is : ' + jsk.tz.standardTimeToString());
    
See the complete documentation in [timezonedetect.js](http://dsimard.github.com/timezonedetect/timezonedetect.js.html)

## Testimonial

> Finally, timezones in javascript done right. The world has been made a better place via this fine javascript library.

_Garry Tan_, Partner with Y Combinator. Cofounder of Posterous. ([source](http://axonflux.com/finally-timezones-in-javascript-done-right))

## Install

To __install for a website__, copy `timezonedetect.min.js` with the other javascript files of your project and include it.


To __install in a Node.js__ project `npm install timezonedetect`

## Contribute

Give what you want to contribute to open-source : 

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_paynowCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=5Q2QAJSHP8Y8Y)

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
