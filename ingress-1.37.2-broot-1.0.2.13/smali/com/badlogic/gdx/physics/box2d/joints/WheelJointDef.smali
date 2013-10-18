.class public Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;
.super Lcom/badlogic/gdx/physics/box2d/JointDef;
.source "SourceFile"


# instance fields
.field public dampingRatio:F

.field public enableMotor:Z

.field public frequencyHz:F

.field public final localAnchorA:Lcom/badlogic/gdx/math/Vector2;

.field public final localAnchorB:Lcom/badlogic/gdx/math/Vector2;

.field public final localAxisA:Lcom/badlogic/gdx/math/Vector2;

.field public maxMotorTorque:F

.field public motorSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/JointDef;-><init>()V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->enableMotor:Z

    .line 52
    iput v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->maxMotorTorque:F

    .line 55
    iput v2, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->motorSpeed:F

    .line 58
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->frequencyHz:F

    .line 61
    const v0, 0x3f333333

    iput v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->dampingRatio:F

    .line 28
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    .line 29
    return-void
.end method


# virtual methods
.method public initialize(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 33
    iput-object p2, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 35
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/physics/box2d/Body;->getLocalVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 37
    return-void
.end method
