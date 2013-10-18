package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.utils.Array;

public class ButtonGroup
{
  private final Array<Button> buttons = new Array();
  private Array<Button> checkedButtons = new Array(1);
  private Button lastChecked;
  private int maxCheckCount = 1;
  private int minCheckCount;
  private boolean uncheckLast = true;

  public ButtonGroup()
  {
    this.minCheckCount = 1;
  }

  public ButtonGroup(Button[] paramArrayOfButton)
  {
    this.minCheckCount = 0;
    add(paramArrayOfButton);
    this.minCheckCount = 1;
  }

  public void add(Button paramButton)
  {
    if (paramButton == null)
      throw new IllegalArgumentException("button cannot be null.");
    paramButton.buttonGroup = null;
    if ((paramButton.isChecked()) || (this.buttons.size < this.minCheckCount));
    for (int i = 1; ; i = 0)
    {
      paramButton.setChecked(false);
      paramButton.buttonGroup = this;
      this.buttons.add(paramButton);
      if (i != 0)
        paramButton.setChecked(true);
      return;
    }
  }

  public void add(Button[] paramArrayOfButton)
  {
    if (paramArrayOfButton == null)
      throw new IllegalArgumentException("buttons cannot be null.");
    int i = 0;
    int j = paramArrayOfButton.length;
    while (i < j)
    {
      add(paramArrayOfButton[i]);
      i++;
    }
  }

  protected boolean canCheck(Button paramButton, boolean paramBoolean)
  {
    if (paramButton.isChecked == paramBoolean);
    do
    {
      return false;
      if (paramBoolean)
        break;
    }
    while (this.checkedButtons.size <= this.minCheckCount);
    this.checkedButtons.removeValue(paramButton, true);
    while (true)
    {
      return true;
      if ((this.maxCheckCount != -1) && (this.checkedButtons.size >= this.maxCheckCount))
      {
        if (!this.uncheckLast)
          break;
        int i = this.minCheckCount;
        this.minCheckCount = 0;
        this.lastChecked.setChecked(false);
        this.minCheckCount = i;
      }
      this.checkedButtons.add(paramButton);
      this.lastChecked = paramButton;
    }
  }

  public Array<Button> getAllChecked()
  {
    return this.checkedButtons;
  }

  public Array<Button> getButtons()
  {
    return this.buttons;
  }

  public Button getChecked()
  {
    if (this.checkedButtons.size > 0)
      return (Button)this.checkedButtons.get(0);
    return null;
  }

  public void remove(Button paramButton)
  {
    if (paramButton == null)
      throw new IllegalArgumentException("button cannot be null.");
    paramButton.buttonGroup = null;
    this.buttons.removeValue(paramButton, true);
  }

  public void remove(Button[] paramArrayOfButton)
  {
    if (paramArrayOfButton == null)
      throw new IllegalArgumentException("buttons cannot be null.");
    int i = 0;
    int j = paramArrayOfButton.length;
    while (i < j)
    {
      remove(paramArrayOfButton[i]);
      i++;
    }
  }

  public void setChecked(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("text cannot be null.");
    int i = this.buttons.size;
    for (int j = 0; ; j++)
      if (j < i)
      {
        Button localButton = (Button)this.buttons.get(j);
        if (((localButton instanceof TextButton)) && (paramString.equals(((TextButton)localButton).getText())))
          localButton.setChecked(true);
      }
      else
      {
        return;
      }
  }

  public void setMaxCheckCount(int paramInt)
  {
    this.maxCheckCount = paramInt;
  }

  public void setMinCheckCount(int paramInt)
  {
    this.minCheckCount = paramInt;
  }

  public void setUncheckLast(boolean paramBoolean)
  {
    this.uncheckLast = paramBoolean;
  }

  public void uncheckAll()
  {
    int i = this.minCheckCount;
    this.minCheckCount = 0;
    int j = this.buttons.size;
    for (int k = 0; k < j; k++)
      ((Button)this.buttons.get(k)).setChecked(false);
    this.minCheckCount = i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.ButtonGroup
 * JD-Core Version:    0.6.2
 */