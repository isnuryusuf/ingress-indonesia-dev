.class Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field deltaX:F

.field deltaY:F

.field lastTime:J

.field lastX:F

.field lastY:F

.field meanTime:[J

.field meanX:[F

.field meanY:[F

.field numSamples:I

.field sampleSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/16 v0, 0xa

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    .line 334
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    .line 335
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    .line 336
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    return-void
.end method

.method private getAverage([FI)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 382
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 383
    const/4 v1, 0x0

    .line 384
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 385
    aget v3, p1, v0

    add-float/2addr v1, v3

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    int-to-float v0, v2

    div-float v0, v1, v0

    return v0
.end method

.method private getAverage([JI)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 391
    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 393
    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    if-ge v2, v5, :cond_0

    .line 394
    aget-wide v6, p1, v2

    add-long/2addr v3, v6

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    :cond_0
    if-nez v5, :cond_1

    .line 397
    :goto_1
    return-wide v0

    :cond_1
    int-to-long v0, v5

    div-long v0, v3, v0

    goto :goto_1
.end method

.method private getSum([FI)F
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 401
    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 403
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 404
    aget v3, p1, v2

    add-float/2addr v3, v1

    .line 403
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 406
    :cond_0
    if-nez v4, :cond_1

    .line 407
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getVelocityX()F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([FI)F

    move-result v1

    .line 369
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([JI)J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28

    div-float/2addr v2, v3

    .line 370
    cmpl-float v3, v2, v0

    if-nez v3, :cond_0

    .line 371
    :goto_0
    return v0

    :cond_0
    div-float v0, v1, v2

    goto :goto_0
.end method

.method public getVelocityY()F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([FI)F

    move-result v1

    .line 376
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getAverage([JI)J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28

    div-float/2addr v2, v3

    .line 377
    cmpl-float v3, v2, v0

    if-nez v3, :cond_0

    .line 378
    :goto_0
    return v0

    :cond_0
    div-float v0, v1, v2

    goto :goto_0
.end method

.method public start(FFJ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 339
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    .line 340
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    .line 341
    iput v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    .line 342
    iput v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    .line 343
    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    .line 344
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    aput v4, v1, v0

    .line 346
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    aput v4, v1, v0

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 350
    return-void
.end method

.method public update(FFJ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    .line 355
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    sub-float v0, p2, v0

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    .line 356
    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastX:F

    .line 357
    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastY:F

    .line 358
    iget-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    sub-long v0, p3, v0

    .line 359
    iput-wide p3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->lastTime:J

    .line 360
    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->sampleSize:I

    rem-int/2addr v2, v3

    .line 361
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanX:[F

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaX:F

    aput v4, v3, v2

    .line 362
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanY:[F

    iget v4, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->deltaY:F

    aput v4, v3, v2

    .line 363
    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->meanTime:[J

    aput-wide v0, v3, v2

    .line 364
    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->numSamples:I

    .line 365
    return-void
.end method
