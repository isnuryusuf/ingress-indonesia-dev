.class public Lcom/nianticproject/ingress/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/u/b;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;

.field private static final e:Lcom/nianticproject/ingress/c;


# instance fields
.field private final d:Ljava/lang/Object;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/c;->b:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/c;->c:Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/nianticproject/ingress/c;

    invoke-direct {v0}, Lcom/nianticproject/ingress/c;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/c;->e:Lcom/nianticproject/ingress/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/c;->d:Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/c;->f:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/c;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/nianticproject/ingress/c;->e:Lcom/nianticproject/ingress/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/net/HttpCookie;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 250
    :try_start_0
    const-string/jumbo v0, "AndroidAuth.syncAuthCookie"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 252
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 253
    if-eqz p2, :cond_6

    move v8, v9

    .line 259
    :goto_0
    const/4 v1, 0x2

    if-ge v8, v1, :cond_6

    .line 260
    const-string/jumbo v2, "ah"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 267
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    .line 272
    :goto_2
    if-nez v2, :cond_1

    .line 273
    :try_start_2
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to get auth token on try "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 259
    :goto_3
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 260
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    goto :goto_1

    .line 268
    :catch_0
    move-exception v1

    .line 269
    sget-object v2, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Got an Exception"

    invoke-virtual {v2, v1, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v2, v7

    goto :goto_2

    .line 278
    :cond_1
    const-string/jumbo v1, "intent"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 279
    if-eqz v1, :cond_2

    .line 280
    sget-object v3, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 281
    invoke-static {v1}, Lcom/nianticproject/ingress/CredentialsActivity;->a(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    :try_start_3
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 286
    iget-object v3, p0, Lcom/nianticproject/ingress/c;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 287
    :try_start_4
    iget-object v1, p0, Lcom/nianticproject/ingress/c;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 288
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 296
    :cond_2
    :try_start_5
    const-string/jumbo v1, "authtoken"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "auth token null"

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    move-object v1, v7

    .line 297
    :goto_4
    if-nez v1, :cond_4

    .line 298
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to get auth token on try "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 316
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 317
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "syncAuthCookie: %dms"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 288
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v3

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 291
    :catch_1
    move-exception v1

    :try_start_7
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    goto :goto_3

    .line 296
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "authToken: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_4

    .line 302
    :cond_4
    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpCookie;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    .line 303
    if-eqz v2, :cond_5

    .line 316
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 317
    sget-object v0, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "syncAuthCookie: %dms"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 309
    :cond_5
    :try_start_8
    sget-object v2, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to get auth cookie on try "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 310
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 314
    :cond_6
    new-instance v0, Lcom/nianticproject/ingress/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/f;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method static f()V
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 364
    invoke-static {}, Lcom/nianticproject/ingress/CredentialsActivity;->a()V

    .line 365
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 133
    :try_start_0
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->j()Lcom/nianticproject/ingress/common/s/a;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/nianticproject/ingress/common/s/a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 137
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/c;->h()Lcom/nianticproject/ingress/common/s/a;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/s/a;)V

    .line 140
    iget-object v0, v1, Lcom/nianticproject/ingress/common/s/a;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nianticproject/ingress/g; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nianticproject/ingress/e; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getAuth: %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-virtual {v1, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v1

    .line 143
    :try_start_2
    sget-object v4, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "Failed to get auth cookie"

    invoke-virtual {v4, v1, v5}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getAuth: %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-virtual {v1, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :catch_1
    move-exception v1

    .line 146
    :try_start_3
    sget-object v4, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "Failed to get auth cookie"

    invoke-virtual {v4, v1, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/nianticproject/ingress/common/a/b;->g:Lcom/nianticproject/ingress/common/a/b;

    const-string/jumbo v4, "AuthRefresh"

    invoke-static {v1, v4}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/a/b;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getAuth: %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-virtual {v1, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_1
    :try_start_4
    iget-object v0, v1, Lcom/nianticproject/ingress/common/s/a;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getAuth: %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-virtual {v1, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getAuth: %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-virtual {v1, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private h()Lcom/nianticproject/ingress/common/s/a;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 161
    :try_start_0
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->c()Landroid/accounts/Account;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/nianticproject/ingress/g;

    const-string/jumbo v3, "Attempting to get authentication cookie for a null account, aborting..."

    invoke-direct {v0, v3}, Lcom/nianticproject/ingress/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :catchall_0
    move-exception v0

    sget-object v3, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getAuthCookie: %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 167
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".appspot.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "dev_appserver_login="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":false:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    new-instance v0, Lcom/nianticproject/ingress/common/s/a;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v0, v3, v4, v5}, Lcom/nianticproject/ingress/common/s/a;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    sget-object v3, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getAuthCookie: %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 175
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/nianticproject/ingress/c;->f:Landroid/content/Context;

    invoke-direct {p0, v3, v0}, Lcom/nianticproject/ingress/c;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/net/HttpCookie;

    move-result-object v0

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 181
    new-instance v0, Lcom/nianticproject/ingress/common/s/a;

    invoke-direct {v0, v3, v4, v5}, Lcom/nianticproject/ingress/common/s/a;-><init>(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    sget-object v3, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getAuthCookie: %dms"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-virtual {v3, v4, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final b()Lcom/nianticproject/ingress/shared/rpc/a;
    .locals 10

    .prologue
    .line 114
    sget-object v1, Lcom/nianticproject/ingress/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 117
    :try_start_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->k()Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v5, Lcom/nianticproject/ingress/shared/rpc/a;

    invoke-direct {v5, v0, v4}, Lcom/nianticproject/ingress/shared/rpc/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v4, "getOrRefreshAuth: %dms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v0, v4, v6}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-object v5

    :catchall_0
    move-exception v0

    sget-object v4, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "getOrRefreshAuth: %dms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 123
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final c()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 190
    sget-object v8, Lcom/nianticproject/ingress/c;->c:Ljava/lang/Object;

    monitor-enter v8

    .line 192
    :try_start_0
    new-instance v9, Lcom/nianticproject/ingress/common/u/z;

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, p0, v0}, Lcom/nianticproject/ingress/common/u/z;-><init>(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    const-string/jumbo v0, "2013-10-07T21:02:13Z a7cb9f5402e7 opt"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/nianticproject/ingress/ab;->a()Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    move-result-object v4

    new-instance v5, Lcom/nianticproject/ingress/c/b;

    invoke-direct {v5}, Lcom/nianticproject/ingress/c/b;-><init>()V

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/common/u/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nianticproject/ingress/shared/handshake/DeviceInfo;Lcom/nianticproject/ingress/shared/a/b;)Lcom/nianticproject/ingress/common/u/w;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/u/z;->b(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;

    .line 198
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->a()Lcom/nianticproject/ingress/shared/PregameStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/PregameStatus;->a()Lcom/nianticproject/ingress/shared/y;

    move-result-object v1

    .line 199
    sget-object v2, Lcom/nianticproject/ingress/d;->a:[I

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 213
    sget-object v0, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Force handshake: Server requires restart (handshake action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v7

    .line 221
    :goto_0
    if-nez v0, :cond_0

    .line 224
    :try_start_2
    iget-object v1, p0, Lcom/nianticproject/ingress/c;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/nianticproject/ingress/o/a;->d(Landroid/content/Context;)V

    .line 226
    :cond_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 203
    :pswitch_0
    :try_start_3
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->d()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->c(Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/s/c;->d(Z)V

    .line 206
    if-nez v0, :cond_1

    .line 207
    sget-object v0, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Server returned an empty XSRF token, this may prevent the client from talking to the server."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move v0, v6

    .line 211
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    :try_start_4
    sget-object v1, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Force handshake: restarting due to exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v7

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->a(Lcom/nianticproject/ingress/common/s/a;)V

    .line 233
    return-void
.end method

.method final e()V
    .locals 2

    .prologue
    .line 347
    sget-object v0, Lcom/nianticproject/ingress/c;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 349
    iget-object v1, p0, Lcom/nianticproject/ingress/c;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/c;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 351
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
