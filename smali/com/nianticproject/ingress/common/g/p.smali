.class public Lcom/nianticproject/ingress/common/g/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static b:Lcom/nianticproject/ingress/common/g/p;


# instance fields
.field private A:Lcom/nianticproject/ingress/common/missions/a/l;

.field private B:Lcom/nianticproject/ingress/common/missions/cc;

.field private C:Lcom/nianticproject/ingress/common/factionchoice/d;

.field private D:Lcom/nianticproject/ingress/common/k/s;

.field private E:Lcom/nianticproject/ingress/common/ui/elements/ah;

.field private F:Lcom/nianticproject/ingress/common/h;

.field private G:Lcom/nianticproject/ingress/common/ui/e;

.field private H:Lcom/nianticproject/ingress/common/o;

.field private final I:Lcom/nianticproject/ingress/i/b;

.field private J:Lcom/nianticproject/ingress/common/m/e;

.field private final K:Lcom/nianticproject/ingress/common/u/f;

.field private L:Lcom/nianticproject/ingress/common/ac;

.field private M:Z

.field private N:Z

.field private final O:Lcom/nianticproject/ingress/common/g/c;

.field private final P:Lcom/nianticproject/ingress/common/g/f;

.field private final Q:Lcom/nianticproject/ingress/common/aa;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/g/w;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/nianticproject/ingress/common/g/b;

.field private final e:Lcom/nianticproject/ingress/common/model/g;

.field private final f:Lcom/nianticproject/ingress/common/h/k;

.field private g:Lcom/nianticproject/ingress/common/u/b;

.field private h:Lcom/nianticproject/ingress/common/a;

.field private i:Lcom/nianticproject/ingress/common/d/a;

.field private j:Ljava/lang/String;

.field private k:Lcom/nianticproject/ingress/common/q/b/r;

.field private l:Lcom/nianticproject/ingress/common/j/av;

.field private m:Lcom/nianticproject/ingress/shared/a/b;

.field private final n:Lcom/nianticproject/ingress/common/w/t;

.field private o:Lcom/nianticproject/ingress/common/model/d;

.field private p:Lcom/nianticproject/ingress/common/u/q;

.field private q:Lcom/nianticproject/ingress/common/playerprofile/ax;

.field private r:Lcom/nianticproject/ingress/common/scanner/k;

.field private s:Lcom/nianticproject/ingress/common/inventory/a;

.field private t:Lcom/nianticproject/ingress/common/ui/t;

.field private u:Lcom/nianticproject/ingress/common/l;

.field private v:Lcom/nianticproject/ingress/common/r;

.field private w:Lcom/nianticproject/ingress/common/ui/o;

.field private x:Lcom/nianticproject/ingress/common/model/a/e;

.field private y:Lcom/nianticproject/ingress/common/c/ak;

.field private z:Lcom/nianticproject/ingress/common/missions/a/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/g/p;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 139
    new-instance v0, Lcom/nianticproject/ingress/common/g/p;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/g/p;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/g/p;->b:Lcom/nianticproject/ingress/common/g/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {}, Lcom/nianticproject/ingress/common/w/j;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->c:Ljava/util/Set;

    .line 150
    new-instance v0, Lcom/nianticproject/ingress/common/g/b;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/g/b;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    .line 151
    new-instance v0, Lcom/nianticproject/ingress/common/model/g;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/model/g;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    .line 152
    new-instance v0, Lcom/nianticproject/ingress/common/h/k;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/h/k;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    .line 164
    new-instance v0, Lcom/nianticproject/ingress/common/w/t;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/t;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->n:Lcom/nianticproject/ingress/common/w/t;

    .line 185
    new-instance v0, Lcom/nianticproject/ingress/i/b;

    invoke-direct {v0}, Lcom/nianticproject/ingress/i/b;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->I:Lcom/nianticproject/ingress/i/b;

    .line 187
    new-instance v0, Lcom/nianticproject/ingress/common/u/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/f;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->K:Lcom/nianticproject/ingress/common/u/f;

    .line 890
    new-instance v0, Lcom/nianticproject/ingress/common/g/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/g/s;-><init>(Lcom/nianticproject/ingress/common/g/p;Lcom/nianticproject/ingress/common/g/e;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->O:Lcom/nianticproject/ingress/common/g/c;

    .line 912
    new-instance v0, Lcom/nianticproject/ingress/common/g/u;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/g/u;-><init>(Lcom/nianticproject/ingress/common/g/p;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->P:Lcom/nianticproject/ingress/common/g/f;

    .line 922
    new-instance v0, Lcom/nianticproject/ingress/common/g/v;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/g/v;-><init>(Lcom/nianticproject/ingress/common/g/p;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->Q:Lcom/nianticproject/ingress/common/aa;

    .line 202
    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/common/g/p;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/nianticproject/ingress/common/g/p;->b:Lcom/nianticproject/ingress/common/g/p;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->t:Lcom/nianticproject/ingress/common/ui/t;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/k/s;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->D:Lcom/nianticproject/ingress/common/k/s;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/g/c;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->O:Lcom/nianticproject/ingress/common/g/c;

    return-object v0
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 794
    if-nez p1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/g/i;->a()Lcom/nianticproject/ingress/common/g/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/g/b;->a(Lcom/nianticproject/ingress/common/g/e;)V

    .line 802
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/b;->b()V

    .line 803
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->O:Lcom/nianticproject/ingress/common/g/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/c;->e()V

    .line 804
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/g/i;->b()Lcom/nianticproject/ingress/common/g/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/g/b;->a(Lcom/nianticproject/ingress/common/g/e;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/g/f;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->P:Lcom/nianticproject/ingress/common/g/f;

    return-object v0
.end method

.method private d(Z)V
    .locals 7
    .parameter

    .prologue
    .line 874
    if-nez p1, :cond_0

    .line 876
    iget-object v6, p0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    new-instance v0, Lcom/nianticproject/ingress/common/h/ac;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/g/p;->v:Lcom/nianticproject/ingress/common/r;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/h/ac;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/r;)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/h/l;)V

    .line 885
    :goto_0
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    new-instance v1, Lcom/nianticproject/ingress/common/h/r;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/g/b;->a()Z

    move-result v3

    const-string/jumbo v4, "NemesisCache is not in training mode"

    invoke-static {v3, v4}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/model/g;->a()Z

    move-result v4

    const-string/jumbo v5, "PlayerModel is not in training mode"

    invoke-static {v4, v5}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/h/r;-><init>(Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/g/ad;Lcom/nianticproject/ingress/common/model/m;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/h/k;->a(Lcom/nianticproject/ingress/common/h/l;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/g/b;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/nianticproject/ingress/common/m/e;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->J:Lcom/nianticproject/ingress/common/m/e;

    return-object v0
.end method

.method public final B()Lcom/nianticproject/ingress/shared/a/a;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->m:Lcom/nianticproject/ingress/shared/a/b;

    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/a/b;->a()Lcom/nianticproject/ingress/shared/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final C()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->u:Lcom/nianticproject/ingress/common/l;

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 504
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->u:Lcom/nianticproject/ingress/common/l;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/l;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public final D()Lcom/nianticproject/ingress/common/j/av;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->l:Lcom/nianticproject/ingress/common/j/av;

    return-object v0
.end method

.method public final E()Lcom/nianticproject/ingress/common/playerprofile/ax;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->q:Lcom/nianticproject/ingress/common/playerprofile/ax;

    return-object v0
.end method

.method public final F()Lcom/nianticproject/ingress/common/ac;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->L:Lcom/nianticproject/ingress/common/ac;

    return-object v0
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/p;->M:Z

    return v0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/g/p;->N:Z

    return v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/g/w;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/b;Lcom/nianticproject/ingress/common/a;Ljava/lang/String;Lcom/nianticproject/ingress/common/q/b/r;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/x;ZLcom/nianticproject/ingress/common/v/ah;Lcom/nianticproject/ingress/common/model/a/e;Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/o;Lcom/nianticproject/ingress/shared/a/b;)V
    .locals 17
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
    .parameter
    .parameter

    .prologue
    .line 221
    :try_start_0
    const-string/jumbo v2, "NemesisWorld.init"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->g:Lcom/nianticproject/ingress/common/u/b;

    .line 223
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    .line 224
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->j:Ljava/lang/String;

    .line 225
    new-instance v2, Lcom/nianticproject/ingress/common/u/q;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lcom/nianticproject/ingress/common/u/q;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    .line 226
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->k:Lcom/nianticproject/ingress/common/q/b/r;

    .line 227
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->l:Lcom/nianticproject/ingress/common/j/av;

    .line 228
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->x:Lcom/nianticproject/ingress/common/model/a/e;

    .line 229
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->y:Lcom/nianticproject/ingress/common/c/ak;

    .line 230
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->H:Lcom/nianticproject/ingress/common/o;

    .line 231
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nianticproject/ingress/common/g/p;->m:Lcom/nianticproject/ingress/shared/a/b;

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/g/x;->a(Lcom/nianticproject/ingress/common/u/q;)Lcom/nianticproject/ingress/common/ac;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->L:Lcom/nianticproject/ingress/common/ac;

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nianticproject/ingress/common/g/p;->L:Lcom/nianticproject/ingress/common/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v2, "NemesisWorld.initHelper"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->x:Lcom/nianticproject/ingress/common/model/a/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->H:Lcom/nianticproject/ingress/common/o;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/o;->c:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/model/a/e;->a(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->x:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/model/a/e;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nianticproject/ingress/common/g/p;->M:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nianticproject/ingress/common/g/p;->M:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/g/p;->c(Z)V

    new-instance v2, Lcom/nianticproject/ingress/common/model/f;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/common/model/f;-><init>(Lcom/nianticproject/ingress/common/g/e;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nianticproject/ingress/common/g/p;->M:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->H:Lcom/nianticproject/ingress/common/o;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/o;->b:Lcom/nianticproject/ingress/gameentity/f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->H:Lcom/nianticproject/ingress/common/o;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/o;->a:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    new-instance v2, Lcom/nianticproject/ingress/common/model/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    invoke-direct/range {v2 .. v8}, Lcom/nianticproject/ingress/common/model/a;-><init>(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/q;)V

    invoke-virtual {v9, v2}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/common/model/k;)V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nianticproject/ingress/common/g/p;->M:Z

    if-nez v2, :cond_3

    new-instance v2, Lcom/nianticproject/ingress/common/u/j;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->K:Lcom/nianticproject/ingress/common/u/f;

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/u/j;-><init>(Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/f;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    invoke-virtual {v3, v2}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/common/u/j;)V

    new-instance v3, Lcom/nianticproject/ingress/common/playerprofile/bl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->g:Lcom/nianticproject/ingress/common/u/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->j:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/nianticproject/ingress/common/playerprofile/bl;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    new-instance v4, Lcom/nianticproject/ingress/common/playerprofile/bm;

    invoke-direct {v4, v3}, Lcom/nianticproject/ingress/common/playerprofile/bm;-><init>(Lcom/nianticproject/ingress/common/u/ah;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->q:Lcom/nianticproject/ingress/common/playerprofile/ax;

    new-instance v3, Lcom/nianticproject/ingress/common/d/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    invoke-direct {v3, v4, v5}, Lcom/nianticproject/ingress/common/d/a;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->i:Lcom/nianticproject/ingress/common/d/a;

    new-instance v3, Lcom/nianticproject/ingress/common/u/s;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->g:Lcom/nianticproject/ingress/common/u/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->K:Lcom/nianticproject/ingress/common/u/f;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/nianticproject/ingress/common/u/s;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;Lcom/nianticproject/ingress/common/u/j;Lcom/nianticproject/ingress/common/u/f;)V

    new-instance v2, Lcom/nianticproject/ingress/common/l;

    invoke-static {}, Lcom/nianticproject/ingress/common/g/i;->a()Lcom/nianticproject/ingress/common/g/e;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    invoke-direct {v2, v4, v5}, Lcom/nianticproject/ingress/common/l;-><init>(Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->u:Lcom/nianticproject/ingress/common/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->u:Lcom/nianticproject/ingress/common/l;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/l;->a(Lcom/nianticproject/ingress/common/u/s;)V

    new-instance v2, Lcom/nianticproject/ingress/common/r;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->u:Lcom/nianticproject/ingress/common/l;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->O:Lcom/nianticproject/ingress/common/g/c;

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/r;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/l;Lcom/nianticproject/ingress/common/g/c;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->v:Lcom/nianticproject/ingress/common/r;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nianticproject/ingress/common/g/p;->M:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/g/p;->d(Z)V

    new-instance v2, Lcom/nianticproject/ingress/common/inventory/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->v:Lcom/nianticproject/ingress/common/r;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/g/p;->l:Lcom/nianticproject/ingress/common/j/av;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    move-object v4, v14

    invoke-direct/range {v2 .. v9}, Lcom/nianticproject/ingress/common/inventory/i;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/a;)V

    invoke-static {v2}, La;->k(Lcom/nianticproject/ingress/common/inventory/i;)V

    new-instance v3, Lcom/nianticproject/ingress/common/inventory/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->l:Lcom/nianticproject/ingress/common/j/av;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/common/inventory/a;-><init>(Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/inventory/ui/ac;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->s:Lcom/nianticproject/ingress/common/inventory/a;

    new-instance v3, Lcom/nianticproject/ingress/common/k/s;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->y:Lcom/nianticproject/ingress/common/c/ak;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->x:Lcom/nianticproject/ingress/common/model/a/e;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/nianticproject/ingress/common/g/p;->M:Z

    new-instance v8, Lcom/nianticproject/ingress/common/g/q;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/nianticproject/ingress/common/g/q;-><init>(Lcom/nianticproject/ingress/common/g/p;)V

    invoke-direct/range {v3 .. v8}, Lcom/nianticproject/ingress/common/k/s;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/model/a/e;ZLcom/nianticproject/ingress/common/k/y;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->D:Lcom/nianticproject/ingress/common/k/s;

    new-instance v15, Lcom/nianticproject/ingress/common/e/m;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-direct {v15, v3, v4, v5}, Lcom/nianticproject/ingress/common/e/m;-><init>(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/model/k;)V

    new-instance v16, Lcom/nianticproject/ingress/common/l/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->y:Lcom/nianticproject/ingress/common/c/ak;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/nianticproject/ingress/common/l/a;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/c/ak;)V

    new-instance v3, Lcom/nianticproject/ingress/common/missions/cc;

    invoke-direct {v3, v2}, Lcom/nianticproject/ingress/common/missions/cc;-><init>(Lcom/nianticproject/ingress/common/ui/widget/af;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->B:Lcom/nianticproject/ingress/common/missions/cc;

    new-instance v3, Lcom/nianticproject/ingress/common/missions/a/r;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->n:Lcom/nianticproject/ingress/common/w/t;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->l:Lcom/nianticproject/ingress/common/j/av;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nianticproject/ingress/common/g/p;->k:Lcom/nianticproject/ingress/common/q/b/r;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nianticproject/ingress/common/g/p;->v:Lcom/nianticproject/ingress/common/r;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    new-instance v13, Lcom/nianticproject/ingress/common/g/r;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/nianticproject/ingress/common/g/r;-><init>(Lcom/nianticproject/ingress/common/g/p;)V

    move-object v6, v14

    invoke-direct/range {v3 .. v13}, Lcom/nianticproject/ingress/common/missions/a/r;-><init>(Lcom/nianticproject/ingress/common/w/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/q/e;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/scanner/ad;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->z:Lcom/nianticproject/ingress/common/missions/a/r;

    new-instance v3, Lcom/nianticproject/ingress/common/missions/a/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->z:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->y:Lcom/nianticproject/ingress/common/c/ak;

    invoke-direct {v3, v4, v5, v6}, Lcom/nianticproject/ingress/common/missions/a/l;-><init>(Lcom/nianticproject/ingress/common/missions/a/r;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/c/ak;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->A:Lcom/nianticproject/ingress/common/missions/a/l;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->z:Lcom/nianticproject/ingress/common/missions/a/r;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->r:Lcom/nianticproject/ingress/common/scanner/k;

    new-instance v3, Lcom/nianticproject/ingress/common/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->r:Lcom/nianticproject/ingress/common/scanner/k;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/nianticproject/ingress/common/h;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/d;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->F:Lcom/nianticproject/ingress/common/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->F:Lcom/nianticproject/ingress/common/h;

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/common/model/l;)V

    new-instance v3, Lcom/nianticproject/ingress/common/u/ah;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->g:Lcom/nianticproject/ingress/common/u/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->j:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/nianticproject/ingress/common/u/ah;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    new-instance v4, Lcom/nianticproject/ingress/common/u/ai;

    invoke-direct {v4}, Lcom/nianticproject/ingress/common/u/ai;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/u/ah;->a(Lcom/nianticproject/ingress/common/u/h;)Lcom/nianticproject/ingress/common/u/ah;

    new-instance v4, Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->y:Lcom/nianticproject/ingress/common/c/ak;

    invoke-direct {v4, v14, v3, v5, v6}, Lcom/nianticproject/ingress/common/factionchoice/d;-><init>(Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/c/ak;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->C:Lcom/nianticproject/ingress/common/factionchoice/d;

    new-instance v3, Lcom/nianticproject/ingress/common/v/j;

    move-object/from16 v0, p8

    invoke-direct {v3, v2, v0}, Lcom/nianticproject/ingress/common/v/j;-><init>(Lcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/v/ah;)V

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/nianticproject/ingress/common/ui/a;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->D:Lcom/nianticproject/ingress/common/k/s;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->C:Lcom/nianticproject/ingress/common/factionchoice/d;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->A:Lcom/nianticproject/ingress/common/missions/a/l;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/nianticproject/ingress/common/m/f;

    invoke-direct {v6, v14, v2}, Lcom/nianticproject/ingress/common/m/f;-><init>(Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/ui/widget/af;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->z:Lcom/nianticproject/ingress/common/missions/a/r;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->s:Lcom/nianticproject/ingress/common/inventory/a;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object v16, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lcom/nianticproject/ingress/common/r/a;

    invoke-direct {v6, v14, v2}, Lcom/nianticproject/ingress/common/r/a;-><init>(Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/ui/widget/af;)V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    aput-object v3, v4, v5

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->B:Lcom/nianticproject/ingress/common/missions/cc;

    aput-object v5, v4, v3

    const/16 v3, 0xa

    aput-object v15, v4, v3

    const/16 v3, 0xb

    new-instance v5, Lcom/nianticproject/ingress/common/playerprofile/ak;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->l:Lcom/nianticproject/ingress/common/j/av;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/g/p;->q:Lcom/nianticproject/ingress/common/playerprofile/ax;

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/nianticproject/ingress/common/playerprofile/ak;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/inventory/i;)V

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    const-wide/32 v4, 0x4c4b40

    const/16 v3, 0x14

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    const-wide/32 v4, 0xf4240

    const/16 v3, 0x1e

    :cond_0
    new-instance v7, Lcom/nianticproject/ingress/common/ui/e;

    invoke-direct {v7, v3}, Lcom/nianticproject/ingress/common/ui/e;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->G:Lcom/nianticproject/ingress/common/ui/e;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/t;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->z:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-direct {v3, v7, v6}, Lcom/nianticproject/ingress/common/ui/t;-><init>(Lcom/nianticproject/ingress/common/ui/m;Ljava/lang/Iterable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->t:Lcom/nianticproject/ingress/common/ui/t;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->t:Lcom/nianticproject/ingress/common/ui/t;

    invoke-static {}, La;->aj()Z

    move-result v6

    if-nez v6, :cond_1

    const-class v6, Lcom/nianticproject/ingress/common/k/s;

    invoke-virtual {v3, v6}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->t:Lcom/nianticproject/ingress/common/ui/t;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/inventory/i;->a(Lcom/nianticproject/ingress/common/ui/t;)V

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v2

    invoke-static {}, Lcom/nianticproject/ingress/common/p/a;->a()Lcom/nianticproject/ingress/knobs/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->d(Lcom/nianticproject/ingress/knobs/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/nianticproject/ingress/common/ui/elements/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->t:Lcom/nianticproject/ingress/common/ui/t;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->l:Lcom/nianticproject/ingress/common/j/av;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-direct {v2, v3, v6, v7}, Lcom/nianticproject/ingress/common/ui/elements/c;-><init>(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;)V

    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->E:Lcom/nianticproject/ingress/common/ui/elements/ah;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->z:Lcom/nianticproject/ingress/common/missions/a/r;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->E:Lcom/nianticproject/ingress/common/ui/elements/ah;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/missions/a/r;->a(Lcom/nianticproject/ingress/common/ui/elements/ah;)V

    invoke-static/range {p7 .. p7}, Lcom/nianticproject/ingress/common/ui/t;->a(Z)V

    invoke-static/range {p7 .. p7}, Lcom/nianticproject/ingress/common/ui/o;->a(Z)V

    new-instance v2, Lcom/nianticproject/ingress/common/ui/o;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->t:Lcom/nianticproject/ingress/common/ui/t;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->G:Lcom/nianticproject/ingress/common/ui/e;

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/nianticproject/ingress/common/ui/o;-><init>(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/ui/e;J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->w:Lcom/nianticproject/ingress/common/ui/o;

    new-instance v2, Lcom/nianticproject/ingress/common/m/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->g:Lcom/nianticproject/ingress/common/u/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->j:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/m/e;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nianticproject/ingress/common/g/p;->J:Lcom/nianticproject/ingress/common/m/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 236
    move-object/from16 v0, p0

    invoke-static {v0}, La;->r(Lcom/nianticproject/ingress/common/g/p;)V

    return-void

    .line 233
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    new-instance v2, Lcom/nianticproject/ingress/common/model/ac;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/model/ac;-><init>(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/model/d;)V

    invoke-virtual {v8, v2}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/common/model/k;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v2

    .line 233
    :cond_3
    :try_start_5
    new-instance v2, Lcom/nianticproject/ingress/common/u/ba;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/g/p;->K:Lcom/nianticproject/ingress/common/u/f;

    invoke-direct/range {v2 .. v7}, Lcom/nianticproject/ingress/common/u/ba;-><init>(Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/f;)V

    goto/16 :goto_1

    :cond_4
    new-instance v2, Lcom/nianticproject/ingress/common/ui/elements/ab;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/g/p;->t:Lcom/nianticproject/ingress/common/ui/t;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-direct {v2, v3, v6}, Lcom/nianticproject/ingress/common/ui/elements/ab;-><init>(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/model/k;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method

.method public final a(Z)V
    .locals 10
    .parameter

    .prologue
    .line 243
    :try_start_0
    const-string/jumbo v0, "NemesisWorld.resetHelper"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/g/p;->M:Z

    new-instance v0, Lcom/nianticproject/ingress/common/u/q;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/p;->g:Lcom/nianticproject/ingress/common/u/b;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/p;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/q;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/g/p;->c(Z)V

    if-nez p1, :cond_1

    new-instance v0, Lcom/nianticproject/ingress/common/u/j;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/g/p;->K:Lcom/nianticproject/ingress/common/u/f;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/u/j;-><init>(Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/f;)V

    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/common/u/j;)V

    new-instance v1, Lcom/nianticproject/ingress/common/u/s;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/p;->g:Lcom/nianticproject/ingress/common/u/b;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/p;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/p;->K:Lcom/nianticproject/ingress/common/u/f;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/nianticproject/ingress/common/u/s;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;Lcom/nianticproject/ingress/common/u/j;Lcom/nianticproject/ingress/common/u/f;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->u:Lcom/nianticproject/ingress/common/l;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/l;->a(Lcom/nianticproject/ingress/common/u/s;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->H:Lcom/nianticproject/ingress/common/o;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/o;->b:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->H:Lcom/nianticproject/ingress/common/o;

    iget-object v2, v0, Lcom/nianticproject/ingress/common/o;->a:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/g;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v7

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/g;->f()F

    move-result v8

    iget-object v9, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    new-instance v0, Lcom/nianticproject/ingress/common/model/a;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/model/a;-><init>(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/q;)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/common/model/k;)V

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0, v7}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/common/ad;)V

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0, v8}, Lcom/nianticproject/ingress/common/model/g;->a(F)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/model/g;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ai;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x2

    const-string/jumbo v1, "L%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/model/g;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(ILjava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/g/p;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/w;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/w;->a(Z)V

    goto :goto_2

    .line 243
    :cond_1
    :try_start_1
    new-instance v0, Lcom/nianticproject/ingress/common/u/ba;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/g/p;->K:Lcom/nianticproject/ingress/common/u/f;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/u/ba;-><init>(Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/g;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/g;->f()F

    move-result v7

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/g;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v8

    iget-object v9, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    new-instance v0, Lcom/nianticproject/ingress/common/model/ac;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/model/ac;-><init>(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/model/d;)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/common/model/k;)V

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/common/ad;)V

    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0, v7}, Lcom/nianticproject/ingress/common/model/g;->a(F)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    invoke-virtual {v0, v8}, Lcom/nianticproject/ingress/common/model/g;->a(Lcom/nianticproject/ingress/shared/ai;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 245
    :cond_4
    return-void
.end method

.method public final b()Lcom/nianticproject/ingress/common/model/k;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    return-object v0
.end method

.method public final b(Lcom/nianticproject/ingress/common/g/w;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/g/p;->N:Z

    .line 567
    return-void
.end method

.method public final c()Lcom/nianticproject/ingress/common/model/g;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->e:Lcom/nianticproject/ingress/common/model/g;

    return-object v0
.end method

.method public final d()Lcom/nianticproject/ingress/common/g/e;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    return-object v0
.end method

.method public final e()Lcom/nianticproject/ingress/common/g/b;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->d:Lcom/nianticproject/ingress/common/g/b;

    return-object v0
.end method

.method public final f()Lcom/nianticproject/ingress/common/h/l;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    return-object v0
.end method

.method public final g()Lcom/nianticproject/ingress/common/h/k;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->f:Lcom/nianticproject/ingress/common/h/k;

    return-object v0
.end method

.method public final h()Lcom/nianticproject/ingress/common/w/t;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->n:Lcom/nianticproject/ingress/common/w/t;

    return-object v0
.end method

.method public final i()Lcom/nianticproject/ingress/common/u/q;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->p:Lcom/nianticproject/ingress/common/u/q;

    return-object v0
.end method

.method public final j()Lcom/nianticproject/ingress/common/r;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->v:Lcom/nianticproject/ingress/common/r;

    return-object v0
.end method

.method public final k()Lcom/nianticproject/ingress/common/scanner/k;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->r:Lcom/nianticproject/ingress/common/scanner/k;

    return-object v0
.end method

.method public final l()Lcom/nianticproject/ingress/common/a;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->h:Lcom/nianticproject/ingress/common/a;

    return-object v0
.end method

.method public final m()Lcom/nianticproject/ingress/common/d/a;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->i:Lcom/nianticproject/ingress/common/d/a;

    return-object v0
.end method

.method public final n()Lcom/nianticproject/ingress/common/ui/t;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->t:Lcom/nianticproject/ingress/common/ui/t;

    return-object v0
.end method

.method public final o()Lcom/nianticproject/ingress/common/model/d;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->o:Lcom/nianticproject/ingress/common/model/d;

    return-object v0
.end method

.method public final p()Lcom/nianticproject/ingress/common/ui/o;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->w:Lcom/nianticproject/ingress/common/ui/o;

    return-object v0
.end method

.method public final q()Lcom/nianticproject/ingress/common/aa;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->Q:Lcom/nianticproject/ingress/common/aa;

    return-object v0
.end method

.method public final r()Lcom/nianticproject/ingress/common/model/a/e;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->x:Lcom/nianticproject/ingress/common/model/a/e;

    return-object v0
.end method

.method public final s()Lcom/nianticproject/ingress/common/c/ak;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->y:Lcom/nianticproject/ingress/common/c/ak;

    return-object v0
.end method

.method public final t()Lcom/nianticproject/ingress/common/missions/cq;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->A:Lcom/nianticproject/ingress/common/missions/a/l;

    return-object v0
.end method

.method public final u()Lcom/nianticproject/ingress/common/ui/e;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->G:Lcom/nianticproject/ingress/common/ui/e;

    return-object v0
.end method

.method public final v()Lcom/nianticproject/ingress/common/missions/cc;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->B:Lcom/nianticproject/ingress/common/missions/cc;

    return-object v0
.end method

.method public final w()Lcom/nianticproject/ingress/common/factionchoice/d;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->C:Lcom/nianticproject/ingress/common/factionchoice/d;

    return-object v0
.end method

.method public final x()Lcom/nianticproject/ingress/common/ui/elements/i;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->E:Lcom/nianticproject/ingress/common/ui/elements/ah;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->E:Lcom/nianticproject/ingress/common/ui/elements/ah;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/elements/ah;->a()Lcom/nianticproject/ingress/common/ui/elements/i;

    move-result-object v0

    goto :goto_0
.end method

.method public final y()Lcom/nianticproject/ingress/common/h;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->F:Lcom/nianticproject/ingress/common/h;

    return-object v0
.end method

.method public final z()Lcom/nianticproject/ingress/i/b;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/p;->I:Lcom/nianticproject/ingress/i/b;

    return-object v0
.end method
