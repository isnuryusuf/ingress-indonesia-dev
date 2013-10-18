.class public abstract Lcom/nianticproject/ingress/common/missions/a;
.super Lcom/nianticproject/ingress/common/missions/af;
.source "SourceFile"


# static fields
.field private static final y:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final A:Lcom/nianticproject/ingress/common/w/d;

.field private final B:Lcom/nianticproject/ingress/common/w/d;

.field private final C:Lcom/nianticproject/ingress/common/w/d;

.field private final D:Lcom/nianticproject/ingress/common/w/d;

.field private final E:Lcom/nianticproject/ingress/common/w/h;

.field private final F:Lcom/nianticproject/ingress/common/w/h;

.field private final G:Lcom/nianticproject/ingress/common/missions/cs;

.field private final H:Lcom/nianticproject/ingress/common/missions/ct;

.field private final I:Lcom/nianticproject/ingress/common/missions/aa;

.field private final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private final L:Lcom/nianticproject/ingress/common/ui/widget/z;

.field private final M:Lcom/nianticproject/ingress/common/missions/cs;

.field private final N:Lcom/nianticproject/ingress/common/w/h;

.field private final O:Lcom/nianticproject/ingress/common/w/h;

.field private final P:Lcom/nianticproject/ingress/common/w/d;

.field private final Q:Lcom/nianticproject/ingress/common/w/d;

.field private final R:Lcom/nianticproject/ingress/common/model/l;

.field protected a:F

.field protected b:Lcom/nianticproject/ingress/common/missions/ac;

.field protected c:Lcom/nianticproject/ingress/gameentity/f;

.field protected final d:Lcom/nianticproject/ingress/common/w/d;

.field protected final e:Lcom/nianticproject/ingress/common/w/h;

.field protected final f:Lcom/nianticproject/ingress/common/w/h;

.field protected final g:Lcom/nianticproject/ingress/common/w/h;

.field private final z:Lcom/nianticproject/ingress/common/w/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/missions/a;->y:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method protected constructor <init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 4
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
    .line 205
    invoke-direct/range {p0 .. p9}, Lcom/nianticproject/ingress/common/missions/af;-><init>(Lcom/nianticproject/ingress/common/missions/cq;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;Lcom/nianticproject/ingress/common/h/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/ui/elements/i;Lcom/nianticproject/ingress/common/model/a/e;)V

    .line 98
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/nianticproject/ingress/common/missions/a;->a:F

    .line 116
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "MISSION_ACCEPTED_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->z:Lcom/nianticproject/ingress/common/w/d;

    .line 117
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "MISSION_IGNORED_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->A:Lcom/nianticproject/ingress/common/w/d;

    .line 118
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "MISSION_ABANDONED_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->B:Lcom/nianticproject/ingress/common/w/d;

    .line 119
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "MISSION_CONGRATS_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->C:Lcom/nianticproject/ingress/common/w/d;

    .line 120
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "MISSION_GO_TO_SCANNER_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->D:Lcom/nianticproject/ingress/common/w/d;

    .line 121
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "MISSION_STARTED_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->d:Lcom/nianticproject/ingress/common/w/d;

    .line 123
    new-instance v0, Lcom/nianticproject/ingress/common/missions/b;

    const-string/jumbo v1, "START"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/b;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->E:Lcom/nianticproject/ingress/common/w/h;

    .line 134
    new-instance v0, Lcom/nianticproject/ingress/common/missions/o;

    const-string/jumbo v1, "BRIEFING"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/o;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->F:Lcom/nianticproject/ingress/common/w/h;

    .line 146
    new-instance v0, Lcom/nianticproject/ingress/common/missions/q;

    const-string/jumbo v1, "INTRO"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/q;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->e:Lcom/nianticproject/ingress/common/w/h;

    .line 176
    new-instance v0, Lcom/nianticproject/ingress/common/missions/s;

    const-string/jumbo v1, "CONGRATS"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/s;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->f:Lcom/nianticproject/ingress/common/w/h;

    .line 188
    new-instance v0, Lcom/nianticproject/ingress/common/missions/t;

    const-string/jumbo v1, "OUTTRO"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/t;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->g:Lcom/nianticproject/ingress/common/w/h;

    .line 233
    new-instance v0, Lcom/nianticproject/ingress/common/missions/v;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/v;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->G:Lcom/nianticproject/ingress/common/missions/cs;

    .line 261
    new-instance v0, Lcom/nianticproject/ingress/common/missions/w;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/w;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->H:Lcom/nianticproject/ingress/common/missions/ct;

    .line 425
    new-instance v0, Lcom/nianticproject/ingress/common/missions/aa;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "There are no Portals in your immediate vicinity. For training purposes we will create a simulated Portal. An optimum target will be located outdoors more than 50 meters from your current location. Press and hold that location on your Scanner map and tag it. "

    sget-object v3, Lcom/nianticproject/ingress/common/c/bs;->J:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/bs;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->I:Lcom/nianticproject/ingress/common/missions/aa;

    .line 432
    const-string/jumbo v0, "Locate potential Portal"

    const-string/jumbo v1, "Tag potential Portal"

    invoke-static {v0, v1}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->J:Ljava/util/List;

    .line 435
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->d:Lcom/nianticproject/ingress/common/w/d;

    const-string/jumbo v1, "FakePortalPickerStart"

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/w/d;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->K:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 437
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->B:Lcom/nianticproject/ingress/common/w/d;

    const-string/jumbo v1, "FakePortalPickerSkip"

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/w/d;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->L:Lcom/nianticproject/ingress/common/ui/widget/z;

    .line 440
    new-instance v0, Lcom/nianticproject/ingress/common/missions/c;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/c;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->M:Lcom/nianticproject/ingress/common/missions/cs;

    .line 448
    new-instance v0, Lcom/nianticproject/ingress/common/missions/d;

    const-string/jumbo v1, "PORTAL_PICKER_INTRO"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/d;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->N:Lcom/nianticproject/ingress/common/w/h;

    .line 535
    new-instance v0, Lcom/nianticproject/ingress/common/missions/e;

    const-string/jumbo v1, "PORTAL_PICKER"

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/missions/e;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->O:Lcom/nianticproject/ingress/common/w/h;

    .line 617
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "PORTAL_INVALID_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->P:Lcom/nianticproject/ingress/common/w/d;

    .line 618
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "PORTAL_IDENTIFIED_EVENT"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->Q:Lcom/nianticproject/ingress/common/w/d;

    .line 620
    new-instance v0, Lcom/nianticproject/ingress/common/missions/h;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/h;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->R:Lcom/nianticproject/ingress/common/model/l;

    .line 215
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/a;)V
    .locals 3
    .parameter

    .prologue
    .line 89
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/u;

    const-string/jumbo v2, "startAcceptIgnore"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/missions/u;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/missions/a;)V
    .locals 3
    .parameter

    .prologue
    .line 89
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/x;

    const-string/jumbo v2, "startMissionBriefing"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/missions/x;-><init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->C:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->z:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/missions/cs;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->G:Lcom/nianticproject/ingress/common/missions/cs;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->D:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->B:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/missions/aa;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->I:Lcom/nianticproject/ingress/common/missions/aa;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/missions/cs;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->M:Lcom/nianticproject/ingress/common/missions/cs;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/missions/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->J:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/ui/widget/z;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->K:Lcom/nianticproject/ingress/common/ui/widget/z;

    return-object v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/ui/widget/z;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->L:Lcom/nianticproject/ingress/common/ui/widget/z;

    return-object v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->Q:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method static synthetic n(Lcom/nianticproject/ingress/common/missions/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/a;->x()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/nianticproject/ingress/common/missions/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/a;->w()Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/w/d;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->P:Lcom/nianticproject/ingress/common/w/d;

    return-object v0
.end method

.method private w()Z
    .locals 9

    .prologue
    .line 478
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->j:Lcom/nianticproject/ingress/common/g/ad;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/ad;->h()Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    .line 479
    new-instance v1, Lcom/nianticproject/ingress/common/g/ac;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/g/ac;-><init>()V

    .line 480
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/model/m;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v7

    .line 482
    iget v2, p0, Lcom/nianticproject/ingress/common/missions/a;->a:F

    float-to-int v2, v2

    invoke-virtual {v1, v7, v2}, Lcom/nianticproject/ingress/common/g/ac;->a(Lcom/google/a/d/u;I)V

    .line 484
    const-wide v5, 0x47efffffe0000000L

    .line 485
    const/4 v2, 0x0

    .line 487
    const-class v3, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v3, v1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/lang/Class;Lcom/nianticproject/ingress/common/g/h;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 488
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v1, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v3

    .line 491
    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    move-wide v1, v3

    :goto_1
    move-wide v5, v1

    move-object v2, v0

    .line 495
    goto :goto_0

    .line 497
    :cond_0
    if-eqz v2, :cond_1

    .line 498
    new-instance v1, Lcom/nianticproject/ingress/common/missions/ac;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    sget-object v3, Lcom/nianticproject/ingress/shared/m;->a:Lcom/nianticproject/ingress/shared/m;

    invoke-interface {v2, v3}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getDescriptiveText(Lcom/nianticproject/ingress/shared/m;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Lcom/nianticproject/ingress/gameentity/components/f;->a(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcom/nianticproject/ingress/common/missions/ac;-><init>(Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/missions/ac;)V

    .line 502
    const/4 v0, 0x1

    .line 505
    :goto_2
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-object v0, v2

    move-wide v1, v5

    goto :goto_1
.end method

.method private x()Z
    .locals 4

    .prologue
    .line 636
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/m;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/m;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    iget v2, p0, Lcom/nianticproject/ingress/common/missions/a;->a:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 524
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->j:Lcom/nianticproject/ingress/common/g/ad;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/g/ad;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 525
    :goto_0
    if-ge v0, p1, :cond_0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "training."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/nianticproject/ingress/shared/g;->d:Lcom/nianticproject/ingress/shared/g;

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/g;->a(Lcom/nianticproject/ingress/shared/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    new-instance v3, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    invoke-direct {v3, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/a;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v4}, Lcom/nianticproject/ingress/common/model/m;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v4, v5, v6}, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v2

    new-instance v3, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;

    sget-object v4, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/SimpleResourceWithLevels;-><init>(Lcom/nianticproject/ingress/shared/af;I)V

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    :cond_0
    return-object v1
.end method

.method protected final a()V
    .locals 7

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->f()Lcom/nianticproject/ingress/common/missions/aa;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->z:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->H:Lcom/nianticproject/ingress/common/missions/ct;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->f()Lcom/nianticproject/ingress/common/missions/aa;

    move-result-object v2

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/aa;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->f()Lcom/nianticproject/ingress/common/missions/aa;

    move-result-object v3

    iget-object v3, v3, Lcom/nianticproject/ingress/common/missions/aa;->c:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/c/bs;->c()F

    move-result v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/a;->z:Lcom/nianticproject/ingress/common/w/d;

    const-string/jumbo v5, "AcceptFromMissionDebriefing"

    invoke-virtual {p0, v4, v5}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/w/d;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/a;->A:Lcom/nianticproject/ingress/common/w/d;

    const-string/jumbo v6, "SkipFromMissionDebriefing"

    invoke-virtual {p0, v5, v6}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/w/d;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v5

    iget-boolean v6, p0, Lcom/nianticproject/ingress/common/missions/a;->w:Z

    invoke-interface/range {v0 .. v6}, Lcom/nianticproject/ingress/common/missions/cq;->a(Lcom/nianticproject/ingress/common/missions/ct;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Z)V

    goto :goto_0
.end method

.method protected final a(Lcom/nianticproject/ingress/common/missions/ac;)V
    .locals 4
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a;->b:Lcom/nianticproject/ingress/common/missions/ac;

    .line 402
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->a:Lcom/nianticproject/ingress/common/model/a/i;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    invoke-virtual {v2}, Lcom/google/a/d/u;->c()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->b(Lcom/nianticproject/ingress/common/model/a/i;F)V

    .line 403
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->b:Lcom/nianticproject/ingress/common/model/a/i;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    invoke-virtual {v2}, Lcom/google/a/d/u;->f()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->b(Lcom/nianticproject/ingress/common/model/a/i;F)V

    .line 404
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->d:Lcom/nianticproject/ingress/common/model/a/i;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/missions/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->c:Lcom/nianticproject/ingress/common/model/a/i;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/missions/ac;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/ck;)V
    .locals 1
    .parameter

    .prologue
    .line 785
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->s()V

    .line 786
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->c()V

    .line 787
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/missions/af;->a(Lcom/nianticproject/ingress/common/missions/ck;)V

    .line 788
    return-void
.end method

.method protected final a(Lcom/nianticproject/ingress/common/w/c;)V
    .locals 4
    .parameter

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a;->u:Z

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->F:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->F:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->B:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->t:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->F:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->D:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->e:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 332
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->f:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->C:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->g:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 333
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->g:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->z:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->s:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 334
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->g:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->A:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->t:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 336
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/a;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->N:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->N:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->d:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->O:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 342
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->N:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->B:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->t:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 343
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->O:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->Q:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->F:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 345
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/w/h;

    .line 346
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->P:Lcom/nianticproject/ingress/common/w/d;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/a;->N:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v2, v3}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    goto :goto_1

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->E:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 327
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->E:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->z:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->F:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    .line 328
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->E:Lcom/nianticproject/ingress/common/w/h;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->A:Lcom/nianticproject/ingress/common/w/d;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->t:Lcom/nianticproject/ingress/common/w/h;

    invoke-virtual {p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/w/c;->a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;

    goto/16 :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/missions/a;->b(Lcom/nianticproject/ingress/common/w/c;)V

    .line 351
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 293
    sget-object v0, Lcom/nianticproject/ingress/common/missions/a;->y:Lcom/nianticproject/ingress/common/w/aa;

    .line 294
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->l:Lcom/nianticproject/ingress/common/h/k;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->j()Lcom/nianticproject/ingress/common/missions/ep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/ep;)V

    .line 295
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->l:Lcom/nianticproject/ingress/common/h/k;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->k()Lcom/nianticproject/ingress/common/missions/el;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/el;)V

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->l:Lcom/nianticproject/ingress/common/h/k;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->l()Lcom/nianticproject/ingress/common/missions/er;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/er;)V

    .line 297
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->l:Lcom/nianticproject/ingress/common/h/k;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/j;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/j;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/eo;)V

    .line 298
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->l:Lcom/nianticproject/ingress/common/h/k;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->m()Lcom/nianticproject/ingress/common/missions/em;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/em;)V

    .line 299
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->l:Lcom/nianticproject/ingress/common/h/k;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->n()Lcom/nianticproject/ingress/common/missions/es;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/es;)V

    .line 300
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->l:Lcom/nianticproject/ingress/common/h/k;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->o()Lcom/nianticproject/ingress/common/missions/en;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/en;)V

    .line 301
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->l:Lcom/nianticproject/ingress/common/h/k;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->p()Lcom/nianticproject/ingress/common/missions/eq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/missions/eq;)V

    .line 302
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->a:Lcom/nianticproject/ingress/common/model/a/i;

    const/high16 v2, -0x3e10

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;F)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v3, Lcom/nianticproject/ingress/common/model/a/i;->b:Lcom/nianticproject/ingress/common/model/a/i;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/a/d/u;->b(DD)Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v2, Lcom/nianticproject/ingress/common/model/a/i;->d:Lcom/nianticproject/ingress/common/model/a/i;

    const-string/jumbo v3, "Simulation Portal"

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/model/a/e;->b(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a;->q:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v3, Lcom/nianticproject/ingress/common/model/a/i;->c:Lcom/nianticproject/ingress/common/model/a/i;

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/model/a/e;->b(Lcom/nianticproject/ingress/common/model/a/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nianticproject/ingress/common/missions/ac;

    invoke-direct {v3, v0, v1, v2}, Lcom/nianticproject/ingress/common/missions/ac;-><init>(Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/missions/a;->b:Lcom/nianticproject/ingress/common/missions/ac;

    .line 303
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/af;->b()V

    .line 304
    return-void
.end method

.method protected abstract b(Lcom/nianticproject/ingress/common/w/c;)V
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/a;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/missions/a;->w()Z

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->k:Lcom/nianticproject/ingress/common/model/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->R:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/m;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a;->g()V

    .line 318
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/af;->c()V

    .line 319
    return-void
.end method

.method protected d()Lcom/nianticproject/ingress/common/missions/tutorial/TutorialDialog;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract e()Lcom/nianticproject/ingress/common/missions/aa;
.end method

.method protected abstract f()Lcom/nianticproject/ingress/common/missions/aa;
.end method

.method protected abstract g()V
.end method

.method public h()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Lcom/nianticproject/ingress/common/missions/af;->h()V

    .line 394
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a;->k:Lcom/nianticproject/ingress/common/model/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a;->R:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/m;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 395
    return-void
.end method

.method protected abstract i()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/w/h;",
            ">;"
        }
    .end annotation
.end method

.method protected j()Lcom/nianticproject/ingress/common/missions/ep;
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lcom/nianticproject/ingress/common/missions/i;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/i;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    return-object v0
.end method

.method protected k()Lcom/nianticproject/ingress/common/missions/el;
    .locals 1

    .prologue
    .line 681
    new-instance v0, Lcom/nianticproject/ingress/common/missions/y;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/missions/y;-><init>()V

    return-object v0
.end method

.method protected l()Lcom/nianticproject/ingress/common/missions/er;
    .locals 1

    .prologue
    .line 710
    new-instance v0, Lcom/nianticproject/ingress/common/missions/k;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/k;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    return-object v0
.end method

.method protected m()Lcom/nianticproject/ingress/common/missions/em;
    .locals 1

    .prologue
    .line 723
    new-instance v0, Lcom/nianticproject/ingress/common/missions/l;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/l;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    return-object v0
.end method

.method protected n()Lcom/nianticproject/ingress/common/missions/es;
    .locals 1

    .prologue
    .line 737
    new-instance v0, Lcom/nianticproject/ingress/common/missions/m;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/m;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    return-object v0
.end method

.method protected o()Lcom/nianticproject/ingress/common/missions/en;
    .locals 1

    .prologue
    .line 751
    new-instance v0, Lcom/nianticproject/ingress/common/missions/n;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/n;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    return-object v0
.end method

.method protected p()Lcom/nianticproject/ingress/common/missions/eq;
    .locals 1

    .prologue
    .line 771
    new-instance v0, Lcom/nianticproject/ingress/common/missions/p;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/p;-><init>(Lcom/nianticproject/ingress/common/missions/a;)V

    return-object v0
.end method
