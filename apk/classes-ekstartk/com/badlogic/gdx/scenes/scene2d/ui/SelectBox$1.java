package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;

class SelectBox$1 extends InputListener
{
  SelectBox$1(SelectBox paramSelectBox)
  {
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 != 0))
      return false;
    if ((this.this$0.list != null) && (this.this$0.list.getParent() != null))
    {
      this.this$0.hideList();
      return true;
    }
    Stage localStage = this.this$0.getStage();
    Vector2 localVector2 = Vector2.tmp;
    localStage.screenToStageCoordinates(localVector2.set(this.this$0.screenCoords.x, this.this$0.screenCoords.y));
    this.this$0.list = new SelectBox.SelectList(this.this$0, localVector2.x, localVector2.y);
    localStage.addActor(this.this$0.list);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.SelectBox.1
 * JD-Core Version:    0.6.2
 */