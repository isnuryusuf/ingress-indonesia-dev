.class final Lcom/nianticproject/ingress/common/scanner/visuals/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/be;

.field private b:Lcom/nianticproject/ingress/common/scanner/eo;

.field private c:I

.field private d:F

.field private e:J

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/be;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a:Lcom/nianticproject/ingress/common/scanner/visuals/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->l:I

    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->b:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->g:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->h:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)F
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->g:F

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)F
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->f()F

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)F
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->h:F

    return v0
.end method

.method private f()F
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f40

    .line 231
    const/high16 v1, 0x4300

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x3e80

    div-float/2addr v0, v2

    sub-float v0, v3, v0

    :goto_0
    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    goto :goto_0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)I
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->c:I

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)F
    .locals 1
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->d:F

    return v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/scanner/eo;IF)Lcom/nianticproject/ingress/common/scanner/visuals/bh;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->f:Z

    .line 125
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->g:F

    .line 126
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->h:F

    .line 127
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    .line 128
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    .line 129
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->k:Z

    .line 130
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->l:I

    .line 133
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->b:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 134
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->c:I

    .line 135
    invoke-static {p3}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    .line 136
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->d:F

    .line 137
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/eo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->e:J

    .line 139
    return-object p0
.end method

.method final a(F)Lcom/nianticproject/ingress/common/scanner/visuals/bi;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a:Lcom/nianticproject/ingress/common/scanner/visuals/be;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(Lcom/nianticproject/ingress/common/scanner/visuals/be;)La/a/a/a/b/bl;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->e:J

    invoke-virtual {v0, v1, v2}, La/a/a/a/b/bl;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 154
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 155
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    .line 158
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->l:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->f()F

    move-result v2

    aput v2, v0, v1

    .line 161
    :cond_0
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->k:Z

    if-eqz v1, :cond_3

    .line 163
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    .line 177
    :cond_1
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->l:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->f()F

    move-result v2

    aput v2, v0, v1

    .line 183
    :cond_2
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    .line 185
    :goto_0
    if-nez v0, :cond_5

    .line 186
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bi;->c:Lcom/nianticproject/ingress/common/scanner/visuals/bi;

    .line 189
    :goto_1
    return-object v0

    .line 165
    :cond_3
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->k:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    .line 169
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 171
    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->j:F

    .line 172
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->l:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->f()F

    move-result v2

    aput v2, v0, v1

    .line 173
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bi;->b:Lcom/nianticproject/ingress/common/scanner/visuals/bi;

    goto :goto_1

    .line 183
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :cond_5
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bi;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bi;

    goto :goto_1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->b:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 145
    return-void
.end method

.method public final b()F
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    const/high16 v1, 0x3f80

    div-float/2addr v0, v1

    return v0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 200
    const v0, 0x3a83126f

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    .line 201
    return-void
.end method

.method final d()Z
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->k:Z

    .line 212
    return-void
.end method
