.class public Lcom/nianticproject/ingress/common/missions/bd;
.super Lcom/nianticproject/ingress/common/missions/a;
.source "SourceFile"


# static fields
.field private static final Q:Lcom/nianticproject/ingress/common/w/aa;

.field private static final R:Lcom/nianticproject/ingress/common/c/bs;

.field private static final S:Lcom/nianticproject/ingress/common/c/bs;

.field private static final T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final A:Lcom/nianticproject/ingress/common/w/d;

.field protected final B:Lcom/nianticproject/ingress/common/w/d;

.field protected final C:Lcom/nianticproject/ingress/common/w/d;

.field protected final D:Lcom/nianticproject/ingress/common/w/d;

.field protected final E:Lcom/nianticproject/ingress/common/missions/aq;

.field protected final F:Lcom/nianticproject/ingress/common/w/h;

.field protected final G:Lcom/nianticproject/ingress/common/w/h;

.field protected final H:Lcom/nianticproject/ingress/common/w/h;

.field protected final I:Lcom/nianticproject/ingress/common/w/h;

.field protected final J:Lcom/nianticproject/ingress/common/w/h;

.field protected final K:Lcom/nianticproject/ingress/common/w/h;

.field protected L:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/a/d/u;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field protected M:Lcom/google/a/c/hs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/hs",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field protected N:Lcom/google/a/d/u;

.field protected O:Lcom/nianticproject/ingress/gameentity/f;

.field protected final P:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field private final U:Lcom/nianticproject/ingress/common/scanner/f;

.field private final V:Lcom/nianticproject/ingress/common/missions/eg;

.field protected final y:Lcom/nianticproject/ingress/common/scanner/e;

.field protected final z:Lcom/nianticproject/ingress/common/w/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 70
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/missions/bd;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/bd;->Q:Lcom/nianticproject/ingress/common/w/aa;

    .line 94
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->X:Lcom/nianticproject/ingress/common/c/bs;

    sput-object v0, Lcom/nianticproject/ingress/common/missions/bd;->R:Lcom/nianticproject/ingress/common/c/bs;

    .line 95
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->V:Lcom/nianticproject/ingress/common/c/bs;

    sput-object v0, Lcom/nianticproject/ingress/common/missions/bd;->S:Lcom/nianticproject/ingress/common/c/bs;

    .line 105
    const-string/jumbo v0, "Hack Portal for key"

    const-string/jumbo v1, "Tap another Portal"

    const-string/jumbo v2, "Hack second Portal"

    const-string/jumbo v3, "Deploy all Resonators"

    const-string/jumbo v4, "Click on Portal and LINK"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/missions/bd;->T:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/e;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/nianticproject/ingress/common/missions/a;-><init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V

    .line 272
    new-instance v1, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v2, "portalSelectedEvent"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->z:Lcom/nianticproject/ingress/common/w/d;

    .line 273
    new-instance v1, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v2, "hackEvent"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->A:Lcom/nianticproject/ingress/common/w/d;

    .line 274
    new-instance v1, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v2, "waitForHackEvent"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->B:Lcom/nianticproject/ingress/common/w/d;

    .line 275
    new-instance v1, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v2, "resonateEvent"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->C:Lcom/nianticproject/ingress/common/w/d;

    .line 276
    new-instance v1, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v2, "linkEvent"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->D:Lcom/nianticproject/ingress/common/w/d;

    .line 281
    new-instance v1, Lcom/nianticproject/ingress/common/missions/aq;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->C:Lcom/nianticproject/ingress/common/w/d;

    const/16 v3, 0x8

    const/16 v4, 0x3e8

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/aq;-><init>(Lcom/nianticproject/ingress/common/missions/af;Lcom/nianticproject/ingress/common/w/d;II)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->E:Lcom/nianticproject/ingress/common/missions/aq;

    .line 289
    new-instance v1, Lcom/nianticproject/ingress/common/missions/be;

    const-string/jumbo v2, "hackFirstPortalState"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/missions/be;-><init>(Lcom/nianticproject/ingress/common/missions/bd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->F:Lcom/nianticproject/ingress/common/w/h;

    .line 319
    new-instance v1, Lcom/nianticproject/ingress/common/missions/bf;

    const-string/jumbo v2, "waitForFirstPortalHackState"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/missions/bf;-><init>(Lcom/nianticproject/ingress/common/missions/bd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->G:Lcom/nianticproject/ingress/common/w/h;

    .line 339
    new-instance v1, Lcom/nianticproject/ingress/common/missions/bg;

    const-string/jumbo v2, "selectSecondPortalState"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/missions/bg;-><init>(Lcom/nianticproject/ingress/common/missions/bd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->H:Lcom/nianticproject/ingress/common/w/h;

    .line 362
    new-instance v1, Lcom/nianticproject/ingress/common/missions/bh;

    const-string/jumbo v2, "hackSecondPortalState"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/missions/bh;-><init>(Lcom/nianticproject/ingress/common/missions/bd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->I:Lcom/nianticproject/ingress/common/w/h;

    .line 394
    new-instance v1, Lcom/nianticproject/ingress/common/missions/bi;

    const-string/jumbo v2, "resonateSecondPortalState"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/missions/bi;-><init>(Lcom/nianticproject/ingress/common/missions/bd;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->J:Lcom/nianticproject/ingress/common/w/h;

    .line 422
    new-instance v1, Lcom/nianticproject/ingress/common/missions/z;

    const-string/jumbo v2, "linkFirstToSecondState"

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/bd;->E:Lcom/nianticproject/ingress/common/missions/aq;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/nianticproject/ingress/common/missions/z;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;ILcom/nianticproject/ingress/common/missions/aq;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->K:Lcom/nianticproject/ingress/common/w/h;

    .line 426
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->L:Ljava/util/Map;

    .line 427
    invoke-static {}, Lcom/google/a/c/al;->i()Lcom/google/a/c/al;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->M:Lcom/google/a/c/hs;

    .line 431
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->P:Ljava/util/Set;

    .line 446
    new-instance v1, Lcom/nianticproject/ingress/common/missions/bk;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/bk;-><init>(Lcom/nianticproject/ingress/common/missions/bd;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->U:Lcom/nianticproject/ingress/common/scanner/f;

    .line 604
    new-instance v1, Lcom/nianticproject/ingress/common/missions/bm;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/bm;-><init>(Lcom/nianticproject/ingress/common/missions/bd;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->V:Lcom/nianticproject/ingress/common/missions/eg;

    .line 230
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->y:Lcom/nianticproject/ingress/common/scanner/e;

    .line 231
    const/high16 v1, 0x4348

    iput v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->a:F

    .line 232
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/bd;)V
    .locals 12
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 69
    move v9, v3

    :goto_0
    const/4 v0, 0x5

    if-ge v9, v0, :cond_0

    int-to-float v0, v9

    const/high16 v1, 0x43b4

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    float-to-double v4, v0

    const-wide v10, 0x4041800000000000L

    invoke-static {v1, v4, v5, v10, v11}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;DD)Lcom/google/a/d/u;

    move-result-object v1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->j:Lcom/nianticproject/ingress/common/g/ad;

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/bd;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v4}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v6

    move v4, v3

    move v5, v3

    move-object v8, v7

    invoke-interface/range {v0 .. v8}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->L:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/bd;)Lcom/nianticproject/ingress/common/scanner/f;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->U:Lcom/nianticproject/ingress/common/scanner/f;

    return-object v0
.end method

.method protected static b(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    new-instance v0, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimpleResource;

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    sget-object v3, Lcom/nianticproject/ingress/gameentity/components/l;->a:Lcom/nianticproject/ingress/gameentity/components/l;

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/gameentity/components/SimpleResource;-><init>(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/components/l;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Portal"

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;-><init>(Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v0

    .line 563
    return-object v0
.end method

.method static synthetic y()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/nianticproject/ingress/common/missions/bd;->Q:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-static {p1, p2, p3}, Lcom/nianticproject/ingress/common/missions/bd;->b(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->M:Lcom/google/a/c/hs;

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/a/c/hs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method protected b(Lcom/nianticproject/ingress/common/w/c;)V
    .locals 3
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->e:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->d:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->F:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->F:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->A:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->G:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 249
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->G:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->B:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->H:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->H:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->z:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->I:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->I:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->A:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->J:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 252
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->J:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->C:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->K:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->K:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->D:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->f:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 254
    return-void
.end method

.method protected e()Lcom/nianticproject/ingress/common/missions/aa;
    .locals 4

    .prologue
    .line 258
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aa;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/bd;->q()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "You are now ready to link two Portals.\n\nPortals can be hacked in order to obtain their Portal Keys. Once you have obtained a Portal Key, you can remotely link to it.\n\nSelect LINK to begin the linking process.  Eligible destination Portals will be indicated on the Scanner by a red highlight.\n\nA Portal not visible on the Scanner can be linked by selecting the Portal Key.\n\nHack a nearby Portal to obtain its Portal Key.  Then move within range of another Portal to initiate a Link.\n\n"

    sget-object v3, Lcom/nianticproject/ingress/common/missions/bd;->R:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/bs;)V

    return-object v0
.end method

.method protected f()Lcom/nianticproject/ingress/common/missions/aa;
    .locals 4

    .prologue
    .line 263
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aa;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/bd;->q()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Link successful. Excellent work. Higher level Resonators will increase Portal power. High level Portals can create links of distances up to hundreds of kilometers.\n\nLinks are powerful XM energy bands.\nLinks cannot intersect.\nLinks will fail if Resonators become depleted from decay or enemy attack.\n\n"

    sget-object v3, Lcom/nianticproject/ingress/common/missions/bd;->S:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/bs;)V

    return-object v0
.end method

.method public g()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->k:Lcom/nianticproject/ingress/common/model/m;

    const-wide/16 v1, 0x898

    sget-object v3, Lcom/nianticproject/ingress/common/model/z;->d:Lcom/nianticproject/ingress/common/model/z;

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/m;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 238
    return-void
.end method

.method protected i()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/w/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->F:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->G:Lcom/nianticproject/ingress/common/w/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->H:Lcom/nianticproject/ingress/common/w/h;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/bd;->I:Lcom/nianticproject/ingress/common/w/h;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/bd;->J:Lcom/nianticproject/ingress/common/w/h;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/bd;->K:Lcom/nianticproject/ingress/common/w/h;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/nianticproject/ingress/common/w/h;

    invoke-static/range {v0 .. v6}, Lcom/google/a/c/du;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Lcom/nianticproject/ingress/common/missions/ep;
    .locals 1

    .prologue
    .line 467
    new-instance v0, Lcom/nianticproject/ingress/common/missions/bl;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/bl;-><init>(Lcom/nianticproject/ingress/common/missions/bd;)V

    return-object v0
.end method

.method protected final k()Lcom/nianticproject/ingress/common/missions/el;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->E:Lcom/nianticproject/ingress/common/missions/aq;

    return-object v0
.end method

.method protected final n()Lcom/nianticproject/ingress/common/missions/es;
    .locals 2

    .prologue
    .line 588
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ej;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->P:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/missions/ej;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method protected final o()Lcom/nianticproject/ingress/common/missions/en;
    .locals 2

    .prologue
    .line 593
    new-instance v0, Lcom/nianticproject/ingress/common/missions/eh;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->j:Lcom/nianticproject/ingress/common/g/ad;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/missions/eh;-><init>(Lcom/nianticproject/ingress/common/g/ad;)V

    return-object v0
.end method

.method protected p()Lcom/nianticproject/ingress/common/missions/eq;
    .locals 4

    .prologue
    .line 598
    new-instance v0, Lcom/nianticproject/ingress/common/missions/ei;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->k:Lcom/nianticproject/ingress/common/model/m;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/bd;->V:Lcom/nianticproject/ingress/common/missions/eg;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/ei;-><init>(Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/missions/eg;)V

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string/jumbo v0, "Links"

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/nianticproject/ingress/common/missions/bd;->T:Ljava/util/List;

    return-object v0
.end method

.method protected final w()V
    .locals 9

    .prologue
    .line 516
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/m;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    .line 517
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/bd;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/bd;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v6}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nianticproject/ingress/common/missions/bd;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v7, v7, Lcom/nianticproject/ingress/common/missions/ac;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/missions/bd;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v8, v8, Lcom/nianticproject/ingress/common/missions/ac;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v8}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->c:Lcom/nianticproject/ingress/gameentity/f;

    .line 526
    return-void
.end method

.method protected final x()V
    .locals 4

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->e:Lcom/nianticproject/ingress/common/model/a/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->N:Lcom/google/a/d/u;

    invoke-virtual {v2}, Lcom/google/a/d/u;->c()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->b(Lcom/nianticproject/ingress/common/model/a/i;F)V

    .line 573
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bd;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->f:Lcom/nianticproject/ingress/common/model/a/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bd;->N:Lcom/google/a/d/u;

    invoke-virtual {v2}, Lcom/google/a/d/u;->f()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->b(Lcom/nianticproject/ingress/common/model/a/i;F)V

    .line 576
    return-void
.end method
