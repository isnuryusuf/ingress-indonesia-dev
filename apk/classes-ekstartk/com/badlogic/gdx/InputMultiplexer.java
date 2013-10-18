package com.badlogic.gdx;

import com.badlogic.gdx.utils.Array;

public class InputMultiplexer
  implements InputProcessor
{
  private Array<InputProcessor> processors = new Array(4);

  public InputMultiplexer()
  {
  }

  public InputMultiplexer(InputProcessor[] paramArrayOfInputProcessor)
  {
    for (int i = 0; i < paramArrayOfInputProcessor.length; i++)
      this.processors.add(paramArrayOfInputProcessor[i]);
  }

  public void addProcessor(int paramInt, InputProcessor paramInputProcessor)
  {
    this.processors.insert(paramInt, paramInputProcessor);
  }

  public void addProcessor(InputProcessor paramInputProcessor)
  {
    this.processors.add(paramInputProcessor);
  }

  public void clear()
  {
    this.processors.clear();
  }

  public Array<InputProcessor> getProcessors()
  {
    return this.processors;
  }

  public boolean keyDown(int paramInt)
  {
    int i = this.processors.size;
    for (int j = 0; j < i; j++)
      if (((InputProcessor)this.processors.get(j)).keyDown(paramInt))
        return true;
    return false;
  }

  public boolean keyTyped(char paramChar)
  {
    int i = this.processors.size;
    for (int j = 0; j < i; j++)
      if (((InputProcessor)this.processors.get(j)).keyTyped(paramChar))
        return true;
    return false;
  }

  public boolean keyUp(int paramInt)
  {
    int i = this.processors.size;
    for (int j = 0; j < i; j++)
      if (((InputProcessor)this.processors.get(j)).keyUp(paramInt))
        return true;
    return false;
  }

  public boolean mouseMoved(int paramInt1, int paramInt2)
  {
    int i = this.processors.size;
    for (int j = 0; j < i; j++)
      if (((InputProcessor)this.processors.get(j)).mouseMoved(paramInt1, paramInt2))
        return true;
    return false;
  }

  public void removeProcessor(int paramInt)
  {
    this.processors.removeIndex(paramInt);
  }

  public void removeProcessor(InputProcessor paramInputProcessor)
  {
    this.processors.removeValue(paramInputProcessor, true);
  }

  public boolean scrolled(int paramInt)
  {
    int i = this.processors.size;
    for (int j = 0; j < i; j++)
      if (((InputProcessor)this.processors.get(j)).scrolled(paramInt))
        return true;
    return false;
  }

  public void setProcessors(Array<InputProcessor> paramArray)
  {
    this.processors = paramArray;
  }

  public int size()
  {
    return this.processors.size;
  }

  public boolean touchDown(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.processors.size;
    for (int j = 0; j < i; j++)
      if (((InputProcessor)this.processors.get(j)).touchDown(paramInt1, paramInt2, paramInt3, paramInt4))
        return true;
    return false;
  }

  public boolean touchDragged(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = this.processors.size;
    for (int j = 0; j < i; j++)
      if (((InputProcessor)this.processors.get(j)).touchDragged(paramInt1, paramInt2, paramInt3))
        return true;
    return false;
  }

  public boolean touchUp(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = this.processors.size;
    for (int j = 0; j < i; j++)
      if (((InputProcessor)this.processors.get(j)).touchUp(paramInt1, paramInt2, paramInt3, paramInt4))
        return true;
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.InputMultiplexer
 * JD-Core Version:    0.6.2
 */