.class public final Lcom/nianticproject/ingress/common/ui/d/a;
.super Lcom/badlogic/gdx/input/GestureDetector;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/d/f;

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private e:I

.field private final f:Lcom/nianticproject/ingress/common/ui/d/b;

.field private g:I

.field private h:I

.field private final i:J

.field private j:J

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/d/a;-><init>(Lcom/nianticproject/ingress/common/ui/d/b;B)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/d/b;B)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 68
    const/high16 v1, 0x41a0

    const v2, 0x3ecccccd

    const/high16 v3, 0x3f00

    const v4, 0x3e19999a

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/d/f;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    .line 19
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    .line 20
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    .line 21
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    .line 69
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->f:Lcom/nianticproject/ingress/common/ui/d/b;

    .line 70
    const-wide/32 v0, 0x17d78400

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->i:J

    .line 71
    return-void
.end method


# virtual methods
.method public final touchDown(IIII)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    if-ge v0, v2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    aput p1, v0, v1

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    aput p2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    aput p3, v0, v1

    .line 80
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    .line 81
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    if-ne v0, v2, :cond_1

    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v1, v1, v5

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v2, v2, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v3, v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v4, v4, v6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/d/f;->a(FFFF)V

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->f:Lcom/nianticproject/ingress/common/ui/d/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/d/f;->b()F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/d/f;->c()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/d/b;->a(FF)Z

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v1, v1, v6

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->g:I

    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v1, v1, v6

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->h:I

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->f:Lcom/nianticproject/ingress/common/ui/d/b;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->h:I

    int-to-float v2, v2

    invoke-interface {v0, v1, v2, v7, v7}, Lcom/nianticproject/ingress/common/ui/d/b;->pan(FFFF)Z

    .line 89
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(IIII)Z

    move-result v0

    return v0
.end method

.method public final touchDragged(III)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    aget v0, v0, v5

    if-ne p3, v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aput p1, v0, v5

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aput p2, v0, v5

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v1, v1, v5

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v2, v2, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v3, v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v4, v4, v6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/d/f;->b(FFFF)V

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->f:Lcom/nianticproject/ingress/common/ui/d/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/d/f;->b()F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/d/f;->c()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/d/b;->a(FF)Z

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v1, v1, v6

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 109
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v2, v2, v6

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 110
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->f:Lcom/nianticproject/ingress/common/ui/d/b;

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/d/a;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nianticproject/ingress/common/ui/d/a;->h:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nianticproject/ingress/common/ui/d/a;->g:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/d/a;->h:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/nianticproject/ingress/common/ui/d/b;->pan(FFFF)Z

    .line 112
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->g:I

    .line 113
    iput v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->h:I

    .line 115
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(III)Z

    move-result v0

    return v0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    aget v0, v0, v6

    if-ne p3, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aput p1, v0, v6

    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aput p2, v0, v6

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v1, v1, v5

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v2, v2, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v3, v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v4, v4, v6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/d/f;->b(FFFF)V

    goto :goto_0
.end method

.method public final touchUp(IIII)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/d/a;->k:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->j:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/ui/d/a;->i:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->l:I

    :goto_0
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->j:J

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->f:Lcom/nianticproject/ingress/common/ui/d/b;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->l:I

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->k:I

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/d/b;->a(II)Z

    .line 122
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    aget v0, v0, v6

    if-eq p3, v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    aget v0, v0, v7

    if-ne p3, v0, :cond_4

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    aget v0, v0, v6

    if-ne p3, v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    int-to-float v1, p1

    int-to-float v2, p2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v3, v3, v7

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v4, v4, v7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/d/f;->b(FFFF)V

    .line 129
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/d/f;->a()V

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->f:Lcom/nianticproject/ingress/common/ui/d/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/d/f;->b()F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/d/f;->c()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/d/b;->a(FF)Z

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    aget v0, v0, v6

    if-ne p3, v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v1, v1, v7

    aput v1, v0, v6

    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v1, v1, v7

    aput v1, v0, v6

    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    aget v1, v1, v7

    aput v1, v0, v6

    .line 140
    :cond_3
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->f:Lcom/nianticproject/ingress/common/ui/d/b;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->h:I

    int-to-float v2, v2

    invoke-interface {v0, v1, v2, v8, v8}, Lcom/nianticproject/ingress/common/ui/d/b;->pan(FFFF)Z

    .line 149
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(IIII)Z

    move-result v0

    return v0

    .line 120
    :cond_5
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    iput v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->k:I

    iput v7, p0, Lcom/nianticproject/ingress/common/ui/d/a;->l:I

    goto/16 :goto_0

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->b:[I

    aget v0, v0, v7

    if-ne p3, v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/a;->a:Lcom/nianticproject/ingress/common/ui/d/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/d/a;->c:[I

    aget v1, v1, v6

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/d/a;->d:[I

    aget v2, v2, v6

    int-to-float v2, v2

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/d/f;->b(FFFF)V

    goto :goto_1

    .line 147
    :cond_7
    iput v6, p0, Lcom/nianticproject/ingress/common/ui/d/a;->e:I

    goto :goto_2
.end method
