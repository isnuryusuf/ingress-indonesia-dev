package com.badlogic.gdx.scenes.scene2d.actions;

public class IntAction extends TemporalAction
{
  private int end;
  private int start;
  private int value;

  public IntAction()
  {
    this.start = 0;
    this.end = 1;
  }

  public IntAction(int paramInt1, int paramInt2)
  {
    this.start = paramInt1;
    this.end = paramInt2;
  }

  public int getEnd()
  {
    return this.end;
  }

  public int getStart()
  {
    return this.start;
  }

  public int getValue()
  {
    return this.value;
  }

  protected void initialize()
  {
    this.value = this.start;
  }

  public void setEnd(int paramInt)
  {
    this.end = paramInt;
  }

  public void setStart(int paramInt)
  {
    this.start = paramInt;
  }

  public void setValue(int paramInt)
  {
    this.value = paramInt;
  }

  protected void update(float paramFloat)
  {
    this.value = ((int)(this.start + paramFloat * (this.end - this.start)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.IntAction
 * JD-Core Version:    0.6.2
 */