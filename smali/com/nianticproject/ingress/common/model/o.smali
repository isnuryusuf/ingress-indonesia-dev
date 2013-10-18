.class public abstract Lcom/nianticproject/ingress/common/model/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/model/k;


# static fields
.field private static final b:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field protected a:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/model/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/nianticproject/ingress/common/g/e;

.field private final f:Lcom/nianticproject/ingress/common/x/i;

.field private final g:Lcom/nianticproject/ingress/common/model/d;

.field private h:Lcom/nianticproject/ingress/gameentity/f;

.field private i:Lcom/nianticproject/ingress/common/ad;

.field private j:F

.field private k:Ljava/lang/String;

.field private l:Lcom/nianticproject/ingress/shared/f;

.field private m:J

.field private n:J

.field private o:Lcom/nianticproject/ingress/shared/ai;

.field private p:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

.field private q:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

.field private r:Z

.field private s:Z

.field private t:J

.field private u:J

.field private v:Z

.field private final w:Lcom/nianticproject/ingress/common/x/f;

.field private x:Z

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/nianticproject/ingress/common/playerprofile/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "PlayerModel"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/o;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/model/d;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->c:Ljava/util/List;

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->k:Ljava/lang/String;

    .line 112
    sget v0, Lcom/nianticproject/ingress/shared/t;->b:I

    iput v0, p0, Lcom/nianticproject/ingress/common/model/o;->a:I

    .line 118
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/model/o;->s:Z

    .line 119
    iput-wide v3, p0, Lcom/nianticproject/ingress/common/model/o;->t:J

    .line 120
    iput-wide v3, p0, Lcom/nianticproject/ingress/common/model/o;->u:J

    .line 121
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/model/o;->v:Z

    .line 122
    new-instance v0, Lcom/nianticproject/ingress/common/model/p;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/model/p;-><init>(Lcom/nianticproject/ingress/common/model/o;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->w:Lcom/nianticproject/ingress/common/x/f;

    .line 134
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/model/o;->x:Z

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->y:Ljava/util/List;

    .line 149
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->d:Ljava/lang/String;

    .line 150
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/e;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->e:Lcom/nianticproject/ingress/common/g/e;

    .line 151
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/x/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->f:Lcom/nianticproject/ingress/common/x/i;

    .line 152
    sget-object v0, Lcom/nianticproject/ingress/shared/f;->a:Lcom/nianticproject/ingress/shared/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->l:Lcom/nianticproject/ingress/shared/f;

    .line 153
    iput-object p5, p0, Lcom/nianticproject/ingress/common/model/o;->g:Lcom/nianticproject/ingress/common/model/d;

    .line 155
    iput-object p2, p0, Lcom/nianticproject/ingress/common/model/o;->k:Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, v2, v2}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/model/LevelUp;Ljava/util/List;)V

    .line 157
    return-void
.end method

.method private declared-synchronized a()V
    .locals 4

    .prologue
    .line 197
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->v:Z

    .line 200
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 205
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 206
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/model/o;->u:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 207
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/model/o;->u:J

    sub-long v0, v2, v0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/model/o;->d(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 212
    :cond_1
    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/common/model/o;->b:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "allowEnergyGains not called in 10 seconds, forcing reset."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/model/o;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 516
    invoke-static {}, Lcom/nianticproject/ingress/shared/t;->a()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 517
    invoke-static {}, Lcom/nianticproject/ingress/shared/t;->a()I

    move-result v0

    .line 518
    sget-object v1, Lcom/nianticproject/ingress/common/model/o;->b:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Attempt to level up beyond maximum level (%d > %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/nianticproject/ingress/shared/t;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v0

    .line 525
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/model/o;->a:I

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v0

    .line 527
    invoke-static {p1}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v1

    .line 529
    iput p1, p0, Lcom/nianticproject/ingress/common/model/o;->a:I

    .line 530
    if-eq v1, v0, :cond_1

    .line 531
    new-instance v0, Lcom/nianticproject/ingress/common/model/x;

    invoke-direct {v0, p0, p2}, Lcom/nianticproject/ingress/common/model/x;-><init>(Lcom/nianticproject/ingress/common/model/o;Z)V

    const-string/jumbo v1, "player.level"

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/google/a/a/ba;Ljava/lang/String;)V

    .line 533
    :cond_1
    return-void
.end method

.method private declared-synchronized a(JLcom/nianticproject/ingress/common/model/z;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 298
    monitor-enter p0

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->s:Z

    if-eqz v0, :cond_1

    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    .line 300
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->t:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->m:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lcom/nianticproject/ingress/common/model/o;->b(JLcom/nianticproject/ingress/common/model/z;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/a/a/ba;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/ba",
            "<",
            "Lcom/nianticproject/ingress/common/model/l;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 617
    :try_start_0
    const-string/jumbo v0, "PlayerModel.notify"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 622
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 624
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :try_start_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->f:Lcom/nianticproject/ingress/common/x/i;

    new-instance v2, Lcom/nianticproject/ingress/common/model/r;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/nianticproject/ingress/common/model/r;-><init>(Lcom/nianticproject/ingress/common/model/o;Ljava/util/ArrayList;Lcom/google/a/a/ba;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 656
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 657
    return-void

    .line 624
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 656
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/model/o;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/o;->a()V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/model/LevelUp;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/shared/model/LevelUp;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    .line 371
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/model/o;->b(Lcom/nianticproject/ingress/shared/ai;)V

    .line 373
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Avatar;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Avatar;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    invoke-static {v0}, Lcom/nianticproject/ingress/common/playerprofile/j;->a(Lcom/nianticproject/ingress/gameentity/components/Avatar;)Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 378
    :cond_0
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;

    .line 379
    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0, v0, p2, p3}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;Lcom/nianticproject/ingress/shared/model/LevelUp;Ljava/util/List;)V

    .line 384
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getNotificationSettings()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->p:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 385
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getProfileSettings()Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->q:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    .line 386
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getAllowedFactionChoice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->r:Z

    .line 388
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {p1}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    .line 696
    new-instance v1, Lcom/nianticproject/ingress/common/model/u;

    invoke-direct {v1, p0, v0}, Lcom/nianticproject/ingress/common/model/u;-><init>(Lcom/nianticproject/ingress/common/model/o;Ljava/util/List;)V

    const-string/jumbo v0, "player.ap"

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/google/a/a/ba;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/model/o;)J
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->m:J

    return-wide v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/model/o;)J
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->n:J

    return-wide v0
.end method

.method private c(JLcom/nianticproject/ingress/common/model/z;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 675
    new-instance v0, Lcom/nianticproject/ingress/common/model/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/model/t;-><init>(Lcom/nianticproject/ingress/common/model/o;JLcom/nianticproject/ingress/common/model/z;)V

    const-string/jumbo v1, "player.energy"

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/google/a/a/ba;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/model/o;)Lcom/nianticproject/ingress/common/ad;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->i:Lcom/nianticproject/ingress/common/ad;

    return-object v0
.end method

.method private d(J)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->v:Z

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->v:Z

    .line 189
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->w:Lcom/nianticproject/ingress/common/x/f;

    invoke-virtual {v0, v1, p1, p2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 191
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/model/o;)Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->z:Lcom/nianticproject/ingress/common/playerprofile/j;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 553
    :try_start_0
    const-string/jumbo v0, "PlayerModel.findInventoryItem"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->e:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 556
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    :try_start_0
    const-string/jumbo v0, "PlayerModel.getAvailableResourcesOfType("

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->e:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/g/e;->a(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 566
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(F)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput p1, p0, Lcom/nianticproject/ingress/common/model/o;->j:F

    .line 470
    return-void
.end method

.method protected abstract a(I)V
.end method

.method public final a(J)V
    .locals 3
    .parameter

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Amount of gained energy can\'t be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/model/z;->a:Lcom/nianticproject/ingress/common/model/z;

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/model/o;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 251
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 2
    .parameter

    .prologue
    .line 452
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->i:Lcom/nianticproject/ingress/common/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->i:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/ad;->a(Lcom/nianticproject/ingress/common/ad;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 456
    :goto_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/o;->i:Lcom/nianticproject/ingress/common/ad;

    .line 457
    if-eqz v0, :cond_1

    .line 458
    new-instance v0, Lcom/nianticproject/ingress/common/model/w;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/model/w;-><init>(Lcom/nianticproject/ingress/common/model/o;)V

    const-string/jumbo v1, "player.location"

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/google/a/a/ba;Ljava/lang/String;)V

    .line 460
    :cond_1
    return-void

    .line 454
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/l;)V
    .locals 2
    .parameter

    .prologue
    .line 585
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    monitor-enter p0

    .line 587
    :try_start_0
    new-instance v0, Lcom/nianticproject/ingress/common/model/aa;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/model/aa;-><init>(Lcom/nianticproject/ingress/common/model/l;)V

    .line 588
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    monitor-exit p0

    .line 593
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 2
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/o;->z:Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 811
    new-instance v0, Lcom/nianticproject/ingress/common/model/q;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/model/q;-><init>(Lcom/nianticproject/ingress/common/model/o;)V

    const-string/jumbo v1, "player.avatarSelection"

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/google/a/a/ba;Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method protected a(Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;Lcom/nianticproject/ingress/shared/model/LevelUp;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;",
            "Lcom/nianticproject/ingress/shared/model/LevelUp;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getAp()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/nianticproject/ingress/common/model/o;->n:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-wide v3, p0, Lcom/nianticproject/ingress/common/model/o;->n:J

    if-nez v0, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_1
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->x:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->y:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getEnergyForRead()I

    move-result v0

    int-to-long v3, v0

    iget-wide v5, p0, Lcom/nianticproject/ingress/common/model/o;->m:J

    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->g:Lcom/nianticproject/ingress/common/model/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/d;->e()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    sget-object v0, Lcom/nianticproject/ingress/common/model/z;->d:Lcom/nianticproject/ingress/common/model/z;

    invoke-direct {p0, v3, v4, v0}, Lcom/nianticproject/ingress/common/model/o;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 402
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getEnergyState()Lcom/nianticproject/ingress/shared/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/nianticproject/ingress/shared/f;)V

    .line 405
    if-eqz p2, :cond_5

    .line 406
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getClientLevel()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/model/o;->a(IZ)V

    .line 407
    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/model/LevelUp;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/model/o;->a(I)V

    .line 411
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 396
    goto :goto_0

    :cond_4
    invoke-direct {p0, p3}, Lcom/nianticproject/ingress/common/model/o;->a(Ljava/util/List;)V

    goto :goto_1

    .line 409
    :cond_5
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/PlayerPersonal;->getClientLevel()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/nianticproject/ingress/common/model/o;->a(IZ)V

    goto :goto_2
.end method

.method protected a(Lcom/nianticproject/ingress/shared/f;)V
    .locals 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->l:Lcom/nianticproject/ingress/shared/f;

    .line 176
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->l:Lcom/nianticproject/ingress/shared/f;

    if-eq v1, p1, :cond_0

    .line 177
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/o;->l:Lcom/nianticproject/ingress/shared/f;

    .line 178
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->l:Lcom/nianticproject/ingress/shared/f;

    new-instance v2, Lcom/nianticproject/ingress/common/model/s;

    invoke-direct {v2, p0, v0, v1}, Lcom/nianticproject/ingress/common/model/s;-><init>(Lcom/nianticproject/ingress/common/model/o;Lcom/nianticproject/ingress/shared/f;Lcom/nianticproject/ingress/shared/f;)V

    const-string/jumbo v0, "player.energyState"

    invoke-direct {p0, v2, v0}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/google/a/a/ba;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/o;->p:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 801
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/o;->q:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    .line 806
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/e;)V
    .locals 5
    .parameter

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/e;->a()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_2

    .line 357
    iget-object v1, p0, Lcom/nianticproject/ingress/common/model/o;->h:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/model/o;->h:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 358
    :cond_0
    iput-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->h:Lcom/nianticproject/ingress/gameentity/f;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->h:Lcom/nianticproject/ingress/gameentity/f;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/e;->c()Lcom/nianticproject/ingress/shared/model/LevelUp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/e;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/model/LevelUp;Ljava/util/List;)V

    .line 365
    :cond_2
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/e;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/model/o;->b(Ljava/util/Set;)V

    .line 366
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->x:Z

    if-ne v0, p1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/model/o;->x:Z

    .line 347
    if-nez p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->y:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/model/o;->a(Ljava/util/List;)V

    .line 349
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/f;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->l:Lcom/nianticproject/ingress/shared/f;

    return-object v0
.end method

.method public final b(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 264
    sget-object v0, Lcom/nianticproject/ingress/common/model/z;->b:Lcom/nianticproject/ingress/common/model/z;

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Amount of energy decremented can\'t be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-long v1, v2, p1

    invoke-direct {p0, v1, v2, v0}, Lcom/nianticproject/ingress/common/model/o;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 265
    return-void
.end method

.method protected final b(JLcom/nianticproject/ingress/common/model/z;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/model/o;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 164
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/model/o;->m:J

    sub-long v2, v0, v2

    .line 165
    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 166
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->m:J

    .line 167
    invoke-direct {p0, v2, v3, p3}, Lcom/nianticproject/ingress/common/model/o;->c(JLcom/nianticproject/ingress/common/model/z;)V

    .line 169
    :cond_0
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/model/l;)V
    .locals 3
    .parameter

    .prologue
    .line 601
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 604
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/aa;

    .line 606
    iget-object v2, v0, Lcom/nianticproject/ingress/common/model/aa;->a:Lcom/nianticproject/ingress/common/model/l;

    if-ne v2, p1, :cond_0

    .line 607
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nianticproject/ingress/common/model/aa;->b:Z

    .line 608
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 612
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b(Lcom/nianticproject/ingress/shared/ai;)V
    .locals 2
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->o:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->o:Lcom/nianticproject/ingress/shared/ai;

    .line 433
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/o;->o:Lcom/nianticproject/ingress/shared/ai;

    .line 434
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nianticproject/ingress/common/model/v;

    invoke-direct {v1, p0, v0, p1}, Lcom/nianticproject/ingress/common/model/v;-><init>(Lcom/nianticproject/ingress/common/model/o;Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V

    const-string/jumbo v0, "player.team"

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/google/a/a/ba;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b(Ljava/util/Set;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 273
    if-nez p1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;

    .line 279
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->a()J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 285
    new-instance v6, Lcom/nianticproject/ingress/common/model/y;

    invoke-direct {v6, p0, v0}, Lcom/nianticproject/ingress/common/model/y;-><init>(Lcom/nianticproject/ingress/common/model/o;Lcom/nianticproject/ingress/shared/model/PlayerDamage;)V

    const-string/jumbo v0, "player.attacked"

    invoke-direct {p0, v6, v0}, Lcom/nianticproject/ingress/common/model/o;->a(Lcom/google/a/a/ba;Ljava/lang/String;)V

    goto :goto_1

    .line 291
    :cond_2
    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 292
    neg-long v0, v1

    sget-object v2, Lcom/nianticproject/ingress/common/model/z;->c:Lcom/nianticproject/ingress/common/model/z;

    invoke-direct {p0, v0, v1, v2}, Lcom/nianticproject/ingress/common/model/o;->c(JLcom/nianticproject/ingress/common/model/z;)V

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 240
    iget v0, p0, Lcom/nianticproject/ingress/common/model/o;->a:I

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->a(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c(J)V
    .locals 1
    .parameter

    .prologue
    .line 269
    sget-object v0, Lcom/nianticproject/ingress/common/model/z;->e:Lcom/nianticproject/ingress/common/model/z;

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/model/o;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 270
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->m:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->n:J

    return-wide v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/nianticproject/ingress/common/model/o;->j:F

    return v0
.end method

.method public final g()Lcom/nianticproject/ingress/common/ad;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->i:Lcom/nianticproject/ingress/common/ad;

    return-object v0
.end method

.method public final h()Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->o:Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->r:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/nianticproject/ingress/common/model/o;->a:I

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/t;->c(I)I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->e:Lcom/nianticproject/ingress/common/g/e;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/g/e;->f()I

    move-result v0

    return v0
.end method

.method public final n()Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->p:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    return-object v0
.end method

.method public final o()Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->q:Lcom/nianticproject/ingress/shared/rpc/ProfileSettings;

    return-object v0
.end method

.method public final declared-synchronized p()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    .line 218
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->s:Z

    .line 222
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->u:J

    .line 224
    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/model/o;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()V
    .locals 3

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->s:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/model/o;->s:Z

    .line 232
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->u:J

    .line 233
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->t:J

    sget-object v2, Lcom/nianticproject/ingress/common/model/z;->a:Lcom/nianticproject/ingress/common/model/z;

    invoke-direct {p0, v0, v1, v2}, Lcom/nianticproject/ingress/common/model/o;->a(JLcom/nianticproject/ingress/common/model/z;)V

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/model/o;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/o;->z:Lcom/nianticproject/ingress/common/playerprofile/j;

    return-object v0
.end method
