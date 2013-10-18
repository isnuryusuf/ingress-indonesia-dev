.class public Lcom/badlogic/gdx/graphics/g2d/Animation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOOP:I = 0x2

.field public static final LOOP_PINGPONG:I = 0x4

.field public static final LOOP_RANDOM:I = 0x5

.field public static final LOOP_REVERSED:I = 0x3

.field public static final NORMAL:I = 0x0

.field public static final REVERSED:I = 0x1


# instance fields
.field public final animationDuration:F

.field public final frameDuration:F

.field final keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private playMode:I


# direct methods
.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array",
            "<+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    .line 49
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 50
    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 51
    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 52
    iget v3, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    .line 53
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v0, v4, v1

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_0
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    .line 57
    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array",
            "<+",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    .line 66
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 67
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 68
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 69
    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 70
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aput-object v0, v3, v1

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :cond_0
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    .line 74
    return-void
.end method

.method public varargs constructor <init>(F[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    .line 81
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 82
    array-length v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 83
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 84
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    .line 85
    return-void
.end method


# virtual methods
.method public getKeyFrame(F)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3
    .parameter

    .prologue
    .line 119
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 121
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    packed-switch v1, :pswitch_data_0

    .line 145
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 149
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    aget-object v0, v1, v0

    return-object v0

    .line 123
    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    rem-int/2addr v0, v1

    .line 130
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v0

    goto :goto_0

    .line 136
    :pswitch_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 139
    :pswitch_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    .line 141
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getKeyFrame(FZ)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 97
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    if-ne v0, v1, :cond_2

    .line 98
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    if-eqz v0, :cond_3

    .line 99
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(F)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0

    .line 102
    :cond_2
    if-nez p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    if-eq v0, v1, :cond_1

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    if-ne v0, v2, :cond_3

    .line 104
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    goto :goto_0
.end method

.method public isAnimationFinished(F)Z
    .locals 2
    .parameter

    .prologue
    .line 164
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 165
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPlayMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:I

    .line 158
    return-void
.end method
