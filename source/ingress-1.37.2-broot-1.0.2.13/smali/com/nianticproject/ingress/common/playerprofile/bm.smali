.class public Lcom/nianticproject/ingress/common/playerprofile/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/playerprofile/ax;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/playerprofile/av;

.field private final c:Lcom/nianticproject/ingress/common/u/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/playerprofile/bm;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/bm;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/ah;)V
    .locals 4
    .parameter

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/ah;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->c:Lcom/nianticproject/ingress/common/u/ah;

    .line 357
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->k()J

    move-result-wide v2

    invoke-static {}, Lcom/google/a/a/bw;->b()Lcom/google/a/a/bw;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/nianticproject/ingress/common/playerprofile/av;-><init>(JLcom/google/a/a/bw;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    .line 360
    return-void
.end method

.method static synthetic b()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bm;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/av;->a()V

    .line 400
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/az;)V
    .locals 2
    .parameter

    .prologue
    .line 404
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/br;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->c:Lcom/nianticproject/ingress/common/u/ah;

    invoke-direct {v0, v1, p1}, Lcom/nianticproject/ingress/common/playerprofile/br;-><init>(Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/playerprofile/az;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/br;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 405
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;Lcom/nianticproject/ingress/common/playerprofile/bb;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 417
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bv;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->c:Lcom/nianticproject/ingress/common/u/ah;

    invoke-direct {v0, v1, p1, p2}, Lcom/nianticproject/ingress/common/playerprofile/bv;-><init>(Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;Lcom/nianticproject/ingress/common/playerprofile/bb;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/bv;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 419
    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/nianticproject/ingress/common/playerprofile/ba;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/av;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->b()I

    move-result v1

    .line 386
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-le v1, p2, :cond_1

    .line 388
    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, p1, v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/ba;->a(Ljava/lang/String;Ljava/util/List;I)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bp;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->c:Lcom/nianticproject/ingress/common/u/ah;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/bp;-><init>(Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/playerprofile/ba;Ljava/lang/String;ILcom/nianticproject/ingress/common/playerprofile/av;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/bp;->e()Lcom/nianticproject/ingress/common/f/a;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/ba;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/av;->c(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-virtual {v1, p1}, Lcom/nianticproject/ingress/common/playerprofile/av;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v1

    .line 368
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {p2, p1, v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/ba;->a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bt;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->c:Lcom/nianticproject/ingress/common/u/ah;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/nianticproject/ingress/common/playerprofile/bt;-><init>(Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/playerprofile/ba;Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/av;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/bt;->e()Lcom/nianticproject/ingress/common/f/a;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/common/playerprofile/ay;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bn;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->b:Lcom/nianticproject/ingress/common/playerprofile/av;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/bm;->c:Lcom/nianticproject/ingress/common/u/ah;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/bn;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/av;Lcom/nianticproject/ingress/common/u/ah;Lcom/nianticproject/ingress/common/playerprofile/ay;Lcom/nianticproject/ingress/common/playerprofile/j;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/bn;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 411
    return-void
.end method
