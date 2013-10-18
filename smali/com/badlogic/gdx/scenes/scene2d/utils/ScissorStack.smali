.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static scissors:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static final viewport:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 104
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 105
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 106
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 107
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 108
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 110
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 111
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 112
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 113
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 114
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 115
    return-void
.end method

.method private static fix(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 85
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 88
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 90
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 92
    :cond_1
    return-void
.end method

.method public static getViewport()Lcom/badlogic/gdx/math/Rectangle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 121
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    .line 125
    :goto_0
    return-object v0

    .line 123
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 124
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 125
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0
.end method

.method public static popScissors()V
    .locals 5

    .prologue
    .line 74
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 79
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v2

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v0, v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/GLCommon;->glScissor(IIII)V

    goto :goto_0
.end method

.method public static pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    .line 45
    invoke-static {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->fix(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 47
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_2

    .line 48
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_1

    :cond_0
    move v0, v1

    .line 68
    :goto_0
    return v0

    .line 49
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xc11

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 66
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v1, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v2, v2

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v3, v3

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v4, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glScissor(IIII)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 53
    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 54
    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 55
    sub-float v4, v3, v2

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    move v0, v1

    goto :goto_0

    .line 57
    :cond_3
    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 58
    iget v5, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 59
    sub-float v5, v0, v4

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    move v0, v1

    goto :goto_0

    .line 61
    :cond_4
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 62
    iput v4, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 63
    sub-float v1, v3, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 64
    sub-float/2addr v0, v4

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_1
.end method

.method public static toWindowCoordinates(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 136
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 137
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;)V

    .line 138
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 139
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 140
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 141
    return-void
.end method
