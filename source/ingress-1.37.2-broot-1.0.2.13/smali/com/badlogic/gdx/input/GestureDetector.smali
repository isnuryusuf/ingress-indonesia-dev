.class public Lcom/badlogic/gdx/input/GestureDetector;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# static fields
.field public static final DEFAULT_HALF_TAP_SQUARE_PIXELS:I = 0x14

.field public static final DEFAULT_LONG_PRESS_DURATION_S:F = 1.1f

.field public static final DEFAULT_MAX_FLING_DELAY_S:F = 0.15f

.field public static final DEFAULT_TAP_COUNT_INTERVAL_S:F = 0.4f


# instance fields
.field private gestureStartTime:J

.field private inTapSquare:Z

.field private final initialPointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final initialPointer2:Lcom/badlogic/gdx/math/Vector2;

.field private lastTapTimeNs:J

.field final listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

.field longPressFired:Z

.field private longPressSeconds:F

.field private final longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

.field private maxFlingDelayNs:J

.field private panning:Z

.field private pinching:Z

.field pointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final pointer2:Lcom/badlogic/gdx/math/Vector2;

.field private tapCount:I

.field private tapCountIntervalNs:J

.field private tapSquareCenterX:F

.field private tapSquareCenterY:F

.field private tapSquareSize:F

.field private final tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;


# direct methods
.method public constructor <init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x4e6e6b28

    .line 79
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-direct {v0}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/GestureDetector$1;-><init>(Lcom/badlogic/gdx/input/GestureDetector;)V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    .line 80
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    .line 81
    mul-float v0, p2, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountIntervalNs:J

    .line 82
    iput p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    .line 83
    mul-float v0, p4, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelayNs:J

    .line 84
    iput-object p5, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 6
    .parameter

    .prologue
    .line 67
    const/high16 v1, 0x41a0

    const v2, 0x3ecccccd

    const v3, 0x3f8ccccd

    const v4, 0x3e19999a

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method public isLongPressed()Z
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/GestureDetector;->isLongPressed(F)Z

    move-result v0

    return v0
.end method

.method public isLongPressed(F)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-wide v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    sub-long/2addr v1, v3

    const v3, 0x4e6e6b28

    mul-float/2addr v3, p1

    float-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPanning()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 232
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 233
    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 234
    return-void
.end method

.method public setLongPressSeconds(F)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    .line 246
    return-void
.end method

.method public setMaxFlingDelay(J)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-wide p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelayNs:J

    .line 250
    return-void
.end method

.method public setTapCountInterval(J)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountIntervalNs:J

    .line 242
    return-void
.end method

.method public setTapSquareSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 237
    int-to-float v0, p1

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    .line 238
    return-void
.end method

.method public touchDown(FFII)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 93
    if-le p3, v4, :cond_0

    .line 124
    :goto_0
    return v0

    .line 95
    :cond_0
    if-nez p3, :cond_3

    .line 96
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 97
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 98
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    .line 99
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 102
    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 124
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->touchDown(FFI)Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_2
    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 109
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 110
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 111
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:F

    .line 112
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:F

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressSeconds:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 118
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 119
    iput-boolean v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    goto :goto_1
.end method

.method public touchDown(IIII)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(FFII)Z

    move-result v0

    return v0
.end method

.method public touchDragged(FFI)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    if-le p3, v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-nez v2, :cond_0

    .line 137
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v2, :cond_4

    .line 138
    if-nez p3, :cond_3

    .line 139
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    .line 144
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->zoom(FF)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v3

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    .line 153
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 155
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 158
    :cond_6
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-nez v2, :cond_0

    .line 160
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 161
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v1, v1, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v2, v2, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pan(FFFF)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public touchDragged(III)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(FFI)Z

    move-result v0

    return v0
.end method

.method public touchUp(FFII)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 174
    if-le p3, v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareCenterY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapSquareSize:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 178
    :cond_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressTask:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    .line 181
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 182
    iget-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-nez v1, :cond_0

    .line 183
    iget-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->inTapSquare:Z

    if-eqz v1, :cond_5

    .line 185
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTimeNs:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCountIntervalNs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    .line 186
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    .line 187
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->lastTapTimeNs:J

    .line 188
    iput-wide v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tapCount:I

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->tap(FFIII)Z

    move-result v0

    goto :goto_0

    .line 190
    :cond_5
    iget-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    if-eqz v1, :cond_7

    .line 192
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->pinching:Z

    .line 193
    iput-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->panning:Z

    .line 195
    if-nez p3, :cond_6

    .line 197
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    goto :goto_0

    .line 200
    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    goto/16 :goto_0

    .line 203
    :cond_7
    iput-wide v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->gestureStartTime:J

    .line 205
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v1

    .line 206
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-wide v3, v3, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/badlogic/gdx/input/GestureDetector;->maxFlingDelayNs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v1}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityX()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->tracker:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityY()F

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->fling(FFII)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public touchUp(IIII)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(FFII)Z

    move-result v0

    return v0
.end method
