# iOSUtils

Various iOS helper utilities including round images, etc.


## Getting Started

Run the following commands to get the utilities.

    $ git clone https://github.com/vcollak/iOSUtils.git



## VCImage Class

Class provides various image utilities. Copy VCImage.h and VCImage.m into your project. Make sure you import QuartzCore/QuartzCore.h in your view controller and also add the QuartzCore library to your project.

### roundImageLayerWithShadow

Provide an image and the a point (coordinates) for the view and the method will return a CALayer that will round the image (circle) and add a shadow. 

```objective-c
 //get an image
 UIImage* image = [UIImage imageNamed:@"profile_pic.jpg"];
 
 //call the roundImageLayerWithShadow: method
 CALayer *layer = [VCImage roundImageLayerWithShadow:image viewCenterPoint:self.view.center];

 //add the rounded image to the view
 [self.view.layer addSublayer:layer];
``` 

Credits
-------
VCImage based on on TJViewController created by Travis Jeffery on 2012-08-06.


Contact
-------
Follow Vladimir Collak on Twitter @vcollak


License
-------

Copyright (c) 2013 Vladimir Collak

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
the documentation of any redistributions of the template files themselves
(but not in projects built using the templates).

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.




