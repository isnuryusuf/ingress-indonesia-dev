.class public final Lcom/nianticproject/ingress/common/q/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/q/b/q;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:J

.field private k:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/q/b/p;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->a(Lcom/nianticproject/ingress/common/q/b/p;)Lcom/nianticproject/ingress/common/q/b/q;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->a:Lcom/nianticproject/ingress/common/q/b/q;

    .line 126
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->b(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->b:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->c(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->d:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->d(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->e:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->e(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->f:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->f(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->h:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->g(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->i:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->h(Lcom/nianticproject/ingress/common/q/b/p;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->c:Z

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/b/p;->i(Lcom/nianticproject/ingress/common/q/b/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->g:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->a:Lcom/nianticproject/ingress/common/q/b/q;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/q/b/q;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->j:J

    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->a:Lcom/nianticproject/ingress/common/q/b/q;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/q/b/q;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->k:Ljava/lang/String;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/q/b/p;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/q/b/o;-><init>(Lcom/nianticproject/ingress/common/q/b/p;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized a(J)V
    .locals 4
    .parameter

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 182
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/q/b/o;->j:J

    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->a:Lcom/nianticproject/ingress/common/q/b/q;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/q/b/q;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 189
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/b/o;->k:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->a:Lcom/nianticproject/ingress/common/q/b/q;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/q/b/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->j:J

    return-wide v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/q/b/o;->c:Z

    return v0
.end method
