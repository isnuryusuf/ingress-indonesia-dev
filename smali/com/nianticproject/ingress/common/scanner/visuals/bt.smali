.class public final Lcom/nianticproject/ingress/common/scanner/visuals/bt;
.super Lcom/nianticproject/ingress/common/j/q;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field public static final e:Lcom/nianticproject/ingress/common/j/ad;

.field private static final f:Lcom/nianticproject/ingress/common/j/ad;


# instance fields
.field private A:F

.field private B:Z

.field private final C:Lcom/nianticproject/ingress/common/scanner/eo;

.field private final D:Lcom/nianticproject/ingress/common/scanner/fr;

.field private final E:Lcom/nianticproject/ingress/common/model/l;

.field private final F:[Lcom/nianticproject/ingress/common/scanner/visuals/cb;

.field private final g:Lcom/badlogic/gdx/math/Matrix4;

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bz;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/nianticproject/ingress/common/j/ai;

.field private final j:Lcom/nianticproject/ingress/common/j/ai;

.field private final k:Lcom/nianticproject/ingress/common/j/o;

.field private final l:Lcom/nianticproject/ingress/common/model/k;

.field private final m:Lcom/nianticproject/ingress/common/scanner/k;

.field private final n:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final o:Lcom/nianticproject/ingress/common/c/an;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/nianticproject/ingress/common/scanner/visuals/ca;

.field private r:F

.field private s:F

.field private t:F

.field private u:Lcom/badlogic/gdx/graphics/Color;

.field private v:Lcom/badlogic/gdx/graphics/Color;

.field private w:Z

.field private x:F

.field private y:Lcom/badlogic/gdx/math/Rectangle;

.field private z:Lcom/nianticproject/ingress/common/scanner/visuals/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bu;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bu;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->e:Lcom/nianticproject/ingress/common/j/ad;

    .line 92
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bv;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bv;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->f:Lcom/nianticproject/ingress/common/j/ad;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 294
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/q;-><init>()V

    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->g:Lcom/badlogic/gdx/math/Matrix4;

    .line 101
    invoke-static {}, Lcom/google/a/c/eq;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->h:Ljava/util/LinkedList;

    .line 108
    new-instance v0, Lcom/nianticproject/ingress/common/c/an;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/an;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->o:Lcom/nianticproject/ingress/common/c/an;

    .line 109
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->p:Ljava/util/List;

    .line 132
    iput-boolean v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->w:Z

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->x:F

    .line 135
    iput-object v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->z:Lcom/nianticproject/ingress/common/scanner/visuals/cc;

    .line 137
    iput-boolean v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->B:Z

    .line 140
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bw;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bw;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->C:Lcom/nianticproject/ingress/common/scanner/eo;

    .line 175
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bx;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bx;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->D:Lcom/nianticproject/ingress/common/scanner/fr;

    .line 265
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/by;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/by;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->E:Lcom/nianticproject/ingress/common/model/l;

    .line 533
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    const v2, 0x3cf5c28f

    const/16 v3, 0xc8

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cb;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;FIB)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    const v2, 0x3d4ccccd

    const/16 v3, 0x1f4

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cb;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;FIB)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    const v3, 0x3dcccccd

    const/16 v4, 0x2bc

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cb;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;FIB)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    const/high16 v3, 0x3e80

    const/16 v4, 0x3e8

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cb;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;FIB)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    const/high16 v3, 0x3f00

    const/16 v4, 0x5dc

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cb;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;FIB)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    const/16 v3, 0x7d0

    invoke-direct {v2, p0, v6, v3, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cb;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;FIB)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->F:[Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    .line 295
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->n:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 296
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->l:Lcom/nianticproject/ingress/common/model/k;

    .line 297
    iput v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->t:F

    .line 298
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->m:Lcom/nianticproject/ingress/common/scanner/k;

    .line 299
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->L:Lcom/nianticproject/ingress/common/j/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->i:Lcom/nianticproject/ingress/common/j/ai;

    .line 300
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->M:Lcom/nianticproject/ingress/common/j/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->j:Lcom/nianticproject/ingress/common/j/ai;

    .line 301
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cd;

    invoke-direct {v0, p0, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/cd;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->k:Lcom/nianticproject/ingress/common/j/o;

    .line 303
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->k:Lcom/nianticproject/ingress/common/j/o;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 304
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cc;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cc;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->z:Lcom/nianticproject/ingress/common/scanner/visuals/cc;

    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->z:Lcom/nianticproject/ingress/common/scanner/visuals/cc;

    invoke-virtual {p3, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->E:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {p2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/nianticproject/ingress/common/model/l;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V

    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->E:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 310
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->D:Lcom/nianticproject/ingress/common/scanner/fr;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/nianticproject/ingress/common/scanner/fr;)V

    .line 311
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->x:F

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->u:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/scanner/fp;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->n:Lcom/nianticproject/ingress/common/scanner/fp;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/bt;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->v:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/scanner/k;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->m:Lcom/nianticproject/ingress/common/scanner/k;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->f()V

    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->y:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method static synthetic e()Lcom/nianticproject/ingress/common/j/ad;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->f:Lcom/nianticproject/ingress/common/j/ad;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->l:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->B:Z

    .line 428
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->g:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->C:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/scanner/eo;->a(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->s:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->t:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->t:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->t:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-super {p0, v0}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 429
    return-void
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->B:Z

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->v:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)F
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->A:F

    return v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->w:Z

    return v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)F
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->x:F

    return v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->w:Z

    return v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/j/ai;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->i:Lcom/nianticproject/ingress/common/j/ai;

    return-object v0
.end method

.method static synthetic n(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)F
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->t:F

    return v0
.end method

.method static synthetic o(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/nianticproject/ingress/common/j/ai;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->j:Lcom/nianticproject/ingress/common/j/ai;

    return-object v0
.end method

.method static synthetic p(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->u:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;
    .locals 1
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->n:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    :try_start_0
    const-string/jumbo v0, "PlayerVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;

    .line 403
    invoke-virtual {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 407
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 409
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->i:Lcom/nianticproject/ingress/common/j/ai;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->t:F

    invoke-virtual {v0, p2, p1, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->y:Lcom/badlogic/gdx/math/Rectangle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 412
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 319
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->r:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->l:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->l:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->r:F

    .line 321
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->r:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->s:F

    .line 322
    iput-boolean v8, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->B:Z

    .line 324
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->B:Z

    if-eqz v0, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->f()V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 329
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bz;

    .line 331
    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bz;->a(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->D()Lcom/google/a/d/u;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->q:Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    if-nez v1, :cond_8

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->s:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->A:F

    invoke-direct {v1, v0, v2, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/ca;-><init>(Lcom/google/a/d/u;FF)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->q:Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    .line 337
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nianticproject/ingress/common/scanner/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->a()J

    move-result-wide v3

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->z:Lcom/nianticproject/ingress/common/scanner/visuals/cc;

    invoke-virtual {v1, v3, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/cc;->a(J)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->l:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v5

    add-long/2addr v5, v3

    div-long/2addr v3, v5

    long-to-float v3, v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->F:[Lcom/nianticproject/ingress/common/scanner/visuals/cb;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_6

    aget-object v6, v4, v1

    iget v7, v6, Lcom/nianticproject/ingress/common/scanner/visuals/cb;->a:F

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_a

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget v3, v6, Lcom/nianticproject/ingress/common/scanner/visuals/cb;->b:I

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Input;->vibrate(I)V

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->x:F

    iget v3, v6, Lcom/nianticproject/ingress/common/scanner/visuals/cb;->c:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->x:F

    iput-boolean v8, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->w:Z

    :cond_6
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/ab;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->c()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->a(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->C:Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-direct {v1, v0, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/ab;-><init>(Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/eo;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/j/o;)V

    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->o:Lcom/nianticproject/ingress/common/c/an;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/an;->a()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 335
    :cond_8
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->A:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->q:Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->a(Lcom/nianticproject/ingress/common/scanner/visuals/ca;)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3e4ccccd

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->q:Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->b(Lcom/nianticproject/ingress/common/scanner/visuals/ca;)Lcom/google/a/d/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v1

    const-wide/high16 v3, 0x400c

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->h:Ljava/util/LinkedList;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/bz;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->n:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->q:Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->b(Lcom/nianticproject/ingress/common/scanner/visuals/ca;)Lcom/google/a/d/u;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->q:Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/scanner/visuals/ca;->c(Lcom/nianticproject/ingress/common/scanner/visuals/ca;)F

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/bz;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bt;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/google/a/d/u;F)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_9

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_9
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->s:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->A:F

    invoke-direct {v1, v0, v2, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/ca;-><init>(Lcom/google/a/d/u;FF)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->q:Lcom/nianticproject/ingress/common/scanner/visuals/ca;

    goto/16 :goto_1

    .line 337
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 338
    :cond_b
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->A:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->A:F

    .line 339
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/j/q;->a(F)Z

    move-result v0

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->s:F

    return v0
.end method

.method public final d()Lcom/nianticproject/ingress/common/scanner/eo;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->C:Lcom/nianticproject/ingress/common/scanner/eo;

    return-object v0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/q;->dispose()V

    .line 439
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->l:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->E:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 440
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->n:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->D:Lcom/nianticproject/ingress/common/scanner/fr;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/fp;->b(Lcom/nianticproject/ingress/common/scanner/fr;)V

    .line 441
    return-void
.end method
