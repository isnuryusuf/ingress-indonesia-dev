.class public final Lcom/nianticproject/ingress/common/ui/widget/h;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:F


# instance fields
.field private final c:F

.field private final d:F

.field private final e:F

.field private f:J

.field private g:F

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/nianticproject/ingress/common/ui/widget/h;->a:J

    .line 18
    const v0, 0x3d4ccccd

    sput v0, Lcom/nianticproject/ingress/common/ui/widget/h;->b:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 64
    iput p4, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->c:F

    .line 65
    iput p5, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->d:F

    .line 66
    iput p3, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->e:F

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->f:J

    .line 70
    cmpl-float v0, p3, v2

    if-lez v0, :cond_0

    .line 71
    mul-float v0, p3, p4

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->h:F

    .line 75
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollingDisabled(ZZ)V

    .line 76
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/i;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/widget/i;-><init>(Lcom/nianticproject/ingress/common/ui/widget/h;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/h;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 83
    return-void

    .line 73
    :cond_0
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->h:F

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/h;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->f:J

    return-wide p1
.end method


# virtual methods
.method public final act(F)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/high16 v1, 0x3f80

    .line 87
    .line 88
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->g:F

    .line 90
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->h:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1

    .line 91
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->h:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->h:F

    move v0, v1

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/h;->setColor(FFFF)V

    .line 110
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->act(F)V

    .line 111
    return-void

    .line 93
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->g:F

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->c:F

    div-float/2addr v0, v2

    .line 94
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 97
    iget-wide v5, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->f:J

    sget-wide v7, Lcom/nianticproject/ingress/common/ui/widget/h;->a:J

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 99
    cmpg-float v0, v2, v1

    if-gez v0, :cond_3

    .line 101
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->e:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_2

    .line 102
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/h;->d:F

    div-float v0, v2, v0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/h;->getMaxY()F

    move-result v3

    cmpl-float v3, v3, v9

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/h;->getScrollPercentY()F

    move-result v3

    sub-float/2addr v2, v3

    sget v4, Lcom/nianticproject/ingress/common/ui/widget/h;->b:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollPercentY(F)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
