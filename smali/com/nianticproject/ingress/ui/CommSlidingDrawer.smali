.class public Lcom/nianticproject/ingress/ui/CommSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Z

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final a:I

.field private final b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private g:Z

.field private h:Z

.field private i:Landroid/view/VelocityTracker;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/nianticproject/ingress/ui/o;

.field private q:Lcom/nianticproject/ingress/ui/n;

.field private r:Lcom/nianticproject/ingress/ui/p;

.field private final s:Landroid/os/Handler;

.field private t:F

.field private u:F

.field private v:F

.field private w:J

.field private x:J

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/high16 v4, 0x3f00

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->e:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->f:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Lcom/nianticproject/ingress/ui/q;

    invoke-direct {v0, p0, v2}, Lcom/nianticproject/ingress/ui/q;-><init>(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->s:Landroid/os/Handler;

    .line 177
    sget-object v0, Lcom/nianticproject/ingress/dr;->a:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 179
    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 180
    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    .line 181
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    .line 182
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    .line 183
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->A:Z

    .line 184
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->B:Z

    .line 186
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 187
    if-nez v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 193
    if-nez v1, :cond_2

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The content attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_2
    if-ne v0, v1, :cond_3

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The content and handle attributes must refer to different children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_3
    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a:I

    .line 204
    iput v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->b:I

    .line 206
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 207
    const/high16 v1, 0x40c0

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->C:I

    .line 208
    const/high16 v1, 0x42c8

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->D:I

    .line 209
    const/high16 v1, 0x4316

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->E:I

    .line 210
    const/high16 v1, 0x4348

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->F:I

    .line 211
    const/high16 v1, 0x44fa

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->G:I

    .line 212
    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->H:I

    .line 214
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 217
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4000

    .line 611
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    if-eqz v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    .line 618
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v1, :cond_4

    .line 620
    iget v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->n:I

    .line 621
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    sub-int/2addr v2, v3

    .line 622
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 624
    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 638
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 640
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 642
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 627
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 628
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    sub-int/2addr v2, v3

    .line 629
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 631
    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v6, v1, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c(I)V

    .line 462
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->G:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a(IFZ)V

    .line 463
    return-void
.end method

.method private a(IFZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 471
    int-to-float v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->v:F

    .line 472
    iput p2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->u:F

    .line 474
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-eqz v0, :cond_6

    .line 475
    if-nez p3, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->F:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->n:I

    :goto_0
    add-int/2addr v0, v1

    if-le p1, v0, :cond_5

    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->F:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5

    .line 480
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->t:F

    .line 481
    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    .line 482
    iput v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->u:F

    .line 510
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 511
    iput-wide v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->w:J

    .line 512
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->x:J

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    .line 514
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 516
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v4, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->r:Lcom/nianticproject/ingress/ui/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->r:Lcom/nianticproject/ingress/ui/p;

    invoke-interface {v0}, Lcom/nianticproject/ingress/ui/p;->b()V

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->i:Landroid/view/VelocityTracker;

    .line 517
    :cond_3
    return-void

    .line 475
    :cond_4
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->o:I

    goto :goto_0

    .line 486
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->t:F

    .line 487
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 488
    iput v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->u:F

    goto :goto_1

    .line 492
    :cond_6
    if-nez p3, :cond_9

    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->F:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_7

    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_9

    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->F:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_9

    .line 496
    :cond_7
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->t:F

    .line 497
    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    .line 498
    iput v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->u:F

    goto :goto_1

    .line 492
    :cond_8
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    .line 503
    :cond_9
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->t:F

    .line 504
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 505
    iput v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->u:F

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->h:Z

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 827
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d(I)V

    .line 828
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 831
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-nez v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    .line 836
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->q:Lcom/nianticproject/ingress/ui/n;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->q:Lcom/nianticproject/ingress/ui/n;

    invoke-interface {v0}, Lcom/nianticproject/ingress/ui/n;->a()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c(I)V

    .line 467
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a(IFZ)V

    .line 468
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->B:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 842
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d(I)V

    .line 843
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-eqz v0, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    .line 851
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->p:Lcom/nianticproject/ingress/ui/o;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->p:Lcom/nianticproject/ingress/ui/o;

    invoke-interface {v0}, Lcom/nianticproject/ingress/ui/o;->a()V

    goto :goto_0
.end method

.method private c(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v4, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 520
    iput-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    .line 521
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->i:Landroid/view/VelocityTracker;

    .line 522
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 523
    :goto_0
    if-eqz v0, :cond_2

    .line 524
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->t:F

    .line 525
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->F:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->u:F

    .line 526
    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->n:I

    sub-int/2addr v0, v3

    :goto_1
    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->v:F

    .line 528
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->v:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d(I)V

    .line 529
    iput-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    .line 530
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 532
    iput-wide v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->w:J

    .line 533
    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->x:J

    .line 534
    iput-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    .line 542
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 522
    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->o:I

    sub-int/2addr v0, v3

    goto :goto_1

    .line 536
    :cond_2
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    if-eqz v0, :cond_3

    .line 537
    iput-boolean v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    .line 538
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    :cond_3
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->w:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->v:F

    iget v4, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->u:F

    iget v5, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->t:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->v:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->u:F

    iput-wide v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->w:J

    iget v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->v:F

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    iput-boolean v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->b()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->v:F

    iget v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput-boolean v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->v:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d(I)V

    iget-wide v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->x:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->x:J

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->s:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private d(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v3, -0x2711

    const/16 v2, -0x2712

    .line 545
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    .line 547
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_4

    .line 548
    if-ne p1, v3, :cond_0

    .line 549
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 550
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate()V

    .line 608
    :goto_0
    return-void

    .line 551
    :cond_0
    if-ne p1, v2, :cond_1

    .line 552
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getBottom()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->n:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 554
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate()V

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 557
    sub-int v0, p1, v2

    .line 558
    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    if-ge p1, v3, :cond_3

    .line 559
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    sub-int/2addr v0, v2

    .line 563
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 565
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->e:Landroid/graphics/Rect;

    .line 566
    iget-object v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->f:Landroid/graphics/Rect;

    .line 568
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 569
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 571
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 572
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getWidth()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v7, v1, v4, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 575
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 560
    :cond_3
    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->n:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_2

    .line 561
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getBottom()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->n:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_1

    .line 578
    :cond_4
    if-ne p1, v3, :cond_5

    .line 579
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 580
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 581
    :cond_5
    if-ne p1, v2, :cond_6

    .line 582
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->o:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 584
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 586
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 587
    sub-int v0, p1, v2

    .line 588
    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    if-ge p1, v3, :cond_8

    .line 589
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    sub-int/2addr v0, v2

    .line 593
    :cond_7
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 595
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->e:Landroid/graphics/Rect;

    .line 596
    iget-object v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->f:Landroid/graphics/Rect;

    .line 598
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 599
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 601
    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 602
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v7, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 605
    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 590
    :cond_8
    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->o:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_7

    .line 591
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->o:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/ui/n;)V
    .locals 0
    .parameter

    .prologue
    .line 871
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->q:Lcom/nianticproject/ingress/ui/n;

    .line 872
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/ui/o;)V
    .locals 0
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->p:Lcom/nianticproject/ingress/ui/o;

    .line 863
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/ui/p;)V
    .locals 0
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->r:Lcom/nianticproject/ingress/ui/p;

    .line 884
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    .line 267
    iget-object v4, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    .line 268
    iget-boolean v5, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    .line 270
    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 272
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    if-eqz v1, :cond_6

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_3

    .line 275
    if-eqz v5, :cond_2

    .line 276
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 282
    if-eqz v5, :cond_5

    move v1, v0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    iget v4, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 282
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    goto :goto_1

    .line 287
    :cond_6
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-nez v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c()V

    .line 711
    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate()V

    .line 712
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->requestLayout()V

    .line 713
    return-void

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->b()V

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-nez v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k()V

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j()V

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c()V

    .line 741
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate()V

    .line 742
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->requestLayout()V

    .line 744
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 745
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->b()V

    .line 756
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->invalidate()V

    .line 757
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->requestLayout()V

    .line 758
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a()V

    .line 771
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->r:Lcom/nianticproject/ingress/ui/p;

    .line 772
    if-eqz v1, :cond_0

    .line 773
    invoke-interface {v1}, Lcom/nianticproject/ingress/ui/p;->a()V

    .line 775
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a(I)V

    .line 777
    if-eqz v1, :cond_1

    .line 778
    invoke-interface {v1}, Lcom/nianticproject/ingress/ui/p;->b()V

    .line 780
    :cond_1
    return-void

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a()V

    .line 793
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->r:Lcom/nianticproject/ingress/ui/p;

    .line 794
    if-eqz v1, :cond_0

    .line 795
    invoke-interface {v1}, Lcom/nianticproject/ingress/ui/p;->a()V

    .line 797
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->b(I)V

    .line 799
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 801
    if-eqz v1, :cond_1

    .line 802
    invoke-interface {v1}, Lcom/nianticproject/ingress/ui/p;->b()V

    .line 804
    :cond_1
    return-void

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 221
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a:I

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    new-instance v1, Lcom/nianticproject/ingress/ui/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/ui/m;-><init>(Lcom/nianticproject/ingress/ui/CommSlidingDrawer;B)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->b:I

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 810
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 811
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 812
    const-class v0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 814
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 820
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 821
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 822
    const-class v0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 824
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 333
    iget-boolean v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->h:Z

    if-eqz v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 342
    iget-object v5, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->e:Landroid/graphics/Rect;

    .line 343
    iget-object v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    .line 345
    invoke-virtual {v6, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 346
    iget-boolean v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    if-nez v7, :cond_2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    :cond_2
    if-nez v2, :cond_4

    .line 351
    iput-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    .line 353
    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    .line 355
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a()V

    .line 358
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->r:Lcom/nianticproject/ingress/ui/p;

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->r:Lcom/nianticproject/ingress/ui/p;

    invoke-interface {v0}, Lcom/nianticproject/ingress/ui/p;->a()V

    .line 362
    :cond_3
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 364
    float-to-int v2, v4

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->y:I

    .line 365
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c(I)V

    .line 371
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v0, v1

    .line 374
    goto :goto_0

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 368
    float-to-int v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->y:I

    .line 369
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 298
    :cond_0
    sub-int v0, p4, p2

    .line 299
    sub-int v2, p5, p3

    .line 301
    iget-object v3, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    .line 303
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 304
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 309
    iget-object v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    .line 311
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v1, :cond_2

    .line 312
    sub-int/2addr v0, v4

    div-int/lit8 v1, v0, 0x2

    .line 313
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    .line 315
    :goto_1
    const/4 v2, 0x0

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v7, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v9, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 326
    :goto_2
    add-int v2, v1, v4

    add-int v4, v0, v5

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 327
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->n:I

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->o:I

    goto :goto_0

    .line 313
    :cond_1
    sub-int v0, v2, v5

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 318
    :cond_2
    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    .line 319
    :goto_3
    sub-int v1, v2, v5

    div-int/lit8 v1, v1, 0x2

    .line 321
    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v2, v4

    const/4 v7, 0x0

    iget v8, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    .line 318
    :cond_3
    sub-int/2addr v0, v4

    iget v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 241
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 242
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 244
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    .line 249
    invoke-virtual {p0, v0, p1, p2}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 251
    iget-boolean v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v3, v0

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    sub-int/2addr v0, v2

    .line 253
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    .line 261
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->setMeasuredDimension(II)V

    .line 262
    return-void

    .line 256
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iget v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    sub-int/2addr v0, v2

    .line 257
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 379
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->h:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 457
    :goto_0
    return v0

    .line 383
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 386
    packed-switch v0, :pswitch_data_0

    .line 457
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->z:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_2
    move v0, v3

    goto :goto_0

    .line 388
    :pswitch_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    iget v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->y:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->d(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 392
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->i:Landroid/view/VelocityTracker;

    .line 393
    iget v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->H:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 395
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 396
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 399
    iget-boolean v5, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->j:Z

    .line 400
    if-eqz v5, :cond_8

    .line 401
    cmpg-float v2, v1, v6

    if-gez v2, :cond_7

    move v2, v3

    .line 402
    :goto_3
    cmpg-float v6, v0, v6

    if-gez v6, :cond_4

    .line 403
    neg-float v0, v0

    .line 405
    :cond_4
    iget v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->E:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_18

    .line 406
    iget v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->E:I

    int-to-float v0, v0

    move v8, v2

    move v2, v1

    move v1, v0

    move v0, v8

    .line 418
    :goto_4
    float-to-double v6, v1

    float-to-double v1, v2

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 419
    if-eqz v0, :cond_17

    .line 420
    neg-float v0, v1

    .line 423
    :goto_5
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 424
    iget-object v2, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 426
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->D:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_14

    .line 427
    if-eqz v5, :cond_b

    iget-boolean v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->C:I

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v6, v7

    if-lt v1, v6, :cond_6

    :cond_5
    iget-boolean v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-nez v6, :cond_d

    iget v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->n:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->C:I

    sub-int/2addr v6, v7

    if-le v1, v6, :cond_d

    .line 434
    :cond_6
    iget-boolean v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->A:Z

    if-eqz v6, :cond_11

    .line 435
    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->playSoundEffect(I)V

    .line 437
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-eqz v0, :cond_f

    .line 438
    if-eqz v5, :cond_e

    move v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a(I)V

    goto/16 :goto_1

    :cond_7
    move v2, v4

    .line 401
    goto :goto_3

    .line 409
    :cond_8
    cmpg-float v2, v0, v6

    if-gez v2, :cond_a

    move v2, v3

    .line 410
    :goto_7
    cmpg-float v6, v1, v6

    if-gez v6, :cond_9

    .line 411
    neg-float v1, v1

    .line 413
    :cond_9
    iget v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->E:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_18

    .line 414
    iget v1, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->E:I

    int-to-float v1, v1

    move v8, v2

    move v2, v1

    move v1, v0

    move v0, v8

    goto :goto_4

    :cond_a
    move v2, v4

    .line 409
    goto :goto_7

    .line 427
    :cond_b
    iget-boolean v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->C:I

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->m:I

    add-int/2addr v6, v7

    if-lt v2, v6, :cond_6

    :cond_c
    iget-boolean v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->k:Z

    if-nez v6, :cond_d

    iget v6, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->o:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->C:I

    sub-int/2addr v6, v7

    if-gt v2, v6, :cond_6

    .line 447
    :cond_d
    if-eqz v5, :cond_13

    :goto_8
    invoke-direct {p0, v1, v0, v4}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_e
    move v0, v2

    .line 438
    goto :goto_6

    .line 440
    :cond_f
    if-eqz v5, :cond_10

    :goto_9
    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->b(I)V

    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_9

    .line 443
    :cond_11
    if-eqz v5, :cond_12

    :goto_a
    invoke-direct {p0, v1, v0, v4}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_12
    move v1, v2

    goto :goto_a

    :cond_13
    move v1, v2

    .line 447
    goto :goto_8

    .line 450
    :cond_14
    if-eqz v5, :cond_15

    :goto_b
    invoke-direct {p0, v1, v0, v4}, Lcom/nianticproject/ingress/ui/CommSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_15
    move v1, v2

    goto :goto_b

    :cond_16
    move v0, v4

    .line 457
    goto/16 :goto_0

    :cond_17
    move v0, v1

    goto/16 :goto_5

    :cond_18
    move v8, v2

    move v2, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_4

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
