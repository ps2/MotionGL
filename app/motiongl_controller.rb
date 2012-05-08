class MotionGLController < GLKViewController
  
  def init
    puts "init"
  end
  
  def loadView
    self.view = GLKView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @increasing = true
    @curRed = 0.0
    #self.view.delegate = self
  end
  
  def viewDidLoad
    super

    context = EAGLContext.alloc.initWithAPI(KEAGLRenderingAPIOpenGLES2)

    if (!context)
      puts "Failed to create ES context"
    end

    self.view.context = context
  end
  
  def viewDidUnload
    super
    if (EAGLContext.currentContext == @context) 
      EAGLContext.setCurrentContext(nil)
    end
    @context = nil
  end
  
  def glkView(view, drawInRect:rect)   
    glClearColor(@curRed, 0.0, 0.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT);
  end

  def update
    if (@increasing)
      @curRed +=  1.0 * self.timeSinceLastUpdate
    else 
      @curRed -= 1.0 * self.timeSinceLastUpdate
    end
    if (@curRed >= 1.0)
        @curRed = 1.0
        @increasing = false
    end
    if (@curRed <= 0.0)
      @curRed = 0.0
      @increasing = true
    end
  end
  
  def touchesBegan(touches, withEvent:event)
    self.paused = !self.isPaused
  end
  
end