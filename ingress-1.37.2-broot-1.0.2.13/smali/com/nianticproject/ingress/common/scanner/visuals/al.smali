.class public final Lcom/nianticproject/ingress/common/scanner/visuals/al;
.super Lcom/nianticproject/ingress/common/j/q;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field public static e:Z

.field private static final f:F


# instance fields
.field private g:Lcom/nianticproject/ingress/common/scanner/k;

.field private final h:Lcom/nianticproject/ingress/common/gameentity/e;

.field private final i:Lcom/nianticproject/ingress/common/scanner/eo;

.field private final j:Lcom/nianticproject/ingress/common/scanner/eo;

.field private k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

.field private l:F

.field private m:Lcom/badlogic/gdx/math/Matrix4;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Lcom/badlogic/gdx/math/Vector3;

.field private s:Lcom/badlogic/gdx/math/Vector3;

.field private t:Lcom/badlogic/gdx/math/Vector3;

.field private u:F

.field private v:Z

.field private w:Lcom/nianticproject/ingress/common/scanner/visuals/b/l;

.field private x:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->e:Z

    .line 43
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;-><init>()V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d()F

    move-result v0

    sput v0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->f:F

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/gameentity/e;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/eo;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/q;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    .line 105
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->l:F

    .line 106
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->m:Lcom/badlogic/gdx/math/Matrix4;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->r:Lcom/badlogic/gdx/math/Vector3;

    .line 112
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->s:Lcom/badlogic/gdx/math/Vector3;

    .line 113
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->t:Lcom/badlogic/gdx/math/Vector3;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->v:Z

    .line 117
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->x:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    .line 119
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->a()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->y:F

    .line 129
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->q:F

    .line 130
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->g:Lcom/nianticproject/ingress/common/scanner/k;

    .line 131
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/gameentity/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->h:Lcom/nianticproject/ingress/common/gameentity/e;

    .line 132
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->i:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 133
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->j:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 134
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/al;->e()V

    .line 135
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/scanner/visuals/an;Lcom/nianticproject/ingress/common/scanner/visuals/an;)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->b()F

    move-result v1

    .line 181
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->b()F

    move-result v0

    .line 182
    :goto_0
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->l:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 183
    const/4 v0, 0x0

    .line 188
    :goto_1
    return v0

    .line 181
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->y:F

    goto :goto_0

    .line 185
    :cond_1
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->l:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 186
    const/high16 v0, 0x3f80

    goto :goto_1

    .line 188
    :cond_2
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->l:F

    sub-float/2addr v2, v1

    sub-float/2addr v0, v1

    div-float v0, v2, v0

    goto :goto_1
.end method

.method public static c()F
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->a()F

    move-result v0

    return v0
.end method

.method static synthetic d()F
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->f:F

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    if-nez v1, :cond_1

    .line 143
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/an;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/am;->a:[I

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_1
    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 173
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 146
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/an;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 147
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/an;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    goto :goto_0

    .line 149
    :cond_2
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    goto :goto_0

    .line 157
    :pswitch_0
    new-instance v0, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    new-array v1, v4, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->H:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bq;->a:Lcom/nianticproject/ingress/common/c/bq;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bq;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    goto :goto_1

    .line 163
    :pswitch_1
    new-instance v0, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    new-array v1, v4, [Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->I:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bq;->a:Lcom/nianticproject/ingress/common/c/bq;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bq;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    goto :goto_1

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 258
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->i:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->j:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->s:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->n:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 263
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->w:Lcom/nianticproject/ingress/common/scanner/visuals/b/l;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->t:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v3, 0x0

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 265
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->w:Lcom/nianticproject/ingress/common/scanner/visuals/b/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->s:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->m:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->r:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->p:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->q:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->o:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->o:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->o:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 272
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->h:Lcom/nianticproject/ingress/common/gameentity/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, p2}, Lcom/nianticproject/ingress/common/gameentity/e;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;)V

    .line 273
    sget-object v0, Lcom/nianticproject/ingress/common/gameentity/g;->c:Lcom/nianticproject/ingress/common/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->h:Lcom/nianticproject/ingress/common/gameentity/e;

    invoke-virtual {p3, v0, v1}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 274
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x4240

    const-wide/high16 v5, 0x3fe0

    const/4 v0, 0x0

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 193
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/j/q;->a(F)Z

    .line 194
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    if-nez v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/am;->a:[I

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/an;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 236
    :cond_2
    :goto_1
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->l:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->l:F

    .line 239
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->u:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->u:F

    .line 240
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->u:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    iget v2, v2, Lcom/nianticproject/ingress/common/scanner/visuals/an;->e:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 241
    iput v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->u:F

    .line 242
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/al;->e()V

    .line 246
    :cond_3
    sget-boolean v1, Lcom/nianticproject/ingress/common/scanner/visuals/al;->e:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    if-nez v1, :cond_4

    .line 247
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/al;->e()V

    .line 248
    iput v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->l:F

    .line 251
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->k:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :pswitch_0
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/an;->a:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/an;->b:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    invoke-direct {p0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/al;->a(Lcom/nianticproject/ingress/common/scanner/visuals/an;Lcom/nianticproject/ingress/common/scanner/visuals/an;)F

    move-result v1

    .line 202
    sub-float v1, v8, v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v8, v1

    .line 203
    mul-float v2, v1, v9

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->n:F

    .line 204
    const/high16 v2, 0x4158

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->o:F

    .line 205
    iput v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->p:F

    .line 206
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/an;->a:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/an;->c:Lcom/nianticproject/ingress/common/scanner/visuals/an;

    invoke-direct {p0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/al;->a(Lcom/nianticproject/ingress/common/scanner/visuals/an;Lcom/nianticproject/ingress/common/scanner/visuals/an;)F

    move-result v1

    .line 207
    float-to-double v2, v1

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 208
    const/high16 v3, 0x44af

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->p:F

    .line 209
    float-to-double v3, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 210
    mul-float/2addr v2, v8

    .line 211
    const v3, 0x3e19999a

    mul-float/2addr v1, v3

    .line 212
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->r:Lcom/badlogic/gdx/math/Vector3;

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float/2addr v1, v2

    invoke-virtual {v3, v4, v8, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    goto :goto_1

    .line 217
    :pswitch_1
    iput v9, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->n:F

    .line 218
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->v:Z

    .line 219
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->p:F

    const/high16 v2, 0x4170

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->p:F

    goto/16 :goto_1

    .line 223
    :pswitch_2
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->v:Z

    if-nez v1, :cond_5

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->v:Z

    .line 225
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->x:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/t;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->w:Lcom/nianticproject/ingress/common/scanner/visuals/b/l;

    .line 226
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->g:Lcom/nianticproject/ingress/common/scanner/k;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->w:Lcom/nianticproject/ingress/common/scanner/visuals/b/l;

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/b;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/j/o;)V

    .line 228
    :cond_5
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->u:F

    const v2, 0x3ecccccd

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->x:Lcom/nianticproject/ingress/common/scanner/visuals/b/t;

    iget v4, v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->h:F

    add-float/2addr v4, v7

    iget v3, v3, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d:F

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 230
    iput v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/al;->o:F

    goto/16 :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method
