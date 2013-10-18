package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.Clipboard;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.TimeUtils;

public class TextField extends Widget
{
  private static final char BACKSPACE = '\b';
  private static final char BULLET = '';
  private static final char DELETE = '';
  private static final char ENTER_ANDROID = '\n';
  private static final char ENTER_DESKTOP = '\r';
  private static final char TAB = '\t';
  private float blinkTime = 0.42F;
  private Clipboard clipboard;
  int cursor;
  boolean cursorOn = true;
  private CharSequence displayText;
  private final Rectangle fieldBounds = new Rectangle();
  TextField.TextFieldFilter filter;
  private final FloatArray glyphAdvances = new FloatArray();
  final FloatArray glyphPositions = new FloatArray();
  boolean hasSelection;
  TextField.OnscreenKeyboard keyboard = new TextField.DefaultOnscreenKeyboard();
  long lastBlink;
  TextField.TextFieldListener listener;
  String messageText;
  private StringBuilder passwordBuffer;
  private char passwordCharacter = '';
  private boolean passwordMode;
  float renderOffset;
  private final Rectangle scissor = new Rectangle();
  int selectionStart;
  private float selectionWidth;
  private float selectionX;
  TextField.TextFieldStyle style;
  String text;
  private final BitmapFont.TextBounds textBounds = new BitmapFont.TextBounds();
  float textOffset;
  private int visibleTextEnd;
  private int visibleTextStart;

  public TextField(String paramString, Skin paramSkin)
  {
    this(paramString, (TextField.TextFieldStyle)paramSkin.get(TextField.TextFieldStyle.class));
  }

  public TextField(String paramString1, Skin paramSkin, String paramString2)
  {
    this(paramString1, (TextField.TextFieldStyle)paramSkin.get(paramString2, TextField.TextFieldStyle.class));
  }

  public TextField(String paramString, TextField.TextFieldStyle paramTextFieldStyle)
  {
    setStyle(paramTextFieldStyle);
    this.clipboard = Clipboard.getDefaultClipboard();
    setText(paramString);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
    initialize();
  }

  private void blink()
  {
    long l = TimeUtils.nanoTime();
    if ((float)(l - this.lastBlink) / 1.0E+09F > this.blinkTime)
      if (this.cursorOn)
        break label42;
    label42: for (boolean bool = true; ; bool = false)
    {
      this.cursorOn = bool;
      this.lastBlink = l;
      return;
    }
  }

  private void calculateOffsets()
  {
    float f1 = this.glyphPositions.get(this.cursor) - Math.abs(this.renderOffset);
    float f2 = getWidth();
    if (this.style.background != null);
    for (float f3 = f2 - (this.style.background.getLeftWidth() + this.style.background.getRightWidth()); ; f3 = f2)
    {
      float f4;
      int i;
      if (f1 <= 0.0F)
        if (this.cursor > 0)
        {
          this.renderOffset = (-this.glyphPositions.get(-1 + this.cursor));
          this.visibleTextStart = 0;
          this.textOffset = 0.0F;
          f4 = Math.abs(this.renderOffset);
          i = this.glyphPositions.size;
        }
      for (int j = 0; ; j++)
      {
        float f5 = 0.0F;
        if (j < i)
        {
          if (this.glyphPositions.items[j] >= f4)
          {
            this.visibleTextStart = j;
            f5 = this.glyphPositions.items[j];
            this.textOffset = (this.glyphPositions.items[this.visibleTextStart] - f4);
          }
        }
        else
        {
          for (this.visibleTextEnd = Math.min(this.displayText.length(), 1 + this.cursor); (this.visibleTextEnd <= this.displayText.length()) && (this.glyphPositions.items[this.visibleTextEnd] - f5 <= f3); this.visibleTextEnd = (1 + this.visibleTextEnd));
          this.renderOffset = 0.0F;
          break;
          if (f1 <= f3)
            break;
          this.renderOffset -= f1 - f3;
          break;
        }
      }
      this.visibleTextEnd = Math.max(0, -1 + this.visibleTextEnd);
      if (this.hasSelection)
      {
        int k = Math.min(this.cursor, this.selectionStart);
        int m = Math.max(this.cursor, this.selectionStart);
        float f6 = Math.max(this.glyphPositions.get(k), this.glyphPositions.get(this.visibleTextStart));
        float f7 = Math.min(this.glyphPositions.get(m), this.glyphPositions.get(this.visibleTextEnd));
        this.selectionX = f6;
        this.selectionWidth = (f7 - f6);
      }
      return;
    }
  }

  private TextField findNextTextField(Array<Actor> paramArray, TextField paramTextField, boolean paramBoolean)
  {
    float f1 = getX();
    float f2 = getY();
    int i = paramArray.size;
    int j = 0;
    TextField localTextField = paramTextField;
    if (j < i)
    {
      Actor localActor = (Actor)paramArray.get(j);
      float f3;
      boolean bool3;
      if ((localActor instanceof TextField))
      {
        if (localActor == this)
          break label129;
        f3 = localActor.getY();
        if (f3 != f2)
          break label141;
        if (localTextField == null)
        {
          if (localActor.getX() < f1)
            break label135;
          bool3 = true;
          label90: if ((bool3 ^ paramBoolean))
            label97: localTextField = (TextField)localActor;
        }
      }
      label129: label135: label141: label152: label198: label200: label204: 
      while (true)
      {
        label104: if ((localActor instanceof Group))
          localTextField = findNextTextField(((Group)localActor).getChildren(), localTextField, paramBoolean);
        j++;
        break;
        bool3 = false;
        break label90;
        boolean bool1;
        if (f3 < f2)
        {
          bool1 = true;
          if (!(bool1 ^ paramBoolean))
            break label198;
          if (localTextField == null)
            break label97;
          if (f3 - f2 <= localTextField.getY() - f2)
            break label200;
        }
        for (boolean bool2 = true; ; bool2 = false)
        {
          if (!(bool2 ^ paramBoolean))
            break label204;
          break;
          bool1 = false;
          break label152;
          break label104;
        }
      }
    }
    return localTextField;
  }

  private void initialize()
  {
    addListener(new TextField.1(this));
  }

  public void clearSelection()
  {
    this.hasSelection = false;
  }

  public void copy()
  {
    if (this.hasSelection)
    {
      int i = Math.min(this.cursor, this.selectionStart);
      int j = Math.max(this.cursor, this.selectionStart);
      this.clipboard.setContents(this.text.substring(i, j));
    }
  }

  void delete()
  {
    int i = Math.min(this.cursor, this.selectionStart);
    int j = Math.max(this.cursor, this.selectionStart);
    StringBuilder localStringBuilder1 = new StringBuilder();
    String str1;
    StringBuilder localStringBuilder2;
    if (i > 0)
    {
      str1 = this.text.substring(0, i);
      localStringBuilder2 = localStringBuilder1.append(str1);
      if (j >= this.text.length())
        break label119;
    }
    label119: for (String str2 = this.text.substring(j, this.text.length()); ; str2 = "")
    {
      this.text = str2;
      updateDisplayText();
      this.cursor = i;
      clearSelection();
      return;
      str1 = "";
      break;
    }
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    BitmapFont localBitmapFont = this.style.font;
    Color localColor1 = this.style.fontColor;
    Drawable localDrawable1 = this.style.selection;
    Drawable localDrawable2 = this.style.cursor;
    Color localColor2 = getColor();
    float f1 = getX();
    float f2 = getY();
    float f3 = getWidth();
    float f4 = getHeight();
    paramSpriteBatch.setColor(localColor2.r, localColor2.g, localColor2.b, paramFloat * localColor2.a);
    Drawable localDrawable3 = this.style.background;
    float f5 = 0.0F;
    if (localDrawable3 != null)
    {
      this.style.background.draw(paramSpriteBatch, f1, f2, f3, f4);
      f5 = this.style.background.getLeftWidth();
    }
    float f6 = (int)(f4 / 2.0F + this.textBounds.height / 2.0F + localBitmapFont.getDescent());
    calculateOffsets();
    Stage localStage = getStage();
    int i;
    if ((localStage != null) && (localStage.getKeyboardFocus() == this))
    {
      i = 1;
      if ((i != 0) && (this.hasSelection) && (localDrawable1 != null))
        localDrawable1.draw(paramSpriteBatch, f5 + (f1 + this.selectionX) + this.renderOffset, f2 + f6 - this.textBounds.height - localBitmapFont.getDescent(), this.selectionWidth, this.textBounds.height + localBitmapFont.getDescent() / 2.0F);
      if (this.displayText.length() != 0)
        break label503;
      if ((i == 0) && (this.messageText != null))
      {
        if (this.style.messageFontColor == null)
          break label486;
        localBitmapFont.setColor(this.style.messageFontColor.r, this.style.messageFontColor.g, this.style.messageFontColor.b, paramFloat * this.style.messageFontColor.a);
        label349: if (this.style.messageFont != null);
        localBitmapFont.draw(paramSpriteBatch, this.messageText, f1 + f5, f2 + f6);
      }
    }
    while (true)
    {
      if (i != 0)
      {
        blink();
        if ((this.cursorOn) && (localDrawable2 != null))
          localDrawable2.draw(paramSpriteBatch, f5 + f1 + this.glyphPositions.get(this.cursor) + this.renderOffset - 1.0F, f2 + f6 - this.textBounds.height - localBitmapFont.getDescent(), localDrawable2.getMinWidth(), this.textBounds.height + localBitmapFont.getDescent() / 2.0F);
      }
      return;
      i = 0;
      break;
      label486: localBitmapFont.setColor(0.7F, 0.7F, 0.7F, paramFloat);
      break label349;
      label503: localBitmapFont.setColor(localColor1.r, localColor1.g, localColor1.b, paramFloat * localColor1.a);
      localBitmapFont.draw(paramSpriteBatch, this.displayText, f1 + f5 + this.textOffset, f2 + f6, this.visibleTextStart, this.visibleTextEnd);
    }
  }

  public int getCursorPosition()
  {
    return this.cursor;
  }

  public String getMessageText()
  {
    return this.messageText;
  }

  public TextField.OnscreenKeyboard getOnscreenKeyboard()
  {
    return this.keyboard;
  }

  public float getPrefHeight()
  {
    float f = this.textBounds.height;
    if (this.style.background != null)
      f += this.style.background.getBottomHeight() + this.style.background.getTopHeight();
    return f;
  }

  public float getPrefWidth()
  {
    return 150.0F;
  }

  public TextField.TextFieldStyle getStyle()
  {
    return this.style;
  }

  public String getText()
  {
    return this.text;
  }

  public void next(boolean paramBoolean)
  {
    Stage localStage = getStage();
    if (localStage == null)
      return;
    TextField localTextField = findNextTextField(localStage.getActors(), null, paramBoolean);
    if (localTextField != null)
    {
      localStage.setKeyboardFocus(localTextField);
      return;
    }
    Gdx.input.setOnscreenKeyboardVisible(false);
  }

  void paste()
  {
    String str1 = this.clipboard.getContents();
    String str2;
    if (str1 != null)
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      for (int i = 0; i < str1.length(); i++)
      {
        char c = str1.charAt(i);
        if (this.style.font.containsCharacter(c))
          localStringBuilder1.append(c);
      }
      str2 = localStringBuilder1.toString();
      if (!this.hasSelection)
      {
        this.text = (this.text.substring(0, this.cursor) + str2 + this.text.substring(this.cursor, this.text.length()));
        updateDisplayText();
        this.cursor += str2.length();
      }
    }
    else
    {
      return;
    }
    int j = Math.min(this.cursor, this.selectionStart);
    int k = Math.max(this.cursor, this.selectionStart);
    StringBuilder localStringBuilder2 = new StringBuilder();
    String str3;
    StringBuilder localStringBuilder3;
    if (j > 0)
    {
      str3 = this.text.substring(0, j);
      localStringBuilder3 = localStringBuilder2.append(str3);
      if (k >= this.text.length())
        break label347;
    }
    label347: for (String str4 = this.text.substring(k, this.text.length()); ; str4 = "")
    {
      this.text = str4;
      this.cursor = j;
      this.text = (this.text.substring(0, this.cursor) + str2 + this.text.substring(this.cursor, this.text.length()));
      updateDisplayText();
      this.cursor = (j + str2.length());
      clearSelection();
      return;
      str3 = "";
      break;
    }
  }

  public void setClipboard(Clipboard paramClipboard)
  {
    this.clipboard = paramClipboard;
  }

  public void setCursorPosition(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("cursorPosition must be >= 0");
    clearSelection();
    this.cursor = Math.min(paramInt, this.text.length());
  }

  public void setMessageText(String paramString)
  {
    this.messageText = paramString;
  }

  public void setOnscreenKeyboard(TextField.OnscreenKeyboard paramOnscreenKeyboard)
  {
    this.keyboard = paramOnscreenKeyboard;
  }

  public void setPasswordCharacter(char paramChar)
  {
    this.passwordCharacter = paramChar;
  }

  public void setPasswordMode(boolean paramBoolean)
  {
    this.passwordMode = paramBoolean;
  }

  public void setSelection(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException("selectionStart must be >= 0");
    if (paramInt2 < 0)
      throw new IllegalArgumentException("selectionEnd must be >= 0");
    int i = Math.min(this.text.length(), paramInt1);
    int j = Math.min(this.text.length(), paramInt2);
    if (j == i)
    {
      clearSelection();
      return;
    }
    if (j < i);
    while (true)
    {
      this.hasSelection = true;
      this.selectionStart = j;
      this.cursor = i;
      return;
      int k = j;
      j = i;
      i = k;
    }
  }

  public void setStyle(TextField.TextFieldStyle paramTextFieldStyle)
  {
    if (paramTextFieldStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    this.style = paramTextFieldStyle;
    invalidateHierarchy();
  }

  public void setText(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("text cannot be null.");
    BitmapFont localBitmapFont = this.style.font;
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramString.length(); i++)
    {
      char c = paramString.charAt(i);
      if (localBitmapFont.containsCharacter(c))
        localStringBuffer.append(c);
    }
    this.text = localStringBuffer.toString();
    updateDisplayText();
    this.cursor = 0;
    clearSelection();
    this.textBounds.set(localBitmapFont.getBounds(this.displayText));
    BitmapFont.TextBounds localTextBounds = this.textBounds;
    localTextBounds.height -= 2.0F * localBitmapFont.getDescent();
    localBitmapFont.computeGlyphAdvancesAndPositions(this.displayText, this.glyphAdvances, this.glyphPositions);
  }

  public void setTextFieldFilter(TextField.TextFieldFilter paramTextFieldFilter)
  {
    this.filter = paramTextFieldFilter;
  }

  public void setTextFieldListener(TextField.TextFieldListener paramTextFieldListener)
  {
    this.listener = paramTextFieldListener;
  }

  void updateDisplayText()
  {
    if ((this.passwordMode) && (this.style.font.containsCharacter(this.passwordCharacter)))
    {
      if (this.passwordBuffer == null)
        this.passwordBuffer = new StringBuilder(this.text.length());
      if (this.passwordBuffer.length() > this.text.length())
        this.passwordBuffer.setLength(this.text.length());
    }
    for (this.displayText = this.passwordBuffer; ; this.displayText = this.text)
    {
      this.style.font.computeGlyphAdvancesAndPositions(this.displayText, this.glyphAdvances, this.glyphPositions);
      return;
      int i = this.passwordBuffer.length();
      int j = this.text.length();
      while (i < j)
      {
        this.passwordBuffer.append(this.passwordCharacter);
        i++;
      }
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.TextField
 * JD-Core Version:    0.6.2
 */