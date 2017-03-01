waxClass{"TestController", UIViewController}

function init(self)
  self.super:init()
  
  return self
end

function viewDidLoad(self)

--设置label Begin 
  local label = UILabel:initWithFrame(CGRect(0, 20, 320, 40))
  label:setFont(UIFont:boldSystemFontOfSize(16))
  label:setColor(UIColor:whiteColor())
  label:setBackgroundColor(UIColor:colorWithRed_green_blue_alpha(0.173, 0.651, 0.627, 1))
  label:setText("----测试页面----")
  label:setTextAlignment(UITextAlignmentCenter)
  local view = self:view()
  self:view():setFrame(CGRect(0.0,20.0,320.0,460.0))
  self:view():setBackgroundColor(UIColor:grayColor())
  self:view():addSubview(label)
--设置label end

--设置button Begin
  local button = UIButton:buttonWithType(UIButtonTypeRoundedRect)

   button:setTitle_forState("返回", UIControlStateNormal)
   button:setFrame(CGRect(120.0, 150.0, 80.0, 30.0));

   button:setBackgroundImage_forState(UIImage:imageNamed("Btn.png"),UIControlStateNormal);
   button:addTarget_action_forControlEvents(self,"buttonTouched:",UIControlEventTouchUpInside);

   self:view():addSubview(button)
--设置button end

end

-- Put IBAction next to, or above a function to make it appear in IB
function buttonTouched(self, sender) -- IBAction
  local parentView = self:view():superview()
  UIView:beginAnimations_context(nil, nil)
  UIView:setAnimationTransition_forView_cache(UIViewAnimationTransitionFlipFromLeft, parentView, true)
  self:view():removeFromSuperview()
--self:view():setHidden(true)
  UIView:commitAnimations()
end