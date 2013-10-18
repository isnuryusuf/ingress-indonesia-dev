.class public final Lcom/nianticproject/ingress/common/scanner/fu;
.super Lcom/nianticproject/ingress/common/scanner/fg;
.source "SourceFile"


# static fields
.field private static final y:Lcom/nianticproject/ingress/common/j/ad;


# instance fields
.field private i:Lcom/badlogic/gdx/graphics/Color;

.field private j:Lcom/badlogic/gdx/graphics/Color;

.field private k:Lcom/badlogic/gdx/graphics/Color;

.field private l:Lcom/nianticproject/ingress/shared/ai;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

.field private v:Z

.field private w:Z

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/fv;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/fv;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/fu;->y:Lcom/nianticproject/ingress/common/j/ad;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/eo;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/fg;-><init>(Lcom/nianticproject/ingress/common/scanner/eo;)V

    .line 48
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->c:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->i:Lcom/badlogic/gdx/graphics/Color;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->k:Lcom/badlogic/gdx/graphics/Color;

    .line 53
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->m:F

    .line 54
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->n:F

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->o:F

    .line 56
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    .line 57
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->q:F

    .line 58
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    .line 59
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    .line 60
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->t:F

    .line 62
    iput-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/fu;->v:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->w:Z

    .line 64
    iput-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/fu;->x:Z

    .line 68
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/fw;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/fw;-><init>(Lcom/nianticproject/ingress/common/scanner/fu;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/fu;->a(Lcom/nianticproject/ingress/common/scanner/fj;)V

    .line 69
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/fu;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->i:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/fu;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->o:F

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/fu;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->m:F

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/fu;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->v:Z

    return v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/fu;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->x:Z

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/fu;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->j:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/fu;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    return v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/scanner/fu;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    return v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/scanner/fu;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->w:Z

    return v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/scanner/fu;)F
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->q:F

    return v0
.end method

.method static synthetic q()Lcom/nianticproject/ingress/common/j/ad;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/fu;->y:Lcom/nianticproject/ingress/common/j/ad;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/scanner/fu;)F
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 143
    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a(Z)V

    .line 148
    if-eqz p1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a(Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 153
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;-><init>()V

    .line 154
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;->d()F

    move-result v0

    add-float/2addr v0, v2

    .line 164
    :goto_0
    if-eqz p1, :cond_0

    .line 166
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    iput v2, p1, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    .line 167
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->q:F

    iput v2, p1, Lcom/nianticproject/ingress/common/scanner/fu;->q:F

    .line 168
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    iput v2, p1, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    .line 169
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    iput v2, p1, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    .line 170
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->t:F

    iput v2, p1, Lcom/nianticproject/ingress/common/scanner/fu;->t:F

    .line 171
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->w:Z

    iput-boolean v2, p1, Lcom/nianticproject/ingress/common/scanner/fu;->w:Z

    .line 172
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fu;->g()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, p1, Lcom/nianticproject/ingress/common/scanner/fu;->j:Lcom/badlogic/gdx/graphics/Color;

    .line 176
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    .line 177
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    .line 178
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->q:F

    .line 179
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    .line 180
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    .line 181
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->t:F

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->x:Z

    .line 184
    return v0

    .line 157
    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;-><init>()V

    .line 158
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->i:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 159
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;)V

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->g()F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(F)Z
    .locals 5
    .parameter

    .prologue
    .line 215
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->o:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->o:F

    .line 217
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->t:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 218
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fu;->p()Z

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    if-eqz v2, :cond_4

    .line 222
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->f()F

    move-result v2

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    .line 227
    :goto_1
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->f:Lcom/nianticproject/ingress/gameentity/f;

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v2

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLinkedPortalGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;-><init>()V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/fu;->i:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;->b:Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-direct {v4, v3, p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/t;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/scanner/ej;)V

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    invoke-direct {v0, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/b;)V

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/j/o;)V

    .line 230
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fu;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->m()Lcom/nianticproject/ingress/common/scanner/visuals/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cn;->c()V

    .line 238
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 239
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->n:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->n:F

    .line 243
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/fg;->a(F)Z

    move-result v0

    return v0

    .line 218
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_4
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    goto :goto_1

    .line 240
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->m:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 241
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->m:F

    const/high16 v1, 0x4000

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->m:F

    goto :goto_2
.end method

.method public final b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->w:Z

    .line 119
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;-><init>(F)V

    .line 121
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;-><init>()V

    .line 122
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->i:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 123
    const/4 v2, 0x0

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    .line 125
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->c()F

    move-result v2

    const v3, 0x3d4ccccd

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->q:F

    .line 126
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->q:F

    const v3, 0x3dcccccd

    add-float/2addr v2, v3

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    .line 127
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    const v3, 0x3e99999a

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/o;->d()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    .line 128
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->s:F

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->c()F

    move-result v1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->t:F

    .line 130
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-direct {v1, v0, p0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/t;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/scanner/ej;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/t;->a(Z)V

    .line 133
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->u:Lcom/nianticproject/ingress/common/scanner/visuals/t;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/b;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/j/o;)V

    .line 135
    return-void
.end method

.method public final c(F)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->n:F

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->m:F

    .line 253
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->f:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "Resonator"

    return-object v0
.end method

.method public final k()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    .line 83
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->j:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->q:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->r:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/y;->a(FFF)F

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->k:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fu;->j:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fu;->g()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/nianticproject/ingress/common/w/i;->a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->k:Lcom/badlogic/gdx/graphics/Color;

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fu;->g()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fu;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 79
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ea;->H:[Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLevel()I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 101
    :try_start_0
    const-string/jumbo v0, "ScannerResonatorEntity.processGameEntity"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fu;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->l:Lcom/nianticproject/ingress/shared/ai;

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->l:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/ea;->c(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->i:Lcom/badlogic/gdx/graphics/Color;

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->f:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/h/c;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->v:Z

    .line 108
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/fg;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->w:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->v:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fu;->p:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fu;->t:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
