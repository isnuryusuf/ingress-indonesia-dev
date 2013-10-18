.class public Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 31
    return-void
.end method

.method private native jniGetDampingRatio(J)F
.end method

.method private native jniGetFrequency(J)F
.end method

.method private native jniGetLength(J)F
.end method

.method private native jniSetDampingRatio(JF)V
.end method

.method private native jniSetFrequency(JF)V
.end method

.method private native jniSetLength(JF)V
.end method


# virtual methods
.method public getDampingRatio()F
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->jniGetDampingRatio(J)F

    move-result v0

    return v0
.end method

.method public getFrequency()F
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->jniGetFrequency(J)F

    move-result v0

    return v0
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->jniGetLength(J)F

    move-result v0

    return v0
.end method

.method public setDampingRatio(F)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->jniSetDampingRatio(JF)V

    .line 76
    return-void
.end method

.method public setFrequency(F)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->jniSetFrequency(JF)V

    .line 56
    return-void
.end method

.method public setLength(F)V
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;->jniSetLength(JF)V

    .line 36
    return-void
.end method
