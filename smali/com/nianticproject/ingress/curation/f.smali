.class public Lcom/nianticproject/ingress/curation/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/curation/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 644
    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n()Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 645
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "meta-data upload success. Failed attempts "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/nianticproject/ingress/common/a/a;->a(JLjava/lang/String;)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "metadata upload retry "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/nianticproject/ingress/common/a/a;->a(JLjava/lang/String;)V

    .line 650
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;I)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o()Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 521
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "photo upload success. Failed attempts "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3, v1}, Lcom/nianticproject/ingress/common/a/a;->a(JLjava/lang/String;)V

    .line 524
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    :goto_0
    return-object p2

    .line 296
    :cond_0
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 297
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 298
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o()Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object p2

    .line 299
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v1, p2

    .line 314
    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/curation/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_3

    .line 316
    :goto_1
    invoke-virtual {v0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->q()Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 317
    throw v2

    .line 303
    :cond_1
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Uploading photo for task (request ID: %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    invoke-static {p0, p1, p2}, Lcom/nianticproject/ingress/curation/f;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object p2

    goto :goto_0

    .line 308
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/nianticproject/ingress/curation/f;->c(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_1
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 315
    goto :goto_1

    .line 318
    :catch_1
    move-exception v0

    .line 321
    sget-object v1, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Photo upload failure, will resume later"

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 322
    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Landroid/content/SyncResult;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 126
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Starting sync..."

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "No signed-in account, finishing..."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "has signed-in account, checking if there\'s something to submit..."

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {p0}, Lcom/nianticproject/ingress/curation/d;->a(Landroid/content/Context;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v2

    .line 142
    if-nez v2, :cond_2

    .line 143
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "nothing to submit, sync done."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "...found something to submit, performing handshake..."

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-interface {p1}, Lcom/nianticproject/ingress/curation/e;->b()Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/service/d;

    iget-object v0, v0, Lcom/nianticproject/ingress/service/d;->a:Lcom/nianticproject/ingress/shared/PregameStatus;

    sget-object v4, Lcom/nianticproject/ingress/curation/g;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    .line 159
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Handshake told us the user must get involved to continue, finishing..."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 160
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-object v1, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "RpcException while running handshake during sync, will retry later..."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 165
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 158
    goto :goto_1

    .line 170
    :cond_4
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 171
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Skipping sync -- portal discovery feature knob is disabled."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_5
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "...handshake succeeded, continuing to sync..."

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    move v0, v1

    .line 178
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 179
    invoke-static {p0, v2, p1, p2}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;Lcom/nianticproject/ingress/curation/e;Landroid/content/SyncResult;)Z

    move-result v0

    .line 180
    sget-object v2, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "Sync will keep running? %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {p0}, Lcom/nianticproject/ingress/curation/d;->a(Landroid/content/Context;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v2

    .line 182
    if-eqz v2, :cond_6

    .line 183
    sget-object v4, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "Next task to sync is request ID: %s"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 185
    :cond_6
    sget-object v4, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "No more tasks to sync, sync finishing..."

    invoke-virtual {v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;Lcom/nianticproject/ingress/curation/e;Landroid/content/SyncResult;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Syncing task (request ID: %s)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :try_start_0
    invoke-static {p0, p2, p1}, Lcom/nianticproject/ingress/curation/f;->d(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    :try_start_1
    invoke-static {p0, p2, v0}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 237
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;Z)Z

    move-result v0

    .line 239
    if-eqz v0, :cond_3

    .line 240
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "task done and cleaned up."

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 246
    :goto_3
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    sget-object v3, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "Exception while uploading meta-data, will retry"

    invoke-virtual {v3, v0, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 216
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v6

    iput-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, p1

    goto :goto_0

    .line 226
    :catch_1
    move-exception v3

    .line 227
    sget-object v4, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "Exception while uploading photo, will retry"

    invoke-virtual {v4, v3, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 228
    iget-object v3, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_1

    :cond_2
    move v0, v2

    .line 237
    goto :goto_2

    .line 242
    :cond_3
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "task could not be cleaned up, marking as skipped, will retry..."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 243
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v3, v6

    iput-wide v3, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move v1, v2

    .line 244
    goto :goto_3
.end method

.method private static a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;Z)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 260
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    :goto_0
    return v0

    .line 264
    :cond_0
    sget-object v2, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Deleting task (request ID: %s)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/curation/d;->c(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 266
    invoke-virtual {p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_1

    .line 269
    :try_start_0
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/o/g;->c(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v0, v1

    .line 275
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    sget-object v2, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "IOException while trying to delete photo: dangling file left in player\'s private directory!"

    invoke-virtual {v2, v0, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 337
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p2, v0, v6

    .line 339
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 341
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 342
    invoke-interface {p1}, Lcom/nianticproject/ingress/curation/e;->a()Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    sget-object v1, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v6

    .line 345
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v1

    .line 346
    invoke-static {p0, v1}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 354
    :goto_0
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 357
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/nianticproject/ingress/shared/i;->a(Ljava/lang/String;Ljava/io/File;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 399
    :goto_1
    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lcom/nianticproject/ingress/curation/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 403
    invoke-static {p0, v1, v6}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;I)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 441
    :goto_3
    :pswitch_0
    return-object v1

    .line 349
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v1, "ResumableUpload: Error while asking the server for an upload URL"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :catch_0
    move-exception v0

    .line 361
    sget-object v3, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "Reading from %s failed, deleting task!"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 362
    goto :goto_3

    .line 367
    :cond_1
    sget-object v3, Lcom/nianticproject/ingress/curation/g;->b:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/k;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 393
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Unknown upload failure"

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 369
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 370
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ResumableUpload: Failed to upload photo, retry later"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 374
    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 375
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 376
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v1, "ResumableUpload: Error uploading photo, must restart"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :pswitch_3
    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 380
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "FAILURE_MD5_MISMATCH, treating as success (%s)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 386
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "FAILURE_MD5_MISMATCH, retrying (%s)"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 388
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 389
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v1, "ResumableUpload: MD5 mismatch when uploading photo, must restart"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_3
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 405
    sget-object v3, Lcom/nianticproject/ingress/curation/g;->c:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/v;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    .line 435
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v1, "ResumableUpload: SERVER_ERROR"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_4
    invoke-static {p0, v1, v6}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;I)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v1

    goto/16 :goto_3

    .line 420
    :pswitch_5
    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    .line 421
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 422
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v1, "ResumableUpload: Error uploading photo, must restart"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :pswitch_6
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Portal image %s is too big, deleting task!"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 425
    goto/16 :goto_3

    .line 427
    :pswitch_7
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Portal image %s is not servable, deleting task!"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 428
    goto/16 :goto_3

    .line 430
    :pswitch_8
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Portal related to this image %s does not exist, deleting task!"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 432
    goto/16 :goto_3

    .line 437
    :cond_4
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 438
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/y;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object v0, v1

    goto/16 :goto_2

    :cond_6
    move-object v1, p2

    goto/16 :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 405
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 454
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 457
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 459
    :try_start_0
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->b()I

    move-result v2

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->c()Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/o/g;->a(Landroid/content/Context;Landroid/net/Uri;IZJZ)Lcom/nianticproject/ingress/o/i;

    move-result-object v0

    .line 463
    iget-object v0, v0, Lcom/nianticproject/ingress/o/i;->a:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 465
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 466
    const/16 v0, 0xa

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->t()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3, v0}, Lcom/nianticproject/ingress/curation/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    array-length v0, v1

    invoke-static {p0, p2, v0}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;I)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 500
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 506
    :goto_0
    return-object p2

    .line 473
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    sget-object v2, Lcom/nianticproject/ingress/curation/g;->c:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/v;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 489
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 496
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Loading the bitmap for %s failed, deleting task!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 503
    :goto_1
    const/4 p2, 0x0

    goto :goto_0

    .line 500
    :pswitch_0
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 501
    :catch_1
    move-exception v0

    .line 502
    sget-object v1, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to close output stream"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :pswitch_1
    :try_start_6
    array-length v0, v1

    invoke-static {p0, p2, v0}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;I)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object p2

    .line 500
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 501
    :catch_2
    move-exception v0

    .line 502
    sget-object v1, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to close output stream"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_2
    :try_start_8
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/y;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 499
    :catchall_0
    move-exception v0

    .line 500
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 503
    :goto_2
    throw v0

    .line 501
    :catch_3
    move-exception v0

    .line 502
    sget-object v1, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to close output stream"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :catch_4
    move-exception v0

    .line 502
    sget-object v1, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "IOException while trying to close output stream"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 501
    :catch_5
    move-exception v1

    .line 502
    sget-object v2, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "IOException while trying to close output stream"

    invoke-virtual {v2, v1, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static d(Landroid/content/Context;Lcom/nianticproject/ingress/curation/e;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 540
    :try_start_0
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    :goto_0
    :pswitch_0
    return-object p2

    .line 544
    :cond_0
    sget-object v2, Lcom/nianticproject/ingress/curation/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Uploading meta-data for task (request ID: %s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 549
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    sget-object v6, Lcom/nianticproject/ingress/shared/rpc/b;->c:Lcom/nianticproject/ingress/shared/rpc/b;

    .line 551
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h()Ljava/lang/String;

    move-result-object v7

    .line 562
    :goto_1
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g()Landroid/net/Uri;

    move-result-object v2

    .line 563
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 564
    :goto_2
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->r()Z

    move-result v1

    .line 568
    if-eqz v1, :cond_7

    .line 569
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f()Lcom/google/a/d/u;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b()Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/nianticproject/ingress/curation/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Lcom/nianticproject/ingress/shared/rpc/b;Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v0

    .line 579
    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v1

    if-nez v1, :cond_6

    .line 581
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 582
    sget-object v1, Lcom/nianticproject/ingress/curation/g;->e:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/t;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 618
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    invoke-virtual {p2}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->p()Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nianticproject/ingress/curation/d;->b(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)V

    .line 631
    throw v0

    .line 553
    :cond_1
    :try_start_1
    sget-object v6, Lcom/nianticproject/ingress/shared/rpc/b;->d:Lcom/nianticproject/ingress/shared/rpc/b;

    move-object v7, v8

    .line 554
    goto :goto_1

    .line 557
    :cond_2
    sget-object v6, Lcom/nianticproject/ingress/shared/rpc/b;->e:Lcom/nianticproject/ingress/shared/rpc/b;

    move-object v7, v8

    .line 558
    goto :goto_1

    :cond_3
    move v0, v1

    .line 563
    goto :goto_2

    :cond_4
    move-object v5, v8

    .line 569
    goto :goto_3

    :pswitch_1
    move-object p2, v8

    .line 595
    goto/16 :goto_0

    .line 597
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->d:[I

    invoke-virtual {v6}, Lcom/nianticproject/ingress/shared/rpc/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    move-object p2, v8

    .line 601
    goto/16 :goto_0

    .line 607
    :pswitch_4
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/y;

    const-string/jumbo v1, "Unexpected result from server: PORTAL_NOT_FOUND when sending a new suggestion"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :pswitch_5
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object p2

    goto/16 :goto_0

    .line 621
    :cond_5
    new-instance v1, Lcom/nianticproject/ingress/shared/rpc/y;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/nianticproject/ingress/shared/rpc/y;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 625
    :cond_6
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/curation/f;->a(Landroid/content/Context;Lcom/nianticproject/ingress/curation/PortalCurationTask;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    :try_end_1
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    goto/16 :goto_0

    :cond_7
    move-object v0, v8

    goto :goto_4

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 597
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
