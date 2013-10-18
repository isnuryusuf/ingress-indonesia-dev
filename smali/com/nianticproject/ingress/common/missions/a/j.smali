.class public final Lcom/nianticproject/ingress/common/missions/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private a:Z

.field private b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/nianticproject/ingress/common/missions/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:F

.field private e:F

.field private final f:F

.field private final g:F

.field private h:F

.field private i:F

.field private j:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->a:Z

    .line 42
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    .line 45
    iput v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->e:F

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->f:F

    .line 68
    iput v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->g:F

    .line 69
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->a:Z

    .line 42
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    .line 45
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->e:F

    .line 62
    iput p1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->f:F

    .line 63
    iput p2, p0, Lcom/nianticproject/ingress/common/missions/a/j;->g:F

    .line 64
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/missions/a/k;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x3ccccccd

    .line 150
    iget v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->g:F

    .line 151
    iget v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->i:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 152
    iget v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->g:F

    iget v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->f:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/nianticproject/ingress/common/missions/a/j;->i:F

    iget v3, p0, Lcom/nianticproject/ingress/common/missions/a/j;->h:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->f:F

    add-float/2addr v0, v1

    .line 155
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget v3, p0, Lcom/nianticproject/ingress/common/missions/a/j;->c:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    const-wide v3, 0x3fd51eb851eb851fL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p1, Lcom/nianticproject/ingress/common/missions/a/k;->c:F

    .line 156
    iget v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->d:F

    mul-float/2addr v1, v5

    iput v1, p1, Lcom/nianticproject/ingress/common/missions/a/k;->d:F

    .line 157
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget v3, p0, Lcom/nianticproject/ingress/common/missions/a/j;->c:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p1, Lcom/nianticproject/ingress/common/missions/a/k;->c:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Lcom/nianticproject/ingress/common/missions/a/k;->a:F

    .line 158
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget v3, p0, Lcom/nianticproject/ingress/common/missions/a/j;->e:F

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 160
    iget v2, p0, Lcom/nianticproject/ingress/common/missions/a/j;->d:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nianticproject/ingress/common/missions/a/j;->f:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, v5

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->f:F

    iget v2, p0, Lcom/nianticproject/ingress/common/missions/a/j;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/nianticproject/ingress/common/missions/a/k;->b:F

    .line 162
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p1, Lcom/nianticproject/ingress/common/missions/a/k;->e:F

    .line 163
    iget v0, p1, Lcom/nianticproject/ingress/common/missions/a/k;->e:F

    iput v0, p1, Lcom/nianticproject/ingress/common/missions/a/k;->f:F

    .line 165
    iget-object v0, p1, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget v1, p1, Lcom/nianticproject/ingress/common/missions/a/k;->a:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setX(F)V

    .line 166
    iget-object v0, p1, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget v1, p1, Lcom/nianticproject/ingress/common/missions/a/k;->b:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setY(F)V

    .line 167
    iget-object v0, p1, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget v1, p1, Lcom/nianticproject/ingress/common/missions/a/k;->c:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setWidth(F)V

    .line 168
    iget-object v0, p1, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget v1, p1, Lcom/nianticproject/ingress/common/missions/a/k;->d:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setHeight(F)V

    .line 169
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/high16 v0, 0x40e0

    .line 92
    iput v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->h:F

    .line 93
    iput v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->i:F

    .line 94
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    const-string/jumbo v0, "jarvisCorruption"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->j:Lcom/badlogic/gdx/graphics/Color;

    .line 99
    const-string/jumbo v0, "white"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    .line 100
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->c:F

    .line 101
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->d:F

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    .line 103
    new-instance v1, Lcom/nianticproject/ingress/common/missions/a/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/missions/a/k;-><init>(B)V

    .line 104
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    iput-object v2, v1, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 105
    iget-object v2, v1, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 106
    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/missions/a/j;->a(Lcom/nianticproject/ingress/common/missions/a/k;)V

    .line 107
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public final a(F)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/a/k;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->isVisible()Z

    move-result v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->a:Z

    if-eq v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/a/k;

    .line 116
    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/missions/a/j;->a:Z

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setVisible(Z)V

    goto :goto_0

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->a:Z

    if-nez v0, :cond_2

    .line 142
    :cond_1
    return v8

    .line 124
    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->i:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    .line 125
    iget v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->i:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->i:F

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/a/k;

    .line 129
    iget v2, v0, Lcom/nianticproject/ingress/common/missions/a/k;->e:F

    sub-float/2addr v2, p1

    iput v2, v0, Lcom/nianticproject/ingress/common/missions/a/k;->e:F

    goto :goto_1

    .line 133
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/a/k;

    iget v0, v0, Lcom/nianticproject/ingress/common/missions/a/k;->e:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/a/k;

    .line 135
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/missions/a/j;->a(Lcom/nianticproject/ingress/common/missions/a/k;)V

    .line 136
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/a/k;

    .line 140
    iget-object v2, v0, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/a/j;->j:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/a/j;->j:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/a/j;->j:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/a/j;->j:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v7, v0, Lcom/nianticproject/ingress/common/missions/a/k;->e:F

    mul-float/2addr v6, v7

    iget v0, v0, Lcom/nianticproject/ingress/common/missions/a/k;->f:F

    div-float v0, v6, v0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setColor(FFFF)V

    goto :goto_3
.end method

.method public final b(F)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/nianticproject/ingress/common/missions/a/j;->e:F

    .line 85
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/a/k;

    .line 175
    :goto_0
    if-eqz v0, :cond_0

    .line 176
    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a/k;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->remove()Z

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/j;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/a/k;

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method
