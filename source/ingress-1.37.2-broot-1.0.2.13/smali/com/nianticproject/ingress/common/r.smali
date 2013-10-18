.class public Lcom/nianticproject/ingress/common/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field protected final a:Lcom/nianticproject/ingress/common/model/k;

.field private c:Lcom/nianticproject/ingress/common/l;

.field private final d:Lcom/nianticproject/ingress/common/g/c;

.field private final e:Lcom/nianticproject/ingress/common/u;

.field private final f:Lcom/nianticproject/ingress/common/v;

.field private final g:Lcom/nianticproject/ingress/common/x/d;

.field private h:Lcom/nianticproject/ingress/common/g/h;

.field private i:Lcom/nianticproject/ingress/common/ad;

.field private j:Lcom/nianticproject/ingress/common/ad;

.field private k:Lcom/nianticproject/ingress/common/ad;

.field private l:Lcom/nianticproject/ingress/common/ad;

.field private m:J

.field private n:Lcom/nianticproject/ingress/common/u/av;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/r;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/r;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/l;Lcom/nianticproject/ingress/common/g/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/nianticproject/ingress/common/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/v;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/r;->f:Lcom/nianticproject/ingress/common/v;

    .line 71
    new-instance v0, Lcom/nianticproject/ingress/common/x/d;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/x/d;-><init>(Lcom/nianticproject/ingress/common/x/i;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/r;->g:Lcom/nianticproject/ingress/common/x/d;

    .line 90
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/r;->a:Lcom/nianticproject/ingress/common/model/k;

    .line 91
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/r;->c:Lcom/nianticproject/ingress/common/l;

    .line 92
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/r;->d:Lcom/nianticproject/ingress/common/g/c;

    .line 95
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->e()Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/r;->a(I)Lcom/nianticproject/ingress/common/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/r;->e:Lcom/nianticproject/ingress/common/u;

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/r;)Lcom/nianticproject/ingress/common/g/h;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->h:Lcom/nianticproject/ingress/common/g/h;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/nianticproject/ingress/common/ad;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "LocationHandler.setLocationInternal("

    if-eqz p2, :cond_0

    const-string/jumbo v0, "force=true)"

    :goto_0
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Lcom/nianticproject/ingress/common/r;->j:Lcom/nianticproject/ingress/common/ad;

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->g:Lcom/nianticproject/ingress/common/x/d;

    new-instance v1, Lcom/nianticproject/ingress/common/s;

    invoke-direct {v1, p0, p1}, Lcom/nianticproject/ingress/common/s;-><init>(Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/ad;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/d;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->e:Lcom/nianticproject/ingress/common/u;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/u;->a(Lcom/google/a/d/u;)V

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->f:Lcom/nianticproject/ingress/common/v;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/v;->a(Lcom/nianticproject/ingress/common/v;)Lcom/nianticproject/ingress/common/g/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/r;->h:Lcom/nianticproject/ingress/common/g/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    const-string/jumbo v0, "LocationHandler.maybeUpdateServerLocation"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->l:Lcom/nianticproject/ingress/common/ad;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->l:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->e()Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->b()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/r;->m:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->e()Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    int-to-double v4, v4

    div-double v0, v4, v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_1

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :goto_1
    :try_start_3
    const-string/jumbo v0, "LocationHandler.maybeUpdateCacheLocation"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->k:Lcom/nianticproject/ingress/common/ad;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->k:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->e()Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->b()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_6
    const-string/jumbo v0, "force=false)"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 162
    :cond_1
    :try_start_7
    iput-object p1, p0, Lcom/nianticproject/ingress/common/r;->l:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/r;->m:J

    new-instance v0, Lcom/nianticproject/ingress/common/g/z;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/r;->h:Lcom/nianticproject/ingress/common/g/h;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/g/h;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/g/z;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/r;->c:Lcom/nianticproject/ingress/common/l;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nianticproject/ingress/common/l;->a(Lcom/google/a/d/u;Lcom/nianticproject/ingress/common/g/h;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 138
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :catchall_2
    move-exception v0

    :try_start_a
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 165
    :cond_2
    :try_start_b
    iput-object p1, p0, Lcom/nianticproject/ingress/common/r;->k:Lcom/nianticproject/ingress/common/ad;

    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/t;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/t;-><init>(Lcom/nianticproject/ingress/common/r;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/r;)Lcom/nianticproject/ingress/common/g/c;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->d:Lcom/nianticproject/ingress/common/g/c;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/r;)Lcom/nianticproject/ingress/common/v;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->f:Lcom/nianticproject/ingress/common/v;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/u/av;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->n:Lcom/nianticproject/ingress/common/u/av;

    return-object v0
.end method

.method public final a(I)Lcom/nianticproject/ingress/common/u;
    .locals 2
    .parameter

    .prologue
    .line 186
    new-instance v0, Lcom/nianticproject/ingress/common/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nianticproject/ingress/common/w;-><init>(Lcom/nianticproject/ingress/common/r;IB)V

    .line 187
    iget-object v1, p0, Lcom/nianticproject/ingress/common/r;->f:Lcom/nianticproject/ingress/common/v;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/v;->a(Lcom/nianticproject/ingress/common/v;Lcom/nianticproject/ingress/common/w;)V

    .line 188
    return-object v0
.end method

.method public final declared-synchronized a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ad;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/r;->i:Lcom/nianticproject/ingress/common/ad;

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->j:Lcom/nianticproject/ingress/common/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->i:Lcom/nianticproject/ingress/common/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/r;->j:Lcom/nianticproject/ingress/common/ad;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ad;->a(Lcom/nianticproject/ingress/common/ad;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->i:Lcom/nianticproject/ingress/common/ad;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/r;->a(Lcom/nianticproject/ingress/common/ad;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/av;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nianticproject/ingress/common/r;->n:Lcom/nianticproject/ingress/common/u/av;

    .line 118
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->j:Lcom/nianticproject/ingress/common/ad;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/common/r;->j:Lcom/nianticproject/ingress/common/ad;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/r;->a(Lcom/nianticproject/ingress/common/ad;Z)V

    .line 183
    :cond_0
    return-void
.end method
