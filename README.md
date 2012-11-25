AnimationLib
============

An animation Library for use with Gideros Studio

This is helpful for creating and using spritesheets. It can be used with spritesheets that are laid out horizontally.

Frame1 | Frame2 | Frame3 | Frame4 | Frame5 | ...

You can initialise the animation with

<b>local myAnim = animation.new("anim1.png", 6, 4, 1)</b><br>
where the syntax is imageFileName, maxFrames, tickSpeed, scale<br>
  imageFileName is the image that holds all the images horizontally <-- <i>This is important</i><br>
  maxFrames tells the animation the number of frames that the image has. <br>
      The dimensions of this image should be FrameWidth x maxFrames<br>
  tickSpeed is what determines the speed at which the animation is updated. <br>
      While some animations work on time, this one is set up on frames to skip before updating<br>
  scale is used if you want to scale your animation to a smaller size (fit retina animation on a normal device)<br>

The other functions available with this library are<br>
  <b>animation:setFrame(frameNumber)</b><br>
    the frameNumber is between 1 and maxFrames<br>
  <b>animation:play()</b><br>
    starts playing the animation. Generaly automatically started when a new instance is created<br>
  <b>animation:pause()</b><br>
    toggles the playing of the animation<br>
  <b>animation:stop(atFrame)</b><br>
    stops the animation and sets the frame to the atFrame or the first frame<br>
  <b>animation:setPosition(xPos, yPos)</b><br>
    positions the animation sprite to the position xPos, yPos on the screen<br>
  <b>animation:setX(xPos)</b><br>
    sets the position of the x co-ordinate of the sprite<br>
  <b>animation:setY(yPos)</b><br>
    sets the position of the y co-ordinate of the sprite<br>
  <b>animation:setAlpha(theAlpha)</b><br>
    sets the alpha of the sprite<br>
  <b>animation:setScale(xScale, yScale)</b><br>
    sets the scale of the sprite, if only one value is passed, it is applied to both x and y<br>
  <b>animation:setGroup(theGroup)</b><br>
    This is used to make the sprite part of another sprite object than the stage.<br>

License: If you use this code, you need to attribute it to the Author Jayant C Varma from OZApps (http://www.oz-apps.com) in your credits.
If you feel that you would rather pay than to credit, you can make a payment of $25 via PayPal instead.