.class Lcom/nianticproject/ingress/common/playerprofile/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lorg/codehaus/jackson/map/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LRUMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/playerprofile/aw",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lorg/codehaus/jackson/map/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LRUMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/playerprofile/aw",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lorg/codehaus/jackson/map/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/LRUMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/playerprofile/aw",
            "<",
            "Lcom/nianticproject/ingress/common/playerprofile/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:J

.field private final f:Lcom/google/a/a/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/playerprofile/av;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/av;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(JLcom/google/a/a/bw;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 60
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->e:J

    .line 64
    new-instance v0, Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-direct {v0, v1, v4}, Lorg/codehaus/jackson/map/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->b:Lorg/codehaus/jackson/map/util/LRUMap;

    .line 65
    new-instance v0, Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-direct {v0, v1, v4}, Lorg/codehaus/jackson/map/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->c:Lorg/codehaus/jackson/map/util/LRUMap;

    .line 67
    new-instance v0, Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-direct {v0, v1, v4}, Lorg/codehaus/jackson/map/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->d:Lorg/codehaus/jackson/map/util/LRUMap;

    .line 68
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/bw;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->f:Lcom/google/a/a/bw;

    .line 69
    return-void

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/av;)Lcom/google/a/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->f:Lcom/google/a/a/bw;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/playerprofile/av;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->d:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/aw;

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/aw;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/aw;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/j;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->b:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LRUMap;->clear()V

    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->c:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LRUMap;->clear()V

    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->d:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/LRUMap;->clear()V

    .line 142
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->d:Lorg/codehaus/jackson/map/util/LRUMap;

    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/aw;

    invoke-direct {v1, p0, p2}, Lcom/nianticproject/ingress/common/playerprofile/aw;-><init>(Lcom/nianticproject/ingress/common/playerprofile/av;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/map/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->c:Lorg/codehaus/jackson/map/util/LRUMap;

    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/aw;

    invoke-direct {v1, p0, p2}, Lcom/nianticproject/ingress/common/playerprofile/aw;-><init>(Lcom/nianticproject/ingress/common/playerprofile/av;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/map/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->b:Lorg/codehaus/jackson/map/util/LRUMap;

    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/aw;

    invoke-direct {v1, p0, p2}, Lcom/nianticproject/ingress/common/playerprofile/aw;-><init>(Lcom/nianticproject/ingress/common/playerprofile/av;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/map/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->c:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/aw;

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/aw;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/aw;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/PaginatedDisplayedAchievementList;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/av;->b:Lorg/codehaus/jackson/map/util/LRUMap;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/aw;

    .line 122
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/aw;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/aw;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
