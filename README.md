# Internal: VirtKick Infrastructure

[![GPA](https://img.shields.io/codeclimate/github/virtkick/virtkick-internal-infrastructure.svg?style=flat-square)](https://codeclimate.com/github/virtkick/virtkick-internal-infrastructure)
[![Gratipay](https://img.shields.io/gratipay/virtkick.svg?style=flat-square)](https://gratipay.com/virtkick/)

A few specs to make sure VirtKick infrastructure is configured correctly, e.g.:

- services are started
- internal network is up work
- hypervisors answer

You don't need this component to run VirtKick.


## Issues

Please report an issue if you have ideas what other infrastructure parts can be tested.


## Requirements

- [RVM](https://rvm.io/)
- Ruby 2.1 from RVM
- Linux

## One time setup

```
rvm get stable
rvm install 2.1
rvm use 2.1 --default
gem install bundler
```

## Running

```
bundle exec rake spec
```

# Sponsors

- Tip us weekly with Gratipay: [![Donate with Gratipay](https://img.shields.io/gratipay/Nowaker.svg?style=flat-square)](https://gratipay.com/Nowaker/)
- One-time donate with PayPal: [![Donate with PayPal](https://raw.githubusercontent.com/virtkick/virtkick/master/paypal-donate.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=AGF4FPG7JZ7NY&lc=US)
- [Become a corporate sponsor](https://www.virtkick.io/become-a-sponsor.html).

Thanks for your support!


# License

VirtKick, a simple orchestrator.
Copyright (C) 2014 StratusHost Damian Nowak

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see https://www.gnu.org/licenses/agpl-3.0.html.


# Trademark

The VirtKick name and logo are trademarks of Damian Nowak.
You may not use them for promotional purposes,
or in any way that claims, suggests or looks like
there's a relationship or endorsement by VirtKick.

Other marks and names mentioned herein may be trademarks of their respective companies.
