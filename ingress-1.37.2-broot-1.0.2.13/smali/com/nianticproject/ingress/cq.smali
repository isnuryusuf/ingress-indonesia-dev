.class public final Lcom/nianticproject/ingress/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/nianticproject/ingress/common/r;

.field private d:Lcom/nianticproject/ingress/common/model/k;

.field private e:Lcom/nianticproject/ingress/l/f;

.field private f:Lcom/nianticproject/ingress/l/z;

.field private g:Lcom/nianticproject/ingress/l/ak;

.field private h:Z

.field private final i:Lcom/nianticproject/ingress/l/ac;

.field private final j:Lcom/nianticproject/ingress/l/t;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/cq;->b:Ljava/lang/Object;

    .line 189
    new-instance v0, Lcom/nianticproject/ingress/cs;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/cs;-><init>(Lcom/nianticproject/ingress/cq;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/cq;->i:Lcom/nianticproject/ingress/l/ac;

    .line 210
    new-instance v0, Lcom/nianticproject/ingress/cu;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/cu;-><init>(Lcom/nianticproject/ingress/cq;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/cq;->j:Lcom/nianticproject/ingress/l/t;

    .line 52
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/nianticproject/ingress/cq;->a:Landroid/app/Activity;

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->a(Landroid/content/Context;)Lcom/nianticproject/ingress/l/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/cq;->j:Lcom/nianticproject/ingress/l/t;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/l/f;->a(Lcom/nianticproject/ingress/l/t;)V

    new-instance v0, Lcom/nianticproject/ingress/cr;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/cr;-><init>(Lcom/nianticproject/ingress/cq;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/cq;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/l/z;->a(Landroid/content/Context;Lcom/nianticproject/ingress/l/ad;)Lcom/nianticproject/ingress/l/z;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/cq;->f:Lcom/nianticproject/ingress/l/z;

    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->f:Lcom/nianticproject/ingress/l/z;

    iget-object v1, p0, Lcom/nianticproject/ingress/cq;->i:Lcom/nianticproject/ingress/l/ac;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/l/z;->a(Lcom/nianticproject/ingress/l/ac;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/f;->a()Lcom/nianticproject/ingress/l/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/cq;->f:Lcom/nianticproject/ingress/l/z;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/l/z;->a(Lcom/nianticproject/ingress/l/ab;)V

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/l/ak;->a(Landroid/content/Context;)Lcom/nianticproject/ingress/l/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/cq;->g:Lcom/nianticproject/ingress/l/ak;

    .line 57
    invoke-direct {p0}, Lcom/nianticproject/ingress/cq;->d()V

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/f;->e()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/cq;->h:Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/cq;)Lcom/nianticproject/ingress/l/f;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 7
    .parameter

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 155
    new-instance v0, Lcom/nianticproject/ingress/common/y;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/y;-><init>(Ljava/lang/String;IIFJ)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/y;)V

    .line 161
    new-instance v0, Lcom/nianticproject/ingress/common/ad;

    invoke-static {p1}, Lcom/nianticproject/ingress/ad;->a(Landroid/location/Location;)Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ad;-><init>(Lcom/google/a/d/u;JF)V

    .line 163
    iget-object v1, p0, Lcom/nianticproject/ingress/cq;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/nianticproject/ingress/cq;->c:Lcom/nianticproject/ingress/common/r;

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/r;->a(Lcom/nianticproject/ingress/common/ad;)V

    .line 169
    :cond_0
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/cq;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/cq;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/cq;Lcom/nianticproject/ingress/common/u/av;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v1, p0, Lcom/nianticproject/ingress/cq;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->c:Lcom/nianticproject/ingress/common/r;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/r;->a(Lcom/nianticproject/ingress/common/u/av;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/cq;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/cq;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->d:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/cq;)Lcom/nianticproject/ingress/l/ak;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->g:Lcom/nianticproject/ingress/l/ak;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/nianticproject/ingress/cq;->h:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/f;->d()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/cq;->h:Z

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v1, p0, Lcom/nianticproject/ingress/cq;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iput-object p1, p0, Lcom/nianticproject/ingress/cq;->c:Lcom/nianticproject/ingress/common/r;

    .line 243
    iput-object p2, p0, Lcom/nianticproject/ingress/cq;->d:Lcom/nianticproject/ingress/common/model/k;

    .line 244
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/l/f;->a(Z)V

    .line 249
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->f:Lcom/nianticproject/ingress/l/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/z;->b()V

    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/f;->e()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/cq;->h:Z

    .line 127
    return-void
.end method

.method public final f_()V
    .locals 4

    .prologue
    .line 74
    :try_start_0
    const-string/jumbo v0, "NemesisLocationHandler.resume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/nianticproject/ingress/cq;->d()V

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->f:Lcom/nianticproject/ingress/l/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/z;->a()V

    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/cq;->e:Lcom/nianticproject/ingress/l/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/f;->c()Landroid/location/Location;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 96
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 97
    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/cq;->a(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
