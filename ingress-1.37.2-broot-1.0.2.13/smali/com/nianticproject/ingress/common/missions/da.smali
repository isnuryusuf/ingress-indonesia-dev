.class public Lcom/nianticproject/ingress/common/missions/da;
.super Lcom/nianticproject/ingress/common/missions/a;
.source "SourceFile"


# static fields
.field private static final A:Lcom/nianticproject/ingress/common/c/bs;

.field private static final B:Lcom/nianticproject/ingress/common/c/bs;

.field private static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final D:Lcom/nianticproject/ingress/common/w/d;

.field private final E:Lcom/nianticproject/ingress/common/w/d;

.field private final F:Lcom/nianticproject/ingress/common/w/d;

.field private final G:Lcom/nianticproject/ingress/common/w/d;

.field private final H:Lcom/nianticproject/ingress/common/w/d;

.field private final I:Lcom/nianticproject/ingress/common/missions/dh;

.field private final J:Lcom/nianticproject/ingress/common/missions/aq;

.field private final K:Lcom/nianticproject/ingress/common/missions/di;

.field private final L:Lcom/nianticproject/ingress/common/w/h;

.field private final M:Lcom/nianticproject/ingress/common/w/h;

.field private final N:Lcom/nianticproject/ingress/common/w/h;

.field private final O:Lcom/nianticproject/ingress/common/w/h;

.field private final P:Lcom/nianticproject/ingress/common/w/h;

.field protected final y:Lcom/google/a/c/hs;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/missions/da;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/da;->z:Lcom/nianticproject/ingress/common/w/aa;

    .line 86
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->T:Lcom/nianticproject/ingress/common/c/bs;

    sput-object v0, Lcom/nianticproject/ingress/common/missions/da;->A:Lcom/nianticproject/ingress/common/c/bs;

    .line 87
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->R:Lcom/nianticproject/ingress/common/c/bs;

    sput-object v0, Lcom/nianticproject/ingress/common/missions/da;->B:Lcom/nianticproject/ingress/common/c/bs;

    .line 120
    const-string/jumbo v0, "Hack nearby Portal"

    const-string/jumbo v1, "Deploy remaining Resonators"

    const-string/jumbo v2, "Recharge Resonators"

    invoke-static {v0, v1, v2}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/missions/da;->C:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 425
    invoke-direct/range {p0 .. p9}, Lcom/nianticproject/ingress/common/missions/a;-><init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V

    .line 170
    invoke-static {}, Lcom/google/a/c/al;->i()Lcom/google/a/c/al;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->y:Lcom/google/a/c/hs;

    .line 309
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "hackEvent"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->D:Lcom/nianticproject/ingress/common/w/d;

    .line 310
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "deployEvent"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->E:Lcom/nianticproject/ingress/common/w/d;

    .line 311
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "pauseDoneEvent"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->F:Lcom/nianticproject/ingress/common/w/d;

    .line 312
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "rechargeEvent"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->G:Lcom/nianticproject/ingress/common/w/d;

    .line 313
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "doneEvent"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->H:Lcom/nianticproject/ingress/common/w/d;

    .line 318
    new-instance v0, Lcom/nianticproject/ingress/common/missions/dh;

    invoke-direct {v0, p0, v4}, Lcom/nianticproject/ingress/common/missions/dh;-><init>(Lcom/nianticproject/ingress/common/missions/da;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->I:Lcom/nianticproject/ingress/common/missions/dh;

    .line 319
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->E:Lcom/nianticproject/ingress/common/w/d;

    const/16 v2, 0x8

    const/16 v3, 0x3e8

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aq;-><init>(Lcom/nianticproject/ingress/common/missions/af;Lcom/nianticproject/ingress/common/w/d;II)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->J:Lcom/nianticproject/ingress/common/missions/aq;

    .line 321
    new-instance v0, Lcom/nianticproject/ingress/common/missions/di;

    invoke-direct {v0, p0, v4}, Lcom/nianticproject/ingress/common/missions/di;-><init>(Lcom/nianticproject/ingress/common/missions/da;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->K:Lcom/nianticproject/ingress/common/missions/di;

    .line 334
    new-instance v0, Lcom/nianticproject/ingress/common/missions/db;

    const-string/jumbo v1, "hackState"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/db;-><init>(Lcom/nianticproject/ingress/common/missions/da;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->L:Lcom/nianticproject/ingress/common/w/h;

    .line 354
    new-instance v0, Lcom/nianticproject/ingress/common/missions/dc;

    const-string/jumbo v1, "deployState"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/dc;-><init>(Lcom/nianticproject/ingress/common/missions/da;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->M:Lcom/nianticproject/ingress/common/w/h;

    .line 377
    new-instance v0, Lcom/nianticproject/ingress/common/missions/dd;

    const-string/jumbo v1, "pauseState"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/dd;-><init>(Lcom/nianticproject/ingress/common/missions/da;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->N:Lcom/nianticproject/ingress/common/w/h;

    .line 390
    new-instance v0, Lcom/nianticproject/ingress/common/missions/de;

    const-string/jumbo v1, "rechargeState"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/de;-><init>(Lcom/nianticproject/ingress/common/missions/da;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->O:Lcom/nianticproject/ingress/common/w/h;

    .line 409
    new-instance v0, Lcom/nianticproject/ingress/common/missions/df;

    const-string/jumbo v1, "doneState"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/df;-><init>(Lcom/nianticproject/ingress/common/missions/da;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->P:Lcom/nianticproject/ingress/common/w/h;

    .line 427
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/ep;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/a;->j()Lcom/nianticproject/ingress/common/missions/ep;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->D:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/er;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/a;->l()Lcom/nianticproject/ingress/common/missions/er;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->G:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/di;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->K:Lcom/nianticproject/ingress/common/missions/di;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/missions/da;)V
    .locals 9
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->j:Lcom/nianticproject/ingress/common/g/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/m;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0x320

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/da;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v6}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nianticproject/ingress/common/missions/da;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v7, v7, Lcom/nianticproject/ingress/common/missions/ac;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/missions/da;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v8, v8, Lcom/nianticproject/ingress/common/missions/ac;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v8}, Lcom/nianticproject/ingress/common/g/ad;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->c:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->m:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/google/a/d/u;)V

    return-void
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/dh;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->I:Lcom/nianticproject/ingress/common/missions/dh;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/missions/aq;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->J:Lcom/nianticproject/ingress/common/missions/aq;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->F:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/missions/da;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->H:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic w()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/nianticproject/ingress/common/missions/da;->z:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method protected final b(Lcom/nianticproject/ingress/common/w/c;)V
    .locals 3
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->e:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->d:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->L:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 442
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->L:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->D:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->M:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 443
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->M:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->D:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->M:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 444
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->M:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->E:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->N:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 445
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->N:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->F:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->O:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 446
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->O:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->G:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->P:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 447
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->P:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->H:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->f:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 448
    return-void
.end method

.method protected final e()Lcom/nianticproject/ingress/common/missions/aa;
    .locals 4

    .prologue
    .line 452
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aa;

    const-string/jumbo v1, "Resonating"

    const-string/jumbo v2, "Portals can be linked together by powerful bands of Exotic Matter.  In order to link, Portals must have eight charged Resonators.  Move within range of a nearby Portal and hack it to obtain Resonators.  Deploy them and recharge all Resonators above critical levels.\n\n"

    sget-object v3, Lcom/nianticproject/ingress/common/missions/da;->A:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/bs;)V

    return-object v0
.end method

.method protected final f()Lcom/nianticproject/ingress/common/missions/aa;
    .locals 4

    .prologue
    .line 457
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aa;

    const-string/jumbo v1, "Resonating"

    const-string/jumbo v2, "Excellent.  This Portal is now ready for linking."

    sget-object v3, Lcom/nianticproject/ingress/common/missions/da;->B:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/bs;)V

    return-object v0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 431
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->k:Lcom/nianticproject/ingress/common/model/m;

    const-wide/16 v1, 0xc8

    sget-object v3, Lcom/nianticproject/ingress/common/model/z;->d:Lcom/nianticproject/ingress/common/model/z;

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/model/m;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 432
    return-void
.end method

.method protected final i()Ljava/util/Set;
    .locals 3
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
    .line 467
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->L:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/da;->M:Lcom/nianticproject/ingress/common/w/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/da;->O:Lcom/nianticproject/ingress/common/w/h;

    invoke-static {v0, v1, v2}, Lcom/google/a/c/du;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Lcom/nianticproject/ingress/common/missions/ep;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->I:Lcom/nianticproject/ingress/common/missions/dh;

    return-object v0
.end method

.method protected final k()Lcom/nianticproject/ingress/common/missions/el;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->J:Lcom/nianticproject/ingress/common/missions/aq;

    return-object v0
.end method

.method protected final l()Lcom/nianticproject/ingress/common/missions/er;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/da;->K:Lcom/nianticproject/ingress/common/missions/di;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    const-string/jumbo v0, "Resonating"

    return-object v0
.end method

.method public final r()Ljava/util/List;
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
    .line 462
    sget-object v0, Lcom/nianticproject/ingress/common/missions/da;->C:Ljava/util/List;

    return-object v0
.end method
