package com.badlogic.gdx.math;

public enum Plane$PlaneSide
{
  static
  {
    Back = new PlaneSide("Back", 1);
    Front = new PlaneSide("Front", 2);
    PlaneSide[] arrayOfPlaneSide = new PlaneSide[3];
    arrayOfPlaneSide[0] = OnPlane;
    arrayOfPlaneSide[1] = Back;
    arrayOfPlaneSide[2] = Front;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Plane.PlaneSide
 * JD-Core Version:    0.6.2
 */