package com.badlogic.gdx.scenes.scene2d.ui;

import com.a.a.a;
import com.a.a.b;
import com.a.a.c;
import com.a.a.d;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer;
import com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer10;
import com.badlogic.gdx.graphics.glutils.ImmediateModeRenderer20;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.SnapshotArray;
import java.util.List;

class TableLayout extends a<Actor, Table, TableLayout, TableToolkit>
{
  Array<TableToolkit.DebugRect> debugRects;
  private ImmediateModeRenderer debugRenderer;
  boolean round = true;

  public TableLayout()
  {
    super((TableToolkit)d.instance);
  }

  private void toStageCoordinates(Actor paramActor, Vector2 paramVector2)
  {
    while (true)
    {
      paramVector2.x += paramActor.getX();
      paramVector2.y += paramActor.getY();
      paramActor = paramActor.getParent();
    }
  }

  public void drawDebug(SpriteBatch paramSpriteBatch)
  {
    if ((getDebug() == b.a) || (this.debugRects == null))
      return;
    float f1;
    float f2;
    Object localObject;
    label65: float f12;
    float f10;
    if (this.debugRenderer == null)
    {
      if (Gdx.graphics.isGL20Available())
        this.debugRenderer = new ImmediateModeRenderer20(64, false, true, 0);
    }
    else
    {
      f1 = 0.0F;
      f2 = 0.0F;
      localObject = (Actor)getTable();
      if (localObject == null)
        break label132;
      if (!(localObject instanceof Group))
        break label576;
      f12 = f1 + ((Actor)localObject).getX();
      f10 = f2 + ((Actor)localObject).getY();
    }
    for (float f11 = f12; ; f11 = f1)
    {
      localObject = ((Actor)localObject).getParent();
      f1 = f11;
      f2 = f10;
      break label65;
      this.debugRenderer = new ImmediateModeRenderer10(64);
      break;
      label132: this.debugRenderer.begin(paramSpriteBatch.getProjectionMatrix(), 1);
      int i = this.debugRects.size;
      int j = 0;
      if (j < i)
      {
        TableToolkit.DebugRect localDebugRect = (TableToolkit.DebugRect)this.debugRects.get(j);
        float f3 = f1 + localDebugRect.x;
        float f4 = f2 + localDebugRect.y - localDebugRect.height;
        float f5 = f3 + localDebugRect.width;
        float f6 = f4 + localDebugRect.height;
        float f7;
        label237: float f8;
        if (localDebugRect.type == b.d)
        {
          f7 = 1.0F;
          if (localDebugRect.type != b.e)
            break label554;
          f8 = 1.0F;
          label251: if (localDebugRect.type != b.c)
            break label560;
        }
        label554: label560: for (float f9 = 1.0F; ; f9 = 0.0F)
        {
          this.debugRenderer.color(f7, f8, f9, 1.0F);
          this.debugRenderer.vertex(f3, f4, 0.0F);
          this.debugRenderer.color(f7, f8, f9, 1.0F);
          this.debugRenderer.vertex(f3, f6, 0.0F);
          this.debugRenderer.color(f7, f8, f9, 1.0F);
          this.debugRenderer.vertex(f3, f6, 0.0F);
          this.debugRenderer.color(f7, f8, f9, 1.0F);
          this.debugRenderer.vertex(f5, f6, 0.0F);
          this.debugRenderer.color(f7, f8, f9, 1.0F);
          this.debugRenderer.vertex(f5, f6, 0.0F);
          this.debugRenderer.color(f7, f8, f9, 1.0F);
          this.debugRenderer.vertex(f5, f4, 0.0F);
          this.debugRenderer.color(f7, f8, f9, 1.0F);
          this.debugRenderer.vertex(f5, f4, 0.0F);
          this.debugRenderer.color(f7, f8, f9, 1.0F);
          this.debugRenderer.vertex(f3, f4, 0.0F);
          if (this.debugRenderer.getNumVertices() == 64)
          {
            this.debugRenderer.end();
            this.debugRenderer.begin(paramSpriteBatch.getProjectionMatrix(), 1);
          }
          j++;
          break;
          f7 = 0.0F;
          break label237;
          f8 = 0.0F;
          break label251;
        }
      }
      this.debugRenderer.end();
      return;
      label576: f10 = f2;
    }
  }

  public void invalidateHierarchy()
  {
    super.invalidate();
    ((Table)getTable()).invalidateHierarchy();
  }

  public void layout()
  {
    Table localTable = (Table)getTable();
    float f1 = localTable.getWidth();
    float f2 = localTable.getHeight();
    super.layout(0.0F, 0.0F, f1, f2);
    List localList = getCells();
    if (this.round)
    {
      int n = localList.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        c localc2 = (c)localList.get(i1);
        if (!localc2.q())
        {
          Actor localActor3 = (Actor)localc2.a();
          float f4 = Math.round(localc2.w());
          localActor3.setBounds(Math.round(localc2.t()), f2 - Math.round(localc2.u()) - f4, Math.round(localc2.v()), f4);
        }
      }
    }
    int i = localList.size();
    for (int j = 0; j < i; j++)
    {
      c localc1 = (c)localList.get(j);
      if (!localc1.q())
      {
        Actor localActor2 = (Actor)localc1.a();
        float f3 = localc1.w();
        localActor2.setBounds(localc1.t(), f2 - localc1.u() - f3, localc1.v(), f3);
      }
    }
    SnapshotArray localSnapshotArray = localTable.getChildren();
    int k = localSnapshotArray.size;
    for (int m = 0; m < k; m++)
    {
      Actor localActor1 = (Actor)localSnapshotArray.get(m);
      if ((localActor1 instanceof Layout))
      {
        Layout localLayout = (Layout)localActor1;
        localLayout.invalidate();
        localLayout.validate();
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.TableLayout
 * JD-Core Version:    0.6.2
 */