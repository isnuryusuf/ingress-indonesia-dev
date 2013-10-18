package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.math.Vector3;
import java.util.Comparator;

class CameraGroupStrategy$2
  implements Comparator<Decal>
{
  CameraGroupStrategy$2(CameraGroupStrategy paramCameraGroupStrategy)
  {
  }

  public int compare(Decal paramDecal1, Decal paramDecal2)
  {
    float f = this.this$0.camera.position.dst2(paramDecal1.position);
    return (int)Math.signum(this.this$0.camera.position.dst2(paramDecal2.position) - f);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g3d.decals.CameraGroupStrategy.2
 * JD-Core Version:    0.6.2
 */