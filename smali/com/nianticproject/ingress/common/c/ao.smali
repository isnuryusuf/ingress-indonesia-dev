.class public final Lcom/nianticproject/ingress/common/c/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/t/b;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/av;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/au;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z

.field private f:Lcom/nianticproject/ingress/common/ad;

.field private g:Lcom/nianticproject/ingress/common/ad;

.field private h:F

.field private i:F

.field private j:Lcom/nianticproject/ingress/common/model/GameState;

.field private final k:Lcom/nianticproject/ingress/common/model/k;

.field private final l:Lcom/nianticproject/ingress/common/scanner/ed;

.field private final m:Lcom/nianticproject/ingress/common/c/aw;

.field private final n:Lcom/nianticproject/ingress/common/model/l;

.field private final o:Lcom/nianticproject/ingress/common/g/w;

.field private final p:Lcom/nianticproject/ingress/common/scanner/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "Update Scanner Audio"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/c/ao;->a:Lcom/nianticproject/ingress/common/t/b;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/g;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->b:Ljava/util/List;

    .line 241
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->c:Ljava/util/List;

    .line 243
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/c/ao;->e:Z

    .line 246
    iput-object v2, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    .line 249
    iput-object v2, p0, Lcom/nianticproject/ingress/common/c/ao;->g:Lcom/nianticproject/ingress/common/ad;

    .line 251
    const/4 v1, 0x0

    iput v1, p0, Lcom/nianticproject/ingress/common/c/ao;->h:F

    .line 254
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    .line 260
    new-instance v1, Lcom/nianticproject/ingress/common/c/ap;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/c/ap;-><init>(Lcom/nianticproject/ingress/common/c/ao;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->n:Lcom/nianticproject/ingress/common/model/l;

    .line 278
    new-instance v1, Lcom/nianticproject/ingress/common/c/aq;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/c/aq;-><init>(Lcom/nianticproject/ingress/common/c/ao;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->o:Lcom/nianticproject/ingress/common/g/w;

    .line 285
    new-instance v1, Lcom/nianticproject/ingress/common/c/ar;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/c/ar;-><init>(Lcom/nianticproject/ingress/common/c/ao;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->p:Lcom/nianticproject/ingress/common/scanner/h;

    .line 297
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/ao;->k:Lcom/nianticproject/ingress/common/model/k;

    .line 298
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/ao;->l:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 299
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->k:Lcom/nianticproject/ingress/common/model/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/ao;->n:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 302
    :goto_0
    if-gtz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->b:Ljava/util/List;

    new-instance v2, Lcom/nianticproject/ingress/common/c/av;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/c/av;-><init>(Lcom/nianticproject/ingress/common/c/ao;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/c/aw;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/common/c/aw;-><init>(Lcom/nianticproject/ingress/common/scanner/ed;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->m:Lcom/nianticproject/ingress/common/c/aw;

    .line 310
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->o:Lcom/nianticproject/ingress/common/g/w;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/g/p;->a(Lcom/nianticproject/ingress/common/g/w;)V

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->p:Lcom/nianticproject/ingress/common/scanner/h;

    invoke-interface {p3, v0}, Lcom/nianticproject/ingress/common/scanner/g;->a(Lcom/nianticproject/ingress/common/scanner/h;)V

    .line 314
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/c/ao;Lcom/nianticproject/ingress/common/ad;)Lcom/nianticproject/ingress/common/ad;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/c/ao;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->k:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/c/ao;)Lcom/nianticproject/ingress/common/scanner/ed;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->l:Lcom/nianticproject/ingress/common/scanner/ed;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/c/ao;)F
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    return v0
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->g:Lcom/nianticproject/ingress/common/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->g:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v0

    const-wide/high16 v3, 0x4010

    cmpl-double v0, v0, v3

    if-lez v0, :cond_1

    .line 411
    :cond_0
    iput v8, p0, Lcom/nianticproject/ingress/common/c/ao;->h:F

    .line 412
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->g:Lcom/nianticproject/ingress/common/ad;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->m:Lcom/nianticproject/ingress/common/c/aw;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/aw;->a()V

    move v1, v2

    :goto_0
    if-gtz v1, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/av;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/c/av;->a(Lcom/google/a/d/u;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->j:Lcom/nianticproject/ingress/common/model/GameState;

    if-nez v0, :cond_4

    .line 416
    :cond_3
    return-void

    .line 414
    :cond_4
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/c/ao;->d:J

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/ao;->j:Lcom/nianticproject/ingress/common/model/GameState;

    iget-wide v3, v3, Lcom/nianticproject/ingress/common/model/GameState;->timestamp:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->j:Lcom/nianticproject/ingress/common/model/GameState;

    iget-wide v0, v0, Lcom/nianticproject/ingress/common/model/GameState;->timestamp:J

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/c/ao;->d:J

    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->j:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eqz v1, :cond_5

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/nianticproject/ingress/common/c/ao;->c:Ljava/util/List;

    new-instance v5, Lcom/nianticproject/ingress/common/c/au;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v6

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v1

    const-class v7, Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    invoke-interface {v0, v7}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    invoke-direct {v5, v6, v1, v0}, Lcom/nianticproject/ingress/common/c/au;-><init>(Lcom/google/a/d/u;Lcom/google/a/d/u;Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/au;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/c/au;->a(Lcom/google/a/d/u;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->l:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/av;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->l:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/ed;->e()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/av;->a(Lcom/google/a/d/u;)V

    :cond_8
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->c:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/common/c/as;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/c/as;-><init>(Lcom/nianticproject/ingress/common/c/ao;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/au;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->l:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v1

    if-nez v1, :cond_9

    if-gtz v2, :cond_9

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/c/av;

    iget-object v4, v0, Lcom/nianticproject/ingress/common/c/au;->a:Lcom/google/a/d/u;

    invoke-virtual {v1, v4}, Lcom/nianticproject/ingress/common/c/av;->a(Lcom/google/a/d/u;)V

    :cond_9
    iget-wide v4, v0, Lcom/nianticproject/ingress/common/c/au;->c:D

    double-to-float v1, v4

    const v4, -0x43b33333

    mul-float/2addr v1, v4

    const/high16 v4, 0x3fa0

    add-float/2addr v1, v4

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v1

    iget-object v0, v0, Lcom/nianticproject/ingress/common/c/au;->b:Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/c/ao;->m:Lcom/nianticproject/ingress/common/c/aw;

    invoke-virtual {v4, v0, v1}, Lcom/nianticproject/ingress/common/c/aw;->a(Lcom/nianticproject/ingress/shared/ai;F)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/c/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ao;->c()V

    return-void
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/c/ao;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/c/ao;->e:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->k:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->n:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 321
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/ao;->o:Lcom/nianticproject/ingress/common/g/w;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/g/p;->b(Lcom/nianticproject/ingress/common/g/w;)V

    .line 322
    return-void
.end method

.method public final a(F)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x3e19999a

    .line 327
    sget-object v0, Lcom/nianticproject/ingress/common/c/ao;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 333
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->l:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/av;

    .line 335
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/ao;->f:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v0, v2, p1}, Lcom/nianticproject/ingress/common/c/av;->a(Lcom/nianticproject/ingress/common/ad;F)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/c/ao;->h:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/nianticproject/ingress/common/c/ao;->h:F

    iget v1, p0, Lcom/nianticproject/ingress/common/c/ao;->h:F

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    const v2, 0x3d4ccccd

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    iget v0, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    .line 339
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->m:Lcom/nianticproject/ingress/common/c/aw;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/c/aw;->a(F)V

    .line 341
    sget-object v0, Lcom/nianticproject/ingress/common/c/ao;->a:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 342
    return-void

    .line 338
    :cond_2
    iget v1, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    iget v0, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/ao;->i:F

    goto :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/ao;->j:Lcom/nianticproject/ingress/common/model/GameState;

    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->j:Lcom/nianticproject/ingress/common/model/GameState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->m:Lcom/nianticproject/ingress/common/c/aw;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/aw;->a()V

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/ao;->c()V

    .line 387
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/ao;->e:Z

    if-eqz v0, :cond_1

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/c/ao;->e:Z

    .line 389
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/c/ao;->d:J

    .line 391
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ao;->m:Lcom/nianticproject/ingress/common/c/aw;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/aw;->b()V

    .line 349
    return-void
.end method
