class Keys
{
  private boolean wDown = false;
  private boolean aDown = false;
  private boolean sDown = false;
  private boolean dDown = false;
  private boolean leftDown = false;
  private boolean upDown = false;
  private boolean rightDown = false;
  private boolean downDown = false;
  
  public Keys(){}
  
  public boolean wDown()
  {
    return wDown;
  }
  
  public boolean aDown()
  {
    return aDown;
  }
  
  public boolean sDown()
  {
    return sDown;
  }
  
  public boolean dDown()
  {
    return dDown;
  }
  
  
  public boolean leftDown()
  {
    return leftDown;
  }
  
  public boolean upDown()
  {
    return upDown;
  }
  
  public boolean rightDown()
  {
    return rightDown;
  }
  
  public boolean downDown()
  {
    return downDown;
  }
  
  
  /*void onKeyPressed(char ch)
  {
    if(ch == 'W' || ch == 'w')
    {
      wDown = true;
    }
    else if (ch == 'A' || ch == 'a')
    {
      aDown = true;
    }
    else if(ch == 'S' || ch == 's')
    {
      sDown = true;
    }
    else if(ch == 'D' || ch == 'd')
    {
      dDown = true;
    }
  }
  
  void onKeyReleased(char ch)
  {
    if(ch == 'W' || ch == 'w')
    {
      wDown = false;
    }
    else if (ch == 'A' || ch == 'a')
    {
      aDown = false;
    }
    else if(ch == 'S' || ch == 's')
    {
      sDown = false;
    }
    else if(ch == 'D' || ch == 'd')
    {
      dDown = false;
    }
  }*/
  
  void onKeyPressed(int code)
  {
    if(code == 87)
    {
      wDown = true;
    }
    else if (code == 65)
    {
      aDown = true;
    }
    else if(code == 83)
    {
      sDown = true;
    }
    else if(code == 68)
    {
      dDown = true;
    }
    
    if(code == 37){
      leftDown = true;
    }
    else if(code == 38){
      upDown = true;
    }
    else if(code == 39){
      rightDown = true;
    }
    else if(code == 40){
      downDown = true;
    }
  }
  
  void onKeyReleased(int code)
  {
    if(code == 87)
    {
      wDown = false;
    }
    else if (code == 65)
    {
      aDown = false;
    }
    else if(code == 83)
    {
      sDown = false;
    }
    else if(code == 68)
    {
      dDown = false;
    }
    
    if(code == 37)
    {
      leftDown = false;
    }
    else if(code == 38)
    {
      upDown = false;
    }
    else if(code == 39)
    {
      rightDown = false;
    }
    else if(code == 40)
    {
      downDown = false;
    }
  }
  
}
