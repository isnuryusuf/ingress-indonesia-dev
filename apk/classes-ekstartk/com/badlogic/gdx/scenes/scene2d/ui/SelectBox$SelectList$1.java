package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.utils.ChangeListener.ChangeEvent;
import com.badlogic.gdx.utils.Pools;

class SelectBox$SelectList$1 extends InputListener
{
  SelectBox$SelectList$1(SelectBox.SelectList paramSelectList)
  {
  }

  public boolean mouseMoved(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    this.this$1.stageToLocalCoordinates(Vector2.tmp);
    float f1 = Vector2.tmp.x;
    float f2 = Vector2.tmp.y;
    if ((f1 > 0.0F) && (f1 < this.this$1.getWidth()) && (f2 > 0.0F) && (f2 < this.this$1.getHeight()))
    {
      this.this$1.listSelectedIndex = ((int)((this.this$1.getHeight() - f2) / this.this$1.itemHeight));
      this.this$1.listSelectedIndex = Math.max(0, this.this$1.listSelectedIndex);
      this.this$1.listSelectedIndex = Math.min(-1 + this.this$1.this$0.items.length, this.this$1.listSelectedIndex);
    }
    return true;
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 != 0))
      return false;
    this.this$1.stageToLocalCoordinates(Vector2.tmp);
    float f1 = Vector2.tmp.x;
    float f2 = Vector2.tmp.y;
    if ((f1 > 0.0F) && (f1 < this.this$1.getWidth()) && (f2 > 0.0F) && (f2 < this.this$1.getHeight()))
    {
      this.this$1.listSelectedIndex = ((int)((this.this$1.getHeight() - f2) / this.this$1.itemHeight));
      this.this$1.listSelectedIndex = Math.max(0, this.this$1.listSelectedIndex);
      this.this$1.listSelectedIndex = Math.min(-1 + this.this$1.this$0.items.length, this.this$1.listSelectedIndex);
      this.this$1.this$0.selectedIndex = this.this$1.listSelectedIndex;
      if (this.this$1.this$0.items.length > 0)
      {
        ChangeListener.ChangeEvent localChangeEvent = (ChangeListener.ChangeEvent)Pools.obtain(ChangeListener.ChangeEvent.class);
        this.this$1.this$0.fire(localChangeEvent);
        Pools.free(localChangeEvent);
      }
    }
    return true;
  }

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    this.this$1.this$0.hideList();
    paramInputEvent.getStage().removeCaptureListener(this.this$1.stageListener);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.SelectBox.SelectList.1
 * JD-Core Version:    0.6.2
 */