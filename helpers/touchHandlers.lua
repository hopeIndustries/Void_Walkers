----------------------------
-- Mouse handlers
----------------------------
if MOAIInputMgr.device.pointer then 
  
  -- For mouse clicks
  MOAIInputMgr.device.mouseLeft:setCallback(
    function(isMouseDown)
        
      if(isMouseDown) then
        
        --textBox["test"]:setString("MouseDown!")
        
      else
        -- Mouse Up
        touch(MOAIInputMgr.device.pointer:getLoc())
        --test:changeTexture("Assets/img/Red_brick.png")
        --layer:removeProp(textBox["test"])
        
      end
      
    end
  )
  
  -- For touch devices
  --[[
  MOAIInputMgr.device.touch:setCallback (

    function ( eventType, idx, x, y, tapCount )
        if (tapCount > 1) then
            MOAIGfxDevice.setClearColor(math.random(0,1),math.random(0,1),math.random(0,1),1)
        elseif eventType == MOAITouchSensor.TOUCH_DOWN then
            handleClickOrTouch(x,y)
        end
    end
  )
  --]]
  
end

function touch(x, y) 
    
    local touchedProp = partition:propForPoint(layer:wndToWorld(x, y))
    
    if(touchedProp == test:getProp()) then
      print("Touched!")
    end
  
end