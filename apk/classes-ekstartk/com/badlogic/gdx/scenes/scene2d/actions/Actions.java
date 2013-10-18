package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;
import com.badlogic.gdx.utils.Pool;
import com.badlogic.gdx.utils.Pools;

public class Actions
{
  public static <T extends Action> T action(Class<T> paramClass)
  {
    Pool localPool = Pools.get(paramClass);
    Action localAction = (Action)localPool.obtain();
    localAction.setPool(localPool);
    return localAction;
  }

  public static AddAction add(Actor paramActor, Action paramAction)
  {
    AddAction localAddAction = (AddAction)action(AddAction.class);
    localAddAction.setTargetActor(paramActor);
    localAddAction.setAction(paramAction);
    return localAddAction;
  }

  public static AfterAction after(Action paramAction)
  {
    AfterAction localAfterAction = (AfterAction)action(AfterAction.class);
    localAfterAction.setAction(paramAction);
    return localAfterAction;
  }

  public static AlphaAction alpha(float paramFloat)
  {
    return alpha(paramFloat, 0.0F, null);
  }

  public static AlphaAction alpha(float paramFloat1, float paramFloat2)
  {
    return alpha(paramFloat1, paramFloat2, null);
  }

  public static AlphaAction alpha(float paramFloat1, float paramFloat2, Interpolation paramInterpolation)
  {
    AlphaAction localAlphaAction = (AlphaAction)action(AlphaAction.class);
    localAlphaAction.setAlpha(paramFloat1);
    localAlphaAction.setDuration(paramFloat2);
    localAlphaAction.setInterpolation(paramInterpolation);
    return localAlphaAction;
  }

  public static ColorAction color(Color paramColor)
  {
    return color(paramColor, 0.0F, null);
  }

  public static ColorAction color(Color paramColor, float paramFloat)
  {
    return color(paramColor, paramFloat, null);
  }

  public static ColorAction color(Color paramColor, float paramFloat, Interpolation paramInterpolation)
  {
    ColorAction localColorAction = (ColorAction)action(ColorAction.class);
    localColorAction.setEndColor(paramColor);
    localColorAction.setDuration(paramFloat);
    localColorAction.setInterpolation(paramInterpolation);
    return localColorAction;
  }

  public static DelayAction delay(float paramFloat)
  {
    DelayAction localDelayAction = (DelayAction)action(DelayAction.class);
    localDelayAction.setDuration(paramFloat);
    return localDelayAction;
  }

  public static DelayAction delay(float paramFloat, Action paramAction)
  {
    DelayAction localDelayAction = (DelayAction)action(DelayAction.class);
    localDelayAction.setDuration(paramFloat);
    localDelayAction.setAction(paramAction);
    return localDelayAction;
  }

  public static AlphaAction fadeIn(float paramFloat)
  {
    return alpha(1.0F, paramFloat, null);
  }

  public static AlphaAction fadeIn(float paramFloat, Interpolation paramInterpolation)
  {
    AlphaAction localAlphaAction = (AlphaAction)action(AlphaAction.class);
    localAlphaAction.setAlpha(1.0F);
    localAlphaAction.setDuration(paramFloat);
    localAlphaAction.setInterpolation(paramInterpolation);
    return localAlphaAction;
  }

  public static AlphaAction fadeOut(float paramFloat)
  {
    return alpha(0.0F, paramFloat, null);
  }

  public static AlphaAction fadeOut(float paramFloat, Interpolation paramInterpolation)
  {
    AlphaAction localAlphaAction = (AlphaAction)action(AlphaAction.class);
    localAlphaAction.setAlpha(0.0F);
    localAlphaAction.setDuration(paramFloat);
    localAlphaAction.setInterpolation(paramInterpolation);
    return localAlphaAction;
  }

  public static RepeatAction forever(Action paramAction)
  {
    RepeatAction localRepeatAction = (RepeatAction)action(RepeatAction.class);
    localRepeatAction.setCount(-1);
    localRepeatAction.setAction(paramAction);
    return localRepeatAction;
  }

  public static VisibleAction hide()
  {
    return visible(false);
  }

  public static LayoutAction layout(boolean paramBoolean)
  {
    LayoutAction localLayoutAction = (LayoutAction)action(LayoutAction.class);
    localLayoutAction.setLayoutEnabled(paramBoolean);
    return localLayoutAction;
  }

  public static MoveByAction moveBy(float paramFloat1, float paramFloat2)
  {
    return moveBy(paramFloat1, paramFloat2, 0.0F, null);
  }

  public static MoveByAction moveBy(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return moveBy(paramFloat1, paramFloat2, paramFloat3, null);
  }

  public static MoveByAction moveBy(float paramFloat1, float paramFloat2, float paramFloat3, Interpolation paramInterpolation)
  {
    MoveByAction localMoveByAction = (MoveByAction)action(MoveByAction.class);
    localMoveByAction.setAmount(paramFloat1, paramFloat2);
    localMoveByAction.setDuration(paramFloat3);
    localMoveByAction.setInterpolation(paramInterpolation);
    return localMoveByAction;
  }

  public static MoveToAction moveTo(float paramFloat1, float paramFloat2)
  {
    return moveTo(paramFloat1, paramFloat2, 0.0F, null);
  }

  public static MoveToAction moveTo(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return moveTo(paramFloat1, paramFloat2, paramFloat3, null);
  }

  public static MoveToAction moveTo(float paramFloat1, float paramFloat2, float paramFloat3, Interpolation paramInterpolation)
  {
    MoveToAction localMoveToAction = (MoveToAction)action(MoveToAction.class);
    localMoveToAction.setPosition(paramFloat1, paramFloat2);
    localMoveToAction.setDuration(paramFloat3);
    localMoveToAction.setInterpolation(paramInterpolation);
    return localMoveToAction;
  }

  public static ParallelAction parallel(Action paramAction)
  {
    ParallelAction localParallelAction = (ParallelAction)action(ParallelAction.class);
    localParallelAction.addAction(paramAction);
    return localParallelAction;
  }

  public static ParallelAction parallel(Action paramAction1, Action paramAction2)
  {
    ParallelAction localParallelAction = (ParallelAction)action(ParallelAction.class);
    localParallelAction.addAction(paramAction1);
    localParallelAction.addAction(paramAction2);
    return localParallelAction;
  }

  public static ParallelAction parallel(Action paramAction1, Action paramAction2, Action paramAction3)
  {
    ParallelAction localParallelAction = (ParallelAction)action(ParallelAction.class);
    localParallelAction.addAction(paramAction1);
    localParallelAction.addAction(paramAction2);
    localParallelAction.addAction(paramAction3);
    return localParallelAction;
  }

  public static ParallelAction parallel(Action paramAction1, Action paramAction2, Action paramAction3, Action paramAction4)
  {
    ParallelAction localParallelAction = (ParallelAction)action(ParallelAction.class);
    localParallelAction.addAction(paramAction1);
    localParallelAction.addAction(paramAction2);
    localParallelAction.addAction(paramAction3);
    localParallelAction.addAction(paramAction4);
    return localParallelAction;
  }

  public static ParallelAction parallel(Action paramAction1, Action paramAction2, Action paramAction3, Action paramAction4, Action paramAction5)
  {
    ParallelAction localParallelAction = (ParallelAction)action(ParallelAction.class);
    localParallelAction.addAction(paramAction1);
    localParallelAction.addAction(paramAction2);
    localParallelAction.addAction(paramAction3);
    localParallelAction.addAction(paramAction4);
    localParallelAction.addAction(paramAction5);
    return localParallelAction;
  }

  public static ParallelAction parallel(Action[] paramArrayOfAction)
  {
    ParallelAction localParallelAction = (ParallelAction)action(ParallelAction.class);
    int i = 0;
    int j = paramArrayOfAction.length;
    while (i < j)
    {
      localParallelAction.addAction(paramArrayOfAction[i]);
      i++;
    }
    return localParallelAction;
  }

  public static RemoveActorAction removeActor()
  {
    return (RemoveActorAction)action(RemoveActorAction.class);
  }

  public static RemoveActorAction removeActor(Actor paramActor)
  {
    RemoveActorAction localRemoveActorAction = (RemoveActorAction)action(RemoveActorAction.class);
    localRemoveActorAction.setRemoveActor(paramActor);
    return localRemoveActorAction;
  }

  public static RepeatAction repeat(int paramInt, Action paramAction)
  {
    RepeatAction localRepeatAction = (RepeatAction)action(RepeatAction.class);
    localRepeatAction.setCount(paramInt);
    localRepeatAction.setAction(paramAction);
    return localRepeatAction;
  }

  public static RotateByAction rotateBy(float paramFloat)
  {
    return rotateBy(paramFloat, 0.0F, null);
  }

  public static RotateByAction rotateBy(float paramFloat1, float paramFloat2)
  {
    return rotateBy(paramFloat1, paramFloat2, null);
  }

  public static RotateByAction rotateBy(float paramFloat1, float paramFloat2, Interpolation paramInterpolation)
  {
    RotateByAction localRotateByAction = (RotateByAction)action(RotateByAction.class);
    localRotateByAction.setAmount(paramFloat1);
    localRotateByAction.setDuration(paramFloat2);
    localRotateByAction.setInterpolation(paramInterpolation);
    return localRotateByAction;
  }

  public static RotateToAction rotateTo(float paramFloat)
  {
    return rotateTo(paramFloat, 0.0F, null);
  }

  public static RotateToAction rotateTo(float paramFloat1, float paramFloat2)
  {
    return rotateTo(paramFloat1, paramFloat2, null);
  }

  public static RotateToAction rotateTo(float paramFloat1, float paramFloat2, Interpolation paramInterpolation)
  {
    RotateToAction localRotateToAction = (RotateToAction)action(RotateToAction.class);
    localRotateToAction.setRotation(paramFloat1);
    localRotateToAction.setDuration(paramFloat2);
    localRotateToAction.setInterpolation(paramInterpolation);
    return localRotateToAction;
  }

  public static RunnableAction run(Runnable paramRunnable)
  {
    RunnableAction localRunnableAction = (RunnableAction)action(RunnableAction.class);
    localRunnableAction.setRunnable(paramRunnable);
    return localRunnableAction;
  }

  public static ScaleByAction scaleBy(float paramFloat1, float paramFloat2)
  {
    return scaleBy(paramFloat1, paramFloat2, 0.0F, null);
  }

  public static ScaleByAction scaleBy(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return scaleBy(paramFloat1, paramFloat2, paramFloat3, null);
  }

  public static ScaleByAction scaleBy(float paramFloat1, float paramFloat2, float paramFloat3, Interpolation paramInterpolation)
  {
    ScaleByAction localScaleByAction = (ScaleByAction)action(ScaleByAction.class);
    localScaleByAction.setAmount(paramFloat1, paramFloat2);
    localScaleByAction.setDuration(paramFloat3);
    localScaleByAction.setInterpolation(paramInterpolation);
    return localScaleByAction;
  }

  public static ScaleToAction scaleTo(float paramFloat1, float paramFloat2)
  {
    return scaleTo(paramFloat1, paramFloat2, 0.0F, null);
  }

  public static ScaleToAction scaleTo(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return scaleTo(paramFloat1, paramFloat2, paramFloat3, null);
  }

  public static ScaleToAction scaleTo(float paramFloat1, float paramFloat2, float paramFloat3, Interpolation paramInterpolation)
  {
    ScaleToAction localScaleToAction = (ScaleToAction)action(ScaleToAction.class);
    localScaleToAction.setScale(paramFloat1, paramFloat2);
    localScaleToAction.setDuration(paramFloat3);
    localScaleToAction.setInterpolation(paramInterpolation);
    return localScaleToAction;
  }

  public static SequenceAction sequence(Action paramAction)
  {
    SequenceAction localSequenceAction = (SequenceAction)action(SequenceAction.class);
    localSequenceAction.addAction(paramAction);
    return localSequenceAction;
  }

  public static SequenceAction sequence(Action paramAction1, Action paramAction2)
  {
    SequenceAction localSequenceAction = (SequenceAction)action(SequenceAction.class);
    localSequenceAction.addAction(paramAction1);
    localSequenceAction.addAction(paramAction2);
    return localSequenceAction;
  }

  public static SequenceAction sequence(Action paramAction1, Action paramAction2, Action paramAction3)
  {
    SequenceAction localSequenceAction = (SequenceAction)action(SequenceAction.class);
    localSequenceAction.addAction(paramAction1);
    localSequenceAction.addAction(paramAction2);
    localSequenceAction.addAction(paramAction3);
    return localSequenceAction;
  }

  public static SequenceAction sequence(Action paramAction1, Action paramAction2, Action paramAction3, Action paramAction4)
  {
    SequenceAction localSequenceAction = (SequenceAction)action(SequenceAction.class);
    localSequenceAction.addAction(paramAction1);
    localSequenceAction.addAction(paramAction2);
    localSequenceAction.addAction(paramAction3);
    localSequenceAction.addAction(paramAction4);
    return localSequenceAction;
  }

  public static SequenceAction sequence(Action paramAction1, Action paramAction2, Action paramAction3, Action paramAction4, Action paramAction5)
  {
    SequenceAction localSequenceAction = (SequenceAction)action(SequenceAction.class);
    localSequenceAction.addAction(paramAction1);
    localSequenceAction.addAction(paramAction2);
    localSequenceAction.addAction(paramAction3);
    localSequenceAction.addAction(paramAction4);
    localSequenceAction.addAction(paramAction5);
    return localSequenceAction;
  }

  public static SequenceAction sequence(Action[] paramArrayOfAction)
  {
    SequenceAction localSequenceAction = (SequenceAction)action(SequenceAction.class);
    int i = 0;
    int j = paramArrayOfAction.length;
    while (i < j)
    {
      localSequenceAction.addAction(paramArrayOfAction[i]);
      i++;
    }
    return localSequenceAction;
  }

  public static VisibleAction show()
  {
    return visible(true);
  }

  public static SizeByAction sizeBy(float paramFloat1, float paramFloat2)
  {
    return sizeBy(paramFloat1, paramFloat2, 0.0F, null);
  }

  public static SizeByAction sizeBy(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return sizeBy(paramFloat1, paramFloat2, paramFloat3, null);
  }

  public static SizeByAction sizeBy(float paramFloat1, float paramFloat2, float paramFloat3, Interpolation paramInterpolation)
  {
    SizeByAction localSizeByAction = (SizeByAction)action(SizeByAction.class);
    localSizeByAction.setAmount(paramFloat1, paramFloat2);
    localSizeByAction.setDuration(paramFloat3);
    localSizeByAction.setInterpolation(paramInterpolation);
    return localSizeByAction;
  }

  public static SizeToAction sizeTo(float paramFloat1, float paramFloat2)
  {
    return sizeTo(paramFloat1, paramFloat2, 0.0F, null);
  }

  public static SizeToAction sizeTo(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return sizeTo(paramFloat1, paramFloat2, paramFloat3, null);
  }

  public static SizeToAction sizeTo(float paramFloat1, float paramFloat2, float paramFloat3, Interpolation paramInterpolation)
  {
    SizeToAction localSizeToAction = (SizeToAction)action(SizeToAction.class);
    localSizeToAction.setSize(paramFloat1, paramFloat2);
    localSizeToAction.setDuration(paramFloat3);
    localSizeToAction.setInterpolation(paramInterpolation);
    return localSizeToAction;
  }

  public static TouchableAction touchable(Touchable paramTouchable)
  {
    TouchableAction localTouchableAction = (TouchableAction)action(TouchableAction.class);
    localTouchableAction.setTouchable(paramTouchable);
    return localTouchableAction;
  }

  public static VisibleAction visible(boolean paramBoolean)
  {
    VisibleAction localVisibleAction = (VisibleAction)action(VisibleAction.class);
    localVisibleAction.setVisible(paramBoolean);
    return localVisibleAction;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.Actions
 * JD-Core Version:    0.6.2
 */