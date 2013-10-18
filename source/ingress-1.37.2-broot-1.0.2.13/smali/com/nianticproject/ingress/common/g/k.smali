.class final Lcom/nianticproject/ingress/common/g/k;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/g/j;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/g/j;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method

.method private j()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 102
    :try_start_0
    const-string/jumbo v0, "RefreshGameStateTask"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/j;->a(Lcom/nianticproject/ingress/common/g/j;)Lcom/nianticproject/ingress/common/g/n;

    move-result-object v0

    sget-object v2, Lcom/nianticproject/ingress/common/g/n;->c:Lcom/nianticproject/ingress/common/g/n;

    if-ne v0, v2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    sget-object v2, Lcom/nianticproject/ingress/common/g/n;->b:Lcom/nianticproject/ingress/common/g/n;

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/g/j;->a(Lcom/nianticproject/ingress/common/g/j;Lcom/nianticproject/ingress/common/g/n;)Lcom/nianticproject/ingress/common/g/n;

    .line 109
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 110
    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/j;->d()Ljava/lang/Object;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/g/j;->a(Ljava/lang/Object;)V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/common/g/m;->a:[I

    iget-object v2, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/g/j;->a(Lcom/nianticproject/ingress/common/g/j;)Lcom/nianticproject/ingress/common/g/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/n;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "state was IDLE but should be IN_PROGRESS"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 109
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    :pswitch_0
    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/common/g/j;->f()Lcom/nianticproject/ingress/common/w/aa;

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/k;->a:Lcom/nianticproject/ingress/common/g/j;

    sget-object v2, Lcom/nianticproject/ingress/common/g/n;->a:Lcom/nianticproject/ingress/common/g/n;

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/g/j;->a(Lcom/nianticproject/ingress/common/g/j;Lcom/nianticproject/ingress/common/g/n;)Lcom/nianticproject/ingress/common/g/n;

    .line 141
    :goto_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 143
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    return-object v0

    .line 127
    :pswitch_1
    :try_start_7
    invoke-static {}, Lcom/nianticproject/ingress/common/g/j;->f()Lcom/nianticproject/ingress/common/w/aa;

    .line 128
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v2, Lcom/nianticproject/ingress/common/g/l;

    const-string/jumbo v3, "NemesisConentObserver.refreshNextFrame"

    invoke-direct {v2, p0, v3}, Lcom/nianticproject/ingress/common/g/l;-><init>(Lcom/nianticproject/ingress/common/g/k;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/g/k;->j()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
