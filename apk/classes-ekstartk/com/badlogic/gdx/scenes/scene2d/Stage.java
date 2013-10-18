package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Application.ApplicationType;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.InputAdapter;
import com.badlogic.gdx.graphics.Camera;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Pools;
import com.badlogic.gdx.utils.SnapshotArray;

public class Stage extends InputAdapter
  implements Disposable
{
  private final SpriteBatch batch;
  private Camera camera;
  private float centerX;
  private float centerY;
  private float gutterHeight;
  private float gutterWidth;
  private float height;
  private Actor keyboardFocus;
  private Actor mouseOverActor;
  private final boolean ownsBatch;
  private Actor[] pointerOverActors = new Actor[20];
  private final Group root;
  private Actor scrollFocus;
  private final Vector2 stageCoords = new Vector2();
  private SnapshotArray<Stage.TouchFocus> touchFocuses = new SnapshotArray(true, 4, Stage.TouchFocus.class);
  private float width;

  public Stage()
  {
    this(Gdx.graphics.getWidth(), Gdx.graphics.getHeight(), false);
  }

  public Stage(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    this.width = paramFloat1;
    this.height = paramFloat2;
    this.ownsBatch = true;
    this.batch = new SpriteBatch();
    this.root = new Group();
    this.root.setStage(this);
    this.camera = new OrthographicCamera();
    setViewport(paramFloat1, paramFloat2, paramBoolean);
  }

  public Stage(float paramFloat1, float paramFloat2, boolean paramBoolean, SpriteBatch paramSpriteBatch)
  {
    this.width = paramFloat1;
    this.height = paramFloat2;
    this.batch = paramSpriteBatch;
    this.ownsBatch = false;
    this.root = new Group();
    this.root.setStage(this);
    this.camera = new OrthographicCamera();
    setViewport(paramFloat1, paramFloat2, paramBoolean);
  }

  private Actor fireEnterAndExit(Actor paramActor, int paramInt1, int paramInt2, int paramInt3)
  {
    screenToStageCoordinates(this.stageCoords.set(paramInt1, paramInt2));
    Actor localActor = hit(this.stageCoords.x, this.stageCoords.y);
    if (localActor == paramActor)
      return paramActor;
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setStage(this);
    localInputEvent.setStageX(this.stageCoords.x);
    localInputEvent.setStageY(this.stageCoords.y);
    localInputEvent.setPointer(paramInt3);
    if (paramActor != null)
    {
      localInputEvent.setType(InputEvent.Type.exit);
      localInputEvent.setRelatedActor(localActor);
      paramActor.fire(localInputEvent);
    }
    if (localActor != null)
    {
      localInputEvent.setType(InputEvent.Type.enter);
      localInputEvent.setRelatedActor(paramActor);
      localActor.fire(localInputEvent);
    }
    Pools.free(localInputEvent);
    return localActor;
  }

  public void act()
  {
    act(Gdx.graphics.getDeltaTime());
  }

  public void act(float paramFloat)
  {
    int i = this.pointerOverActors.length;
    int j = 0;
    if (j < i)
    {
      Actor localActor = this.pointerOverActors[j];
      if (!Gdx.input.isTouched(j))
        if (localActor != null)
        {
          this.pointerOverActors[j] = null;
          screenToStageCoordinates(this.stageCoords.set(Gdx.input.getX(j), Gdx.input.getY(j)));
          InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
          localInputEvent.setType(InputEvent.Type.exit);
          localInputEvent.setStage(this);
          localInputEvent.setStageX(this.stageCoords.x);
          localInputEvent.setStageY(this.stageCoords.y);
          localInputEvent.setRelatedActor(localActor);
          localInputEvent.setPointer(j);
          localActor.fire(localInputEvent);
          Pools.free(localInputEvent);
        }
      while (true)
      {
        j++;
        break;
        this.pointerOverActors[j] = fireEnterAndExit(localActor, Gdx.input.getX(j), Gdx.input.getY(j), j);
      }
    }
    if (Gdx.app.getType() == Application.ApplicationType.Desktop)
      this.mouseOverActor = fireEnterAndExit(this.mouseOverActor, Gdx.input.getX(), Gdx.input.getY(), -1);
    this.root.act(paramFloat);
  }

  public void addActor(Actor paramActor)
  {
    this.root.addActor(paramActor);
  }

  public boolean addCaptureListener(EventListener paramEventListener)
  {
    return this.root.addCaptureListener(paramEventListener);
  }

  public boolean addListener(EventListener paramEventListener)
  {
    return this.root.addListener(paramEventListener);
  }

  public void addTouchFocus(EventListener paramEventListener, Actor paramActor1, Actor paramActor2, int paramInt1, int paramInt2)
  {
    Stage.TouchFocus localTouchFocus = (Stage.TouchFocus)Pools.obtain(Stage.TouchFocus.class);
    localTouchFocus.listenerActor = paramActor1;
    localTouchFocus.target = paramActor2;
    localTouchFocus.listener = paramEventListener;
    localTouchFocus.pointer = paramInt1;
    localTouchFocus.button = paramInt2;
    this.touchFocuses.add(localTouchFocus);
  }

  public void cancelTouchFocus()
  {
    cancelTouchFocus(null, null);
  }

  public void cancelTouchFocus(EventListener paramEventListener, Actor paramActor)
  {
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setStage(this);
    localInputEvent.setType(InputEvent.Type.touchUp);
    localInputEvent.setStageX(-2.147484E+09F);
    localInputEvent.setStageY(-2.147484E+09F);
    SnapshotArray localSnapshotArray = this.touchFocuses;
    for (int i = -1 + localSnapshotArray.size; i >= 0; i--)
    {
      Stage.TouchFocus localTouchFocus = (Stage.TouchFocus)localSnapshotArray.get(i);
      if ((localTouchFocus.listener != paramEventListener) || (localTouchFocus.listenerActor != paramActor))
      {
        localInputEvent.setTarget(localTouchFocus.target);
        localInputEvent.setListenerActor(localTouchFocus.listenerActor);
        localInputEvent.setPointer(localTouchFocus.pointer);
        localInputEvent.setButton(localTouchFocus.button);
        localSnapshotArray.removeIndex(i);
        localTouchFocus.listener.handle(localInputEvent);
      }
    }
    Pools.free(localInputEvent);
  }

  public void clear()
  {
    unfocusAll();
    this.root.clear();
  }

  public void dispose()
  {
    if (this.ownsBatch)
      this.batch.dispose();
  }

  public void draw()
  {
    this.camera.update();
    if (!this.root.isVisible())
      return;
    this.batch.setProjectionMatrix(this.camera.combined);
    this.batch.begin();
    this.root.draw(this.batch, 1.0F);
    this.batch.end();
  }

  public Array<Actor> getActors()
  {
    return this.root.getChildren();
  }

  public Camera getCamera()
  {
    return this.camera;
  }

  public float getGutterHeight()
  {
    return this.gutterHeight;
  }

  public float getGutterWidth()
  {
    return this.gutterWidth;
  }

  public float getHeight()
  {
    return this.height;
  }

  public Actor getKeyboardFocus()
  {
    return this.keyboardFocus;
  }

  public Group getRoot()
  {
    return this.root;
  }

  public Actor getScrollFocus()
  {
    return this.scrollFocus;
  }

  public SpriteBatch getSpriteBatch()
  {
    return this.batch;
  }

  public float getWidth()
  {
    return this.width;
  }

  public Actor hit(float paramFloat1, float paramFloat2)
  {
    Vector2 localVector2 = Vector2.tmp;
    this.root.parentToLocalCoordinates(localVector2.set(paramFloat1, paramFloat2));
    return this.root.hit(localVector2.x, localVector2.y);
  }

  public boolean keyDown(int paramInt)
  {
    if (this.keyboardFocus == null)
      return false;
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setStage(this);
    localInputEvent.setType(InputEvent.Type.keyDown);
    localInputEvent.setKeyCode(paramInt);
    this.keyboardFocus.fire(localInputEvent);
    Pools.free(localInputEvent);
    return localInputEvent.isHandled();
  }

  public boolean keyTyped(char paramChar)
  {
    if (this.keyboardFocus == null)
      return false;
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setStage(this);
    localInputEvent.setType(InputEvent.Type.keyTyped);
    localInputEvent.setCharacter(paramChar);
    this.keyboardFocus.fire(localInputEvent);
    Pools.free(localInputEvent);
    return localInputEvent.isHandled();
  }

  public boolean keyUp(int paramInt)
  {
    if (this.keyboardFocus == null)
      return false;
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setStage(this);
    localInputEvent.setType(InputEvent.Type.keyUp);
    localInputEvent.setKeyCode(paramInt);
    this.keyboardFocus.fire(localInputEvent);
    Pools.free(localInputEvent);
    return localInputEvent.isHandled();
  }

  public boolean mouseMoved(int paramInt1, int paramInt2)
  {
    screenToStageCoordinates(this.stageCoords.set(paramInt1, paramInt2));
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setStage(this);
    localInputEvent.setType(InputEvent.Type.mouseMoved);
    localInputEvent.setStageX(this.stageCoords.x);
    localInputEvent.setStageY(this.stageCoords.y);
    Object localObject = hit(this.stageCoords.x, this.stageCoords.y);
    if (localObject == null)
      localObject = this.root;
    ((Actor)localObject).fire(localInputEvent);
    Pools.free(localInputEvent);
    return localInputEvent.isHandled();
  }

  public boolean removeCaptureListener(EventListener paramEventListener)
  {
    return this.root.removeCaptureListener(paramEventListener);
  }

  public boolean removeListener(EventListener paramEventListener)
  {
    return this.root.removeListener(paramEventListener);
  }

  public void removeTouchFocus(EventListener paramEventListener, Actor paramActor1, Actor paramActor2, int paramInt1, int paramInt2)
  {
    SnapshotArray localSnapshotArray = this.touchFocuses;
    for (int i = -1 + localSnapshotArray.size; i >= 0; i--)
    {
      Stage.TouchFocus localTouchFocus = (Stage.TouchFocus)localSnapshotArray.get(i);
      if ((localTouchFocus.listener == paramEventListener) && (localTouchFocus.listenerActor == paramActor1) && (localTouchFocus.target == paramActor2) && (localTouchFocus.pointer == paramInt1) && (localTouchFocus.button == paramInt2))
      {
        localSnapshotArray.removeIndex(i);
        Pools.free(localTouchFocus);
      }
    }
  }

  public void screenToStageCoordinates(Vector2 paramVector2)
  {
    this.camera.unproject(Vector3.tmp.set(paramVector2.x, paramVector2.y, 0.0F));
    paramVector2.x = Vector3.tmp.x;
    paramVector2.y = Vector3.tmp.y;
  }

  public boolean scrolled(int paramInt)
  {
    if (this.scrollFocus == null)
      return false;
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setStage(this);
    localInputEvent.setType(InputEvent.Type.scrolled);
    localInputEvent.setScrollAmount(paramInt);
    this.scrollFocus.fire(localInputEvent);
    Pools.free(localInputEvent);
    return localInputEvent.isHandled();
  }

  public void setCamera(Camera paramCamera)
  {
    this.camera = paramCamera;
  }

  public void setKeyboardFocus(Actor paramActor)
  {
    this.keyboardFocus = paramActor;
  }

  public void setScrollFocus(Actor paramActor)
  {
    this.scrollFocus = paramActor;
  }

  public void setViewport(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    float f1;
    float f2;
    if (paramBoolean)
    {
      f1 = Gdx.graphics.getWidth();
      f2 = Gdx.graphics.getHeight();
      if (f2 / f1 < paramFloat2 / paramFloat1)
      {
        float f5 = f2 / paramFloat2;
        float f6 = paramFloat2 / f2 * (f1 - f5 * paramFloat1);
        this.width = (paramFloat1 + f6);
        this.height = paramFloat2;
        this.gutterWidth = (f6 / 2.0F);
        this.gutterHeight = 0.0F;
      }
    }
    while (true)
    {
      this.centerX = (this.width / 2.0F);
      this.centerY = (this.height / 2.0F);
      this.camera.position.set(this.centerX, this.centerY, 0.0F);
      this.camera.viewportWidth = this.width;
      this.camera.viewportHeight = this.height;
      return;
      float f3 = f1 / paramFloat1;
      float f4 = paramFloat1 / f1 * (f2 - f3 * paramFloat2);
      this.height = (paramFloat2 + f4);
      this.width = paramFloat1;
      this.gutterWidth = 0.0F;
      this.gutterHeight = (f4 / 2.0F);
      continue;
      this.width = paramFloat1;
      this.height = paramFloat2;
      this.gutterWidth = 0.0F;
      this.gutterHeight = 0.0F;
    }
  }

  public void stageToScreenCoordinates(Vector2 paramVector2)
  {
    Vector3.tmp.set(paramVector2.x, paramVector2.y, 0.0F);
    this.camera.project(Vector3.tmp);
    paramVector2.x = Vector3.tmp.x;
    paramVector2.y = Vector3.tmp.y;
  }

  public void toScreenCoordinates(Vector2 paramVector2, Matrix4 paramMatrix4)
  {
    ScissorStack.toWindowCoordinates(this.camera, paramMatrix4, paramVector2);
  }

  public boolean touchDown(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    screenToStageCoordinates(this.stageCoords.set(paramInt1, paramInt2));
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setType(InputEvent.Type.touchDown);
    localInputEvent.setStage(this);
    localInputEvent.setStageX(this.stageCoords.x);
    localInputEvent.setStageY(this.stageCoords.y);
    localInputEvent.setPointer(paramInt3);
    localInputEvent.setButton(paramInt4);
    Object localObject = hit(this.stageCoords.x, this.stageCoords.y);
    if (localObject == null)
      localObject = this.root;
    ((Actor)localObject).fire(localInputEvent);
    boolean bool = localInputEvent.isHandled();
    Pools.free(localInputEvent);
    return bool;
  }

  public boolean touchDragged(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 0;
    if (this.touchFocuses.size == 0)
      return false;
    screenToStageCoordinates(this.stageCoords.set(paramInt1, paramInt2));
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setType(InputEvent.Type.touchDragged);
    localInputEvent.setStage(this);
    localInputEvent.setStageX(this.stageCoords.x);
    localInputEvent.setStageY(this.stageCoords.y);
    localInputEvent.setPointer(paramInt3);
    SnapshotArray localSnapshotArray = this.touchFocuses;
    Stage.TouchFocus[] arrayOfTouchFocus = (Stage.TouchFocus[])localSnapshotArray.begin();
    int j = localSnapshotArray.size;
    while (i < j)
    {
      Stage.TouchFocus localTouchFocus = arrayOfTouchFocus[i];
      if (localTouchFocus.pointer == paramInt3)
      {
        localInputEvent.setTarget(localTouchFocus.target);
        localInputEvent.setListenerActor(localTouchFocus.listenerActor);
        if (localTouchFocus.listener.handle(localInputEvent))
          localInputEvent.handle();
      }
      i++;
    }
    localSnapshotArray.end();
    boolean bool = localInputEvent.isHandled();
    Pools.free(localInputEvent);
    return bool;
  }

  public boolean touchUp(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    if (this.touchFocuses.size == 0)
      return false;
    screenToStageCoordinates(this.stageCoords.set(paramInt1, paramInt2));
    InputEvent localInputEvent = (InputEvent)Pools.obtain(InputEvent.class);
    localInputEvent.setType(InputEvent.Type.touchUp);
    localInputEvent.setStage(this);
    localInputEvent.setStageX(this.stageCoords.x);
    localInputEvent.setStageY(this.stageCoords.y);
    localInputEvent.setPointer(paramInt3);
    localInputEvent.setButton(paramInt4);
    SnapshotArray localSnapshotArray = this.touchFocuses;
    Stage.TouchFocus[] arrayOfTouchFocus = (Stage.TouchFocus[])localSnapshotArray.begin();
    int j = localSnapshotArray.size;
    while (i < j)
    {
      Stage.TouchFocus localTouchFocus2 = arrayOfTouchFocus[i];
      if ((localTouchFocus2.pointer == paramInt3) && (localTouchFocus2.button == paramInt4))
      {
        localInputEvent.setTarget(localTouchFocus2.target);
        localInputEvent.setListenerActor(localTouchFocus2.listenerActor);
        if (localTouchFocus2.listener.handle(localInputEvent))
          localInputEvent.handle();
      }
      i++;
    }
    localSnapshotArray.end();
    for (int k = -1 + localSnapshotArray.size; k >= 0; k--)
    {
      Stage.TouchFocus localTouchFocus1 = (Stage.TouchFocus)localSnapshotArray.get(k);
      if ((localTouchFocus1.pointer == paramInt3) && (localTouchFocus1.button == paramInt4))
      {
        localSnapshotArray.removeIndex(k);
        Pools.free(localTouchFocus1);
      }
    }
    boolean bool = localInputEvent.isHandled();
    Pools.free(localInputEvent);
    return bool;
  }

  public void unfocus(Actor paramActor)
  {
    if (this.scrollFocus == paramActor)
      this.scrollFocus = null;
    if (this.keyboardFocus == paramActor)
      this.keyboardFocus = null;
  }

  public void unfocusAll()
  {
    this.scrollFocus = null;
    this.keyboardFocus = null;
    cancelTouchFocus();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.Stage
 * JD-Core Version:    0.6.2
 */