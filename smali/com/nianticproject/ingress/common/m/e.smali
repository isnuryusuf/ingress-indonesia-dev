.class public Lcom/nianticproject/ingress/common/m/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/m/d;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/w/aa;

.field private b:I

.field private c:Z

.field private final d:Lcom/nianticproject/ingress/common/m/a;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/m/e;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/m/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 20
    iput v2, p0, Lcom/nianticproject/ingress/common/m/e;->b:I

    .line 21
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/m/e;->c:Z

    .line 23
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/m/e;->e:Z

    .line 24
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/m/e;->f:Z

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/common/m/a;

    invoke-direct {v0, p1, p2, p0}, Lcom/nianticproject/ingress/common/m/a;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;Lcom/nianticproject/ingress/common/m/d;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/m/e;->d:Lcom/nianticproject/ingress/common/m/a;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->c()I

    move-result v0

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iput p1, p0, Lcom/nianticproject/ingress/common/m/e;->b:I

    .line 102
    if-le p1, v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/m/e;->e:Z

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/m/e;->f:Z

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {p1}, Lcom/nianticproject/ingress/common/s/c;->a(I)V

    .line 109
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method public final a(ILjava/lang/String;Lcom/nianticproject/ingress/shared/rpc/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/invites/InviteInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/m/e;->a(I)V

    .line 126
    monitor-enter p0

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/m/e;->c:Z

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/nianticproject/ingress/common/m/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    iget v1, p0, Lcom/nianticproject/ingress/common/m/e;->b:I

    if-gtz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/nianticproject/ingress/common/m/e;->a:Lcom/nianticproject/ingress/common/w/aa;

    goto :goto_0

    .line 49
    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->e()J

    move-result-wide v1

    .line 50
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->i()I

    move-result v3

    int-to-long v3, v3

    .line 57
    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v5, p0, Lcom/nianticproject/ingress/common/m/e;->e:Z

    if-nez v5, :cond_3

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 60
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/m/e;->e:Z

    .line 61
    const/4 v0, 0x1

    .line 63
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->d()V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/m/e;->f:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/m/e;->c:Z

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/m/e;->c:Z

    if-eqz v0, :cond_0

    .line 88
    monitor-exit p0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/m/e;->c:Z

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/m/e;->d:Lcom/nianticproject/ingress/common/m/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/m/a;->a()V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/nianticproject/ingress/common/m/e;->b:I

    return v0
.end method
