package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.utils.FloatArray;

class TextField$1 extends InputListener
{
  TextField$1(TextField paramTextField)
  {
  }

  private void setCursorPosition(float paramFloat)
  {
    this.this$0.lastBlink = 0L;
    this.this$0.cursorOn = false;
    float f = paramFloat - this.this$0.renderOffset;
    for (int i = 0; i < this.this$0.glyphPositions.size; i++)
      if (this.this$0.glyphPositions.items[i] > f)
      {
        this.this$0.cursor = Math.max(0, i - 1);
        return;
      }
    this.this$0.cursor = Math.max(0, -1 + this.this$0.glyphPositions.size);
  }

  public boolean keyDown(InputEvent paramInputEvent, int paramInt)
  {
    Stage localStage = this.this$0.getStage();
    if ((localStage != null) && (localStage.getKeyboardFocus() == this.this$0))
    {
      if ((Gdx.input.isKeyPressed(129)) || (Gdx.input.isKeyPressed(130)))
      {
        if (paramInt == 50)
          this.this$0.paste();
        if ((paramInt == 31) || (paramInt == 133))
          this.this$0.copy();
        return true;
      }
      if ((Gdx.input.isKeyPressed(59)) || (Gdx.input.isKeyPressed(60)))
      {
        if (paramInt == 133)
          this.this$0.paste();
        if ((paramInt == 112) && (this.this$0.hasSelection))
        {
          this.this$0.copy();
          this.this$0.delete();
        }
        if (paramInt == 21)
        {
          if (!this.this$0.hasSelection)
          {
            this.this$0.selectionStart = this.this$0.cursor;
            this.this$0.hasSelection = true;
          }
          TextField localTextField2 = this.this$0;
          localTextField2.cursor = (-1 + localTextField2.cursor);
        }
        if (paramInt == 22)
        {
          if (!this.this$0.hasSelection)
          {
            this.this$0.selectionStart = this.this$0.cursor;
            this.this$0.hasSelection = true;
          }
          TextField localTextField1 = this.this$0;
          localTextField1.cursor = (1 + localTextField1.cursor);
        }
        if (paramInt == 3)
        {
          if (!this.this$0.hasSelection)
          {
            this.this$0.selectionStart = this.this$0.cursor;
            this.this$0.hasSelection = true;
          }
          this.this$0.cursor = 0;
        }
        if (paramInt == 132)
        {
          if (!this.this$0.hasSelection)
          {
            this.this$0.selectionStart = this.this$0.cursor;
            this.this$0.hasSelection = true;
          }
          this.this$0.cursor = this.this$0.text.length();
        }
        this.this$0.cursor = Math.max(0, this.this$0.cursor);
        this.this$0.cursor = Math.min(this.this$0.text.length(), this.this$0.cursor);
        return true;
      }
      if (paramInt == 21)
      {
        TextField localTextField4 = this.this$0;
        localTextField4.cursor = (-1 + localTextField4.cursor);
        this.this$0.clearSelection();
      }
      if (paramInt == 22)
      {
        TextField localTextField3 = this.this$0;
        localTextField3.cursor = (1 + localTextField3.cursor);
        this.this$0.clearSelection();
      }
      if (paramInt == 3)
      {
        this.this$0.cursor = 0;
        this.this$0.clearSelection();
      }
      if (paramInt == 132)
      {
        this.this$0.cursor = this.this$0.text.length();
        this.this$0.clearSelection();
      }
      this.this$0.cursor = Math.max(0, this.this$0.cursor);
      this.this$0.cursor = Math.min(this.this$0.text.length(), this.this$0.cursor);
      return true;
    }
    return false;
  }

  public boolean keyTyped(InputEvent paramInputEvent, char paramChar)
  {
    BitmapFont localBitmapFont = this.this$0.style.font;
    Stage localStage = this.this$0.getStage();
    if ((localStage != null) && (localStage.getKeyboardFocus() == this.this$0))
    {
      if ((paramChar == '\b') && ((this.this$0.cursor > 0) || (this.this$0.hasSelection)))
      {
        if (!this.this$0.hasSelection)
        {
          this.this$0.text = (this.this$0.text.substring(0, -1 + this.this$0.cursor) + this.this$0.text.substring(this.this$0.cursor));
          this.this$0.updateDisplayText();
          TextField localTextField5 = this.this$0;
          localTextField5.cursor = (-1 + localTextField5.cursor);
        }
      }
      else
      {
        if (paramChar != '')
          break label292;
        if ((this.this$0.cursor < this.this$0.text.length()) || (this.this$0.hasSelection))
        {
          if (this.this$0.hasSelection)
            break label283;
          this.this$0.text = (this.this$0.text.substring(0, this.this$0.cursor) + this.this$0.text.substring(1 + this.this$0.cursor));
          this.this$0.updateDisplayText();
        }
      }
      label283: label292: 
      while ((paramChar != '\r') && (paramChar != '\n') && (this.this$0.filter != null) && (!this.this$0.filter.acceptChar(this.this$0, paramChar)))
      {
        return true;
        this.this$0.delete();
        break;
        this.this$0.delete();
        return true;
      }
      TextField localTextField1;
      if ((paramChar == '\t') || (paramChar == '\n'))
      {
        localTextField1 = this.this$0;
        if ((!Gdx.input.isKeyPressed(59)) && (!Gdx.input.isKeyPressed(60)))
          break label532;
      }
      label532: for (boolean bool = true; ; bool = false)
      {
        localTextField1.next(bool);
        if (localBitmapFont.containsCharacter(paramChar))
        {
          if (this.this$0.hasSelection)
            break;
          this.this$0.text = (this.this$0.text.substring(0, this.this$0.cursor) + paramChar + this.this$0.text.substring(this.this$0.cursor, this.this$0.text.length()));
          this.this$0.updateDisplayText();
          TextField localTextField4 = this.this$0;
          localTextField4.cursor = (1 + localTextField4.cursor);
        }
        label503: if (this.this$0.listener == null)
          break label788;
        this.this$0.listener.keyTyped(this.this$0, paramChar);
        return true;
      }
      int i = Math.min(this.this$0.cursor, this.this$0.selectionStart);
      int j = Math.max(this.this$0.cursor, this.this$0.selectionStart);
      TextField localTextField2 = this.this$0;
      StringBuilder localStringBuilder1 = new StringBuilder();
      String str1;
      label611: StringBuilder localStringBuilder2;
      if (i > 0)
      {
        str1 = this.this$0.text.substring(0, i);
        localStringBuilder2 = localStringBuilder1.append(str1);
        if (j >= this.this$0.text.length())
          break label797;
      }
      label788: label797: for (String str2 = this.this$0.text.substring(j, this.this$0.text.length()); ; str2 = "")
      {
        localTextField2.text = str2;
        this.this$0.cursor = i;
        this.this$0.text = (this.this$0.text.substring(0, this.this$0.cursor) + paramChar + this.this$0.text.substring(this.this$0.cursor, this.this$0.text.length()));
        this.this$0.updateDisplayText();
        TextField localTextField3 = this.this$0;
        localTextField3.cursor = (1 + localTextField3.cursor);
        this.this$0.clearSelection();
        break label503;
        break;
        str1 = "";
        break label611;
      }
    }
    return false;
  }

  public boolean keyUp(InputEvent paramInputEvent, int paramInt)
  {
    return true;
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 != 0))
      return false;
    Stage localStage = this.this$0.getStage();
    if (localStage != null)
      localStage.setKeyboardFocus(this.this$0);
    this.this$0.keyboard.show(true);
    this.this$0.clearSelection();
    setCursorPosition(paramFloat1);
    this.this$0.selectionStart = this.this$0.cursor;
    return true;
  }

  public void touchDragged(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt)
  {
    this.this$0.lastBlink = 0L;
    this.this$0.cursorOn = false;
    setCursorPosition(paramFloat1);
    this.this$0.hasSelection = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.TextField.1
 * JD-Core Version:    0.6.2
 */