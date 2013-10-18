.class public Lcom/badlogic/gdx/math/Circle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public radius:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 26
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 27
    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 32
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 33
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 34
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, p1

    .line 38
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, p2

    .line 39
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 3
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 44
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 45
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 50
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 51
    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 52
    return-void
.end method
